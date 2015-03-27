package com.google.analytics.tracking.android;

import android.os.Build.VERSION;

final class t
{
  public static int a()
  {
    try
    {
      int j = Integer.parseInt(Build.VERSION.SDK);
      i = j;
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
      {
        aq.a("Invalid version number: " + Build.VERSION.SDK);
        int i = 0;
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.t
 * JD-Core Version:    0.6.0
 */