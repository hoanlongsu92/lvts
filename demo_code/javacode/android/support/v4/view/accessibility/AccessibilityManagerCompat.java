package android.support.v4.view.accessibility;

import android.os.Build.VERSION;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

public class AccessibilityManagerCompat
{
  private static final AccessibilityManagerCompat.AccessibilityManagerVersionImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
      IMPL = new AccessibilityManagerCompat.AccessibilityManagerIcsImpl();
    while (true)
    {
      return;
      IMPL = new AccessibilityManagerCompat.AccessibilityManagerStubImpl();
    }
  }

  public static boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat paramAccessibilityStateChangeListenerCompat)
  {
    return IMPL.addAccessibilityStateChangeListener(paramAccessibilityManager, paramAccessibilityStateChangeListenerCompat);
  }

  public static List getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt)
  {
    return IMPL.getEnabledAccessibilityServiceList(paramAccessibilityManager, paramInt);
  }

  public static List getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager)
  {
    return IMPL.getInstalledAccessibilityServiceList(paramAccessibilityManager);
  }

  public static boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager)
  {
    return IMPL.isTouchExplorationEnabled(paramAccessibilityManager);
  }

  public static boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat paramAccessibilityStateChangeListenerCompat)
  {
    return IMPL.removeAccessibilityStateChangeListener(paramAccessibilityManager, paramAccessibilityStateChangeListenerCompat);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityManagerCompat
 * JD-Core Version:    0.6.0
 */