package com.antispycell.connmonitor;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.InboxStyle;
import android.util.SparseArray;
import android.widget.Toast;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class LoggingService extends Service
{
  static JNI a = JNI.a();
  static SharedPreferences b;
  static String m = null;
  static String n;
  static String o;
  static int p;
  static int q;
  static SparseArray r = new SparseArray();
  static String s;
  Boolean c;
  an d = null;
  NotificationManager e = null;
  boolean f = false;
  boolean g = false;
  boolean h = false;
  boolean i = false;
  boolean j = false;
  Set k = null;
  Set l = null;
  private final IBinder t = new bh(this);
  private Handler u = new Handler();
  private Runnable v = new bf(this);

  private String a(String paramString, int paramInt)
  {
    int i1 = 0;
    Boolean localBoolean = Boolean.valueOf(false);
    PackageManager localPackageManager = getPackageManager();
    Object localObject2;
    if ((paramString.startsWith("null")) && (paramInt == 0))
    {
      localObject2 = "Android System";
      return localObject2;
    }
    Object localObject1 = null;
    if ((paramString != null) && (paramString.indexOf(":") > 0));
    for (String str = paramString.substring(0, paramString.indexOf(":")); ; str = paramString)
      while (true)
      {
        String[] arrayOfString;
        try
        {
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(str, 1);
          localObject1 = localPackageInfo;
          if ((localObject1 != null) || (paramInt <= 0))
            continue;
          arrayOfString = localPackageManager.getPackagesForUid(paramInt);
          if ((arrayOfString != null) && (arrayOfString.length > 1) && (i1 < arrayOfString.length))
            continue;
          if (localObject1 != null)
            localObject2 = ((PackageInfo)localObject1).applicationInfo.loadLabel(localPackageManager).toString();
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          localBoolean = Boolean.valueOf(true);
          continue;
          if (arrayOfString[i1] == null);
        }
        try
        {
          localObject1 = localPackageManager.getPackageInfo(arrayOfString[i1], 0);
          i1 = arrayOfString.length;
          label172: i1++;
          continue;
          if (paramInt == 0)
          {
            localObject2 = "Android System";
            break;
          }
          if (localBoolean.booleanValue())
          {
            if (str.length() > 0)
            {
              localObject2 = str + " [noinfo]";
              break;
            }
            localObject2 = "[removed]";
            break;
          }
          localObject2 = str;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2)
        {
          break label172;
        }
      }
  }

  private static void a(Context paramContext, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    int i1 = localCalendar.get(11);
    int i2 = localCalendar.get(12);
    localCalendar.setTimeZone(localCalendar.getTimeZone());
    localCalendar.set(11, i1);
    localCalendar.set(12, i2);
    localCalendar.add(12, paramInt);
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, StopLoggerAlarm.class), 134217728);
    ((AlarmManager)paramContext.getSystemService("alarm")).set(0, localCalendar.getTimeInMillis(), localPendingIntent);
    SharedPreferences.Editor localEditor = b.edit();
    localEditor.putLong("nextAlarm", localCalendar.getTimeInMillis());
    localEditor.commit();
  }

  private static boolean a(int paramInt)
  {
    boolean bool = false;
    try
    {
      SharedPreferences.Editor localEditor2 = b.edit();
      localEditor1 = localEditor2;
      if (localEditor1 != null);
      switch (paramInt)
      {
      default:
        return bool;
      case 0:
      case 1:
      case 2:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        SharedPreferences.Editor localEditor1 = null;
        continue;
        localEditor1.putBoolean("logger", false);
        localEditor1.commit();
        continue;
        localEditor1.putBoolean("logger", true);
        localEditor1.commit();
        bool = true;
        continue;
        bool = b.getBoolean("logger", false);
      }
    }
  }

  public final void a()
  {
    if (this.d == null)
    {
      this.d = new an(this);
      this.d.a();
    }
    int i1 = a.GetCounts();
    Date localDate = new Date();
    int i2 = 0;
    if (i2 >= i1)
      return;
    m = null;
    n = a.GetStatus(i2);
    o = a.GetRemoteIP(i2);
    q = a.GetUID(i2);
    p = a.GetRemotePort(i2);
    Long localLong;
    if (((!this.g) || (q != 0)) && ((!this.h) || (!n.equals("ESTABLISHED")) || (n.startsWith("FIN_"))) && (!o.startsWith("0.")) && ((!this.f) || ((!o.startsWith("127.")) && (!o.startsWith("10.0.2.2")))))
    {
      if (r != null)
        s = (String)r.get(q);
      if (s == null)
      {
        s = getPackageManager().getNameForUid(q);
        r.put(q, s);
      }
      m = s + ":" + q;
      if ((this.i) && (!this.k.isEmpty()) && (this.k.contains(Integer.valueOf(q))) && ((this.l.isEmpty()) || (!this.l.contains(Integer.valueOf(q))) || (!this.j)))
      {
        String str1 = m;
        int i4 = q;
        String str2 = o;
        Intent localIntent = new Intent(this, IPDetails.class);
        localIntent.putExtra("IP", str2);
        PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, localIntent, 134217728);
        if ((str1 != null) && (str1.indexOf(":") > 0))
          str1 = str1.substring(0, str1.indexOf(":"));
        String str3 = a(str1, i4);
        Resources localResources = getResources();
        NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(this);
        localBuilder.setContentIntent(localPendingIntent).setSmallIcon(2130837520).setLargeIcon(BitmapFactory.decodeResource(localResources, 2130837520)).setTicker("Network Connections Alert").setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentTitle("Network Connections Alert").setContentText(str3 + " (" + str1 + ") is connecting to IP: " + str2).setStyle(new NotificationCompat.InboxStyle().addLine("Application: " + str3).addLine("Package: " + str1).addLine("Remote IP: " + str2));
        Notification localNotification = localBuilder.build();
        this.e.notify(i4 + 203692, localNotification);
      }
      localLong = Long.valueOf(localDate.getTime() / 1000L);
      int i3 = this.d.a(o, p, m);
      if (i3 <= 0)
        break label680;
      this.d.a(i3, localLong.longValue());
    }
    while (true)
    {
      i2++;
      break;
      label680: this.d.a(a.GetLocalIP(i2), Integer.valueOf(a.GetLocalPort(i2)), o, Integer.valueOf(p), m, Integer.valueOf(localLong.intValue()));
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return this.t;
  }

  public void onDestroy()
  {
    a(0);
    try
    {
      this.u.removeCallbacks(this.v);
      a.ncStop();
      if (this.d != null)
        this.d.b();
      SharedPreferences.Editor localEditor = b.edit();
      localEditor.putLong("nextAlarm", 0L);
      localEditor.commit();
      Toast.makeText(this, "Live Capture Stopped", 0).show();
      label77: return;
    }
    catch (Exception localException)
    {
      break label77;
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    b = getSharedPreferences("ui", 0);
    this.c = Boolean.valueOf(a(2));
    this.f = b.getBoolean("value2", true);
    this.g = b.getBoolean("value3", true);
    this.h = b.getBoolean("value4", false);
    this.i = b.getBoolean("value5", false);
    this.j = b.getBoolean("value6", false);
    this.e = ((NotificationManager)getSystemService("notification"));
    long l1 = System.currentTimeMillis();
    Context localContext = getApplicationContext();
    Intent localIntent = new Intent(this, ConnectionMonitorActivity.class);
    localIntent.setFlags(67108864);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, localIntent, 268435456);
    Notification localNotification = new Notification(2130837519, "Network Connections Live Capture is active.", l1);
    localNotification.flags = 34;
    localNotification.setLatestEventInfo(localContext, "Network Connections", "Live capture is active.", localPendingIntent);
    if (this.i)
    {
      this.k = new HashSet();
      this.l = new HashSet();
      new Thread(new bg(this)).start();
    }
    a(1);
    if (!JNI.b().booleanValue())
    {
      a.ncDataTime(2);
      a.ncStart();
    }
    this.u.post(this.v);
    if (b.getBoolean("value1", false))
    {
      localNotification = new Notification(0, null, System.currentTimeMillis());
      localNotification.flags = (0x20 | localNotification.flags);
    }
    startForeground(800630, localNotification);
    if (!by.a(this))
      a(getApplicationContext(), 15);
    while (true)
    {
      return 1;
      if (!b.getBoolean("value0", true))
        continue;
      a(getApplicationContext(), 1440);
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.LoggingService
 * JD-Core Version:    0.6.0
 */