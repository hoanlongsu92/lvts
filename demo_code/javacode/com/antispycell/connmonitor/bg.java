package com.antispycell.connmonitor;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ResolveInfo.DisplayNameComparator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class bg
  implements Runnable
{
  bg(LoggingService paramLoggingService)
  {
  }

  public final void run()
  {
    ArrayList localArrayList = new ArrayList();
    PackageManager localPackageManager = this.a.getPackageManager();
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    List localList = localPackageManager.queryIntentActivities(localIntent, 0);
    Collections.sort(localList, new ResolveInfo.DisplayNameComparator(localPackageManager));
    Iterator localIterator1 = localList.iterator();
    Iterator localIterator2;
    if (!localIterator1.hasNext())
      localIterator2 = localPackageManager.getInstalledApplications(128).iterator();
    label166: label254: 
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        return;
        localArrayList.add(((ResolveInfo)localIterator1.next()).activityInfo.packageName);
        break;
      }
      ApplicationInfo localApplicationInfo = (ApplicationInfo)localIterator2.next();
      this.a.k.add(Integer.valueOf(localApplicationInfo.uid));
      Iterator localIterator3 = localArrayList.iterator();
      if (!localIterator3.hasNext());
      while (true)
      {
        if ((0x1 & localApplicationInfo.flags) != 1)
          break label254;
        this.a.l.add(Integer.valueOf(localApplicationInfo.uid));
        break;
        if (!((String)localIterator3.next()).equals(localApplicationInfo.packageName))
          break label166;
        this.a.k.remove(Integer.valueOf(localApplicationInfo.uid));
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bg
 * JD-Core Version:    0.6.0
 */