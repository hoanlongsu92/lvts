package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.MenuItem;
import android.view.View;

public class MenuItemCompat
{
  static final MenuItemCompat.MenuVersionImpl IMPL;
  public static final int SHOW_AS_ACTION_ALWAYS = 2;
  public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
  public static final int SHOW_AS_ACTION_IF_ROOM = 1;
  public static final int SHOW_AS_ACTION_NEVER = 0;
  public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
      IMPL = new MenuItemCompat.HoneycombMenuVersionImpl();
    while (true)
    {
      return;
      IMPL = new MenuItemCompat.BaseMenuVersionImpl();
    }
  }

  public static MenuItem setActionView(MenuItem paramMenuItem, View paramView)
  {
    return IMPL.setActionView(paramMenuItem, paramView);
  }

  public static boolean setShowAsAction(MenuItem paramMenuItem, int paramInt)
  {
    return IMPL.setShowAsAction(paramMenuItem, paramInt);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.MenuItemCompat
 * JD-Core Version:    0.6.0
 */