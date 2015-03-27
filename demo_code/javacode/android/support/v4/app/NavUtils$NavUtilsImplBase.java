package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;

class NavUtils$NavUtilsImplBase
  implements NavUtils.NavUtilsImpl
{
  public Intent getParentActivityIntent(Activity paramActivity)
  {
    String str = NavUtils.getParentActivityName(paramActivity);
    if (str == null);
    for (Intent localIntent = null; ; localIntent = new Intent().setClassName(paramActivity, str))
      return localIntent;
  }

  public String getParentActivityName(Context paramContext, ActivityInfo paramActivityInfo)
  {
    String str;
    if (paramActivityInfo.metaData == null)
      str = null;
    while (true)
    {
      return str;
      str = paramActivityInfo.metaData.getString("android.support.PARENT_ACTIVITY");
      if (str == null)
      {
        str = null;
        continue;
      }
      if (str.charAt(0) != '.')
        continue;
      str = paramContext.getPackageName() + str;
    }
  }

  public void navigateUpTo(Activity paramActivity, Intent paramIntent)
  {
    paramIntent.addFlags(67108864);
    paramActivity.startActivity(paramIntent);
    paramActivity.finish();
  }

  public boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent)
  {
    String str = paramActivity.getIntent().getAction();
    if ((str != null) && (!str.equals("android.intent.action.MAIN")));
    for (int i = 1; ; i = 0)
      return i;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NavUtils.NavUtilsImplBase
 * JD-Core Version:    0.6.0
 */