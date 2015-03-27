package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

final class az
  implements n
{
  private static az a;
  private static Object b = new Object();
  private final Context c;

  private az(Context paramContext)
  {
    this.c = paramContext;
  }

  public static az a()
  {
    synchronized (b)
    {
      az localaz = a;
      return localaz;
    }
  }

  public static void a(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null)
        a = new az(paramContext);
      return;
    }
  }

  public final String a(String paramString)
  {
    String str = null;
    if (paramString == null);
    while (true)
    {
      return str;
      if (!paramString.equals("&sr"))
        continue;
      DisplayMetrics localDisplayMetrics = this.c.getResources().getDisplayMetrics();
      str = localDisplayMetrics.widthPixels + "x" + localDisplayMetrics.heightPixels;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.az
 * JD-Core Version:    0.6.0
 */