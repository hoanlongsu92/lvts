package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class TaskStackBuilder
  implements Iterable
{
  private static final TaskStackBuilder.TaskStackBuilderImpl IMPL;
  private static final String TAG = "TaskStackBuilder";
  private final ArrayList mIntents = new ArrayList();
  private final Context mSourceContext;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
      IMPL = new TaskStackBuilder.TaskStackBuilderImplHoneycomb();
    while (true)
    {
      return;
      IMPL = new TaskStackBuilder.TaskStackBuilderImplBase();
    }
  }

  private TaskStackBuilder(Context paramContext)
  {
    this.mSourceContext = paramContext;
  }

  public static TaskStackBuilder create(Context paramContext)
  {
    return new TaskStackBuilder(paramContext);
  }

  public static TaskStackBuilder from(Context paramContext)
  {
    return create(paramContext);
  }

  public TaskStackBuilder addNextIntent(Intent paramIntent)
  {
    this.mIntents.add(paramIntent);
    return this;
  }

  public TaskStackBuilder addParentStack(Activity paramActivity)
  {
    int i = this.mIntents.size();
    Object localObject = NavUtils.getParentActivityIntent(paramActivity);
    while (localObject != null)
    {
      this.mIntents.add(i, localObject);
      try
      {
        Intent localIntent = NavUtils.getParentActivityIntent(paramActivity, ((Intent)localObject).getComponent());
        localObject = localIntent;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
        throw new IllegalArgumentException(localNameNotFoundException);
      }
    }
    return (TaskStackBuilder)this;
  }

  public TaskStackBuilder addParentStack(Class paramClass)
  {
    int i = this.mIntents.size();
    try
    {
      Intent localIntent;
      for (Object localObject = NavUtils.getParentActivityIntent(this.mSourceContext, paramClass); localObject != null; localObject = localIntent)
      {
        this.mIntents.add(i, localObject);
        localIntent = NavUtils.getParentActivityIntent(this.mSourceContext, ((Intent)localObject).getComponent());
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(localNameNotFoundException);
    }
    return (TaskStackBuilder)this;
  }

  public Intent editIntentAt(int paramInt)
  {
    return (Intent)this.mIntents.get(paramInt);
  }

  public Intent getIntent(int paramInt)
  {
    return editIntentAt(paramInt);
  }

  public int getIntentCount()
  {
    return this.mIntents.size();
  }

  public Intent[] getIntents()
  {
    return (Intent[])this.mIntents.toArray(new Intent[this.mIntents.size()]);
  }

  public PendingIntent getPendingIntent(int paramInt1, int paramInt2)
  {
    return getPendingIntent(paramInt1, paramInt2, null);
  }

  public PendingIntent getPendingIntent(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (this.mIntents.isEmpty())
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    Intent[] arrayOfIntent = (Intent[])this.mIntents.toArray(new Intent[this.mIntents.size()]);
    arrayOfIntent[0].addFlags(268484608);
    return IMPL.getPendingIntent(this.mSourceContext, arrayOfIntent, paramInt1, paramInt2, paramBundle);
  }

  public Iterator iterator()
  {
    return this.mIntents.iterator();
  }

  public void startActivities()
  {
    startActivities(null);
  }

  public void startActivities(Bundle paramBundle)
  {
    if (this.mIntents.isEmpty())
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    Intent[] arrayOfIntent = (Intent[])this.mIntents.toArray(new Intent[this.mIntents.size()]);
    arrayOfIntent[0].addFlags(268484608);
    if (!ContextCompat.startActivities(this.mSourceContext, arrayOfIntent, paramBundle))
    {
      Intent localIntent = arrayOfIntent[(-1 + arrayOfIntent.length)];
      localIntent.addFlags(268435456);
      this.mSourceContext.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.TaskStackBuilder
 * JD-Core Version:    0.6.0
 */