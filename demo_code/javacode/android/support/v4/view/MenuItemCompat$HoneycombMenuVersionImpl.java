package android.support.v4.view;

import android.view.MenuItem;
import android.view.View;

class MenuItemCompat$HoneycombMenuVersionImpl
  implements MenuItemCompat.MenuVersionImpl
{
  public MenuItem setActionView(MenuItem paramMenuItem, View paramView)
  {
    return MenuItemCompatHoneycomb.setActionView(paramMenuItem, paramView);
  }

  public boolean setShowAsAction(MenuItem paramMenuItem, int paramInt)
  {
    MenuItemCompatHoneycomb.setShowAsAction(paramMenuItem, paramInt);
    return true;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.MenuItemCompat.HoneycombMenuVersionImpl
 * JD-Core Version:    0.6.0
 */