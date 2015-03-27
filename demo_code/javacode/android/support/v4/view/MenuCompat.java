package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.MenuItem;

public class MenuCompat
{
  static final MenuCompat.MenuVersionImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
      IMPL = new MenuCompat.HoneycombMenuVersionImpl();
    while (true)
    {
      return;
      IMPL = new MenuCompat.BaseMenuVersionImpl();
    }
  }

  public static boolean setShowAsAction(MenuItem paramMenuItem, int paramInt)
  {
    return IMPL.setShowAsAction(paramMenuItem, paramInt);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.MenuCompat
 * JD-Core Version:    0.6.0
 */