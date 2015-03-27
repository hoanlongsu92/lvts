package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class LocalBroadcastManager
{
  private static final boolean DEBUG = false;
  static final int MSG_EXEC_PENDING_BROADCASTS = 1;
  private static final String TAG = "LocalBroadcastManager";
  private static LocalBroadcastManager mInstance;
  private static final Object mLock = new Object();
  private final HashMap mActions = new HashMap();
  private final Context mAppContext;
  private final Handler mHandler;
  private final ArrayList mPendingBroadcasts = new ArrayList();
  private final HashMap mReceivers = new HashMap();

  private LocalBroadcastManager(Context paramContext)
  {
    this.mAppContext = paramContext;
    this.mHandler = new LocalBroadcastManager.1(this, paramContext.getMainLooper());
  }

  private void executePendingBroadcasts()
  {
    while (true)
    {
      int j;
      synchronized (this.mReceivers)
      {
        int i = this.mPendingBroadcasts.size();
        if (i <= 0)
          return;
        LocalBroadcastManager.BroadcastRecord[] arrayOfBroadcastRecord = new LocalBroadcastManager.BroadcastRecord[i];
        this.mPendingBroadcasts.toArray(arrayOfBroadcastRecord);
        this.mPendingBroadcasts.clear();
        j = 0;
        if (j >= arrayOfBroadcastRecord.length)
          continue;
        LocalBroadcastManager.BroadcastRecord localBroadcastRecord = arrayOfBroadcastRecord[j];
        int k = 0;
        if (k >= localBroadcastRecord.receivers.size())
          continue;
        ((LocalBroadcastManager.ReceiverRecord)localBroadcastRecord.receivers.get(k)).receiver.onReceive(this.mAppContext, localBroadcastRecord.intent);
        k++;
      }
    }
  }

  public static LocalBroadcastManager getInstance(Context paramContext)
  {
    synchronized (mLock)
    {
      if (mInstance == null)
        mInstance = new LocalBroadcastManager(paramContext.getApplicationContext());
      LocalBroadcastManager localLocalBroadcastManager = mInstance;
      return localLocalBroadcastManager;
    }
  }

  public void registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    synchronized (this.mReceivers)
    {
      LocalBroadcastManager.ReceiverRecord localReceiverRecord = new LocalBroadcastManager.ReceiverRecord(paramIntentFilter, paramBroadcastReceiver);
      ArrayList localArrayList1 = (ArrayList)this.mReceivers.get(paramBroadcastReceiver);
      if (localArrayList1 == null)
      {
        localArrayList1 = new ArrayList(1);
        this.mReceivers.put(paramBroadcastReceiver, localArrayList1);
      }
      localArrayList1.add(paramIntentFilter);
      for (int i = 0; i < paramIntentFilter.countActions(); i++)
      {
        String str = paramIntentFilter.getAction(i);
        ArrayList localArrayList2 = (ArrayList)this.mActions.get(str);
        if (localArrayList2 == null)
        {
          localArrayList2 = new ArrayList(1);
          this.mActions.put(str, localArrayList2);
        }
        localArrayList2.add(localReceiverRecord);
      }
      return;
    }
  }

  public boolean sendBroadcast(Intent paramIntent)
  {
    int i;
    label156: int k;
    Object localObject2;
    Object localObject3;
    int n;
    synchronized (this.mReceivers)
    {
      String str1 = paramIntent.getAction();
      String str2 = paramIntent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
      Uri localUri = paramIntent.getData();
      String str3 = paramIntent.getScheme();
      Set localSet = paramIntent.getCategories();
      if ((0x8 & paramIntent.getFlags()) == 0)
        break label508;
      i = 1;
      if (i != 0)
        Log.v("LocalBroadcastManager", "Resolving type " + str2 + " scheme " + str3 + " of intent " + paramIntent);
      ArrayList localArrayList = (ArrayList)this.mActions.get(paramIntent.getAction());
      if (localArrayList == null)
        break label474;
      if (i == 0)
        break label489;
      Log.v("LocalBroadcastManager", "Action list: " + localArrayList);
      break label489;
      if (k >= localArrayList.size())
        break label549;
      LocalBroadcastManager.ReceiverRecord localReceiverRecord = (LocalBroadcastManager.ReceiverRecord)localArrayList.get(k);
      if (i != 0)
        Log.v("LocalBroadcastManager", "Matching against filter " + localReceiverRecord.filter);
      if (localReceiverRecord.broadcasting)
      {
        if (i == 0)
          break label514;
        Log.v("LocalBroadcastManager", "  Filter's target already added");
        localObject3 = localObject2;
        break label498;
      }
      n = localReceiverRecord.filter.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
      if (n >= 0)
      {
        if (i != 0)
          Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(n));
        if (localObject2 != null)
          break label482;
        localObject3 = new ArrayList();
        label309: ((ArrayList)localObject3).add(localReceiverRecord);
        localReceiverRecord.broadcasting = true;
      }
    }
    String str4;
    if (i != 0)
      switch (n)
      {
      default:
        str4 = "unknown reason";
        label372: Log.v("LocalBroadcastManager", "  Filter did not match: " + str4);
        break;
      case -3:
      case -4:
      case -2:
      case -1:
      }
    while (true)
    {
      if (m < ((ArrayList)localObject2).size())
      {
        ((LocalBroadcastManager.ReceiverRecord)((ArrayList)localObject2).get(m)).broadcasting = false;
        m++;
        continue;
      }
      this.mPendingBroadcasts.add(new LocalBroadcastManager.BroadcastRecord(paramIntent, (ArrayList)localObject2));
      if (!this.mHandler.hasMessages(1))
        this.mHandler.sendEmptyMessage(1);
      int j = 1;
      monitorexit;
      label471: return j;
      label474: label482: label489: label498: label508: 
      do
      {
        monitorexit;
        j = 0;
        break label471;
        localObject3 = localObject2;
        break label309;
        localObject2 = null;
        k = 0;
        break label156;
        while (true)
        {
          k++;
          localObject2 = localObject3;
          break label156;
          i = 0;
          break;
          localObject3 = localObject2;
        }
        str4 = "action";
        break label372;
        str4 = "category";
        break label372;
        str4 = "data";
        break label372;
        str4 = "type";
        break label372;
      }
      while (localObject2 == null);
      label514: label549: int m = 0;
    }
  }

  public void sendBroadcastSync(Intent paramIntent)
  {
    if (sendBroadcast(paramIntent))
      executePendingBroadcasts();
  }

  public void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    while (true)
    {
      int j;
      synchronized (this.mReceivers)
      {
        ArrayList localArrayList1 = (ArrayList)this.mReceivers.remove(paramBroadcastReceiver);
        if (localArrayList1 != null)
          break label179;
        break label178;
        if (i >= localArrayList1.size())
          continue;
        IntentFilter localIntentFilter = (IntentFilter)localArrayList1.get(i);
        j = 0;
        if (j >= localIntentFilter.countActions())
          break label200;
        String str = localIntentFilter.getAction(j);
        ArrayList localArrayList2 = (ArrayList)this.mActions.get(str);
        if (localArrayList2 == null)
          break label194;
        k = 0;
        if (k >= localArrayList2.size())
          continue;
        if (((LocalBroadcastManager.ReceiverRecord)localArrayList2.get(k)).receiver == paramBroadcastReceiver)
        {
          localArrayList2.remove(k);
          m = k - 1;
          break label185;
          if (localArrayList2.size() > 0)
            break label194;
          this.mActions.remove(str);
          break label194;
        }
      }
      int m = k;
      break label185;
      label178: return;
      label179: int i = 0;
      continue;
      label185: int k = m + 1;
      continue;
      label194: j++;
      continue;
      label200: i++;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.LocalBroadcastManager
 * JD-Core Version:    0.6.0
 */