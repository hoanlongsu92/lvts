package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ViewGroupCompat
{
  static final ViewGroupCompat.ViewGroupCompatImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
      IMPL = new ViewGroupCompat.ViewGroupCompatIcsImpl();
    while (true)
    {
      return;
      IMPL = new ViewGroupCompat.ViewGroupCompatStubImpl();
    }
  }

  public static boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return IMPL.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewGroupCompat
 * JD-Core Version:    0.6.0
 */