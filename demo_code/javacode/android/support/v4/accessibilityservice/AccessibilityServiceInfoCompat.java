package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;

public class AccessibilityServiceInfoCompat
{
  public static final int FEEDBACK_ALL_MASK = -1;
  private static final AccessibilityServiceInfoCompat.AccessibilityServiceInfoVersionImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
      IMPL = new AccessibilityServiceInfoCompat.AccessibilityServiceInfoIcsImpl();
    while (true)
    {
      return;
      IMPL = new AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl();
    }
  }

  public static String feedbackTypeToString(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    while (paramInt > 0)
    {
      int i = 1 << Integer.numberOfTrailingZeros(paramInt);
      paramInt &= (i ^ 0xFFFFFFFF);
      if (localStringBuilder.length() > 1)
        localStringBuilder.append(", ");
      switch (i)
      {
      default:
        break;
      case 1:
        localStringBuilder.append("FEEDBACK_SPOKEN");
        break;
      case 4:
        localStringBuilder.append("FEEDBACK_AUDIBLE");
        break;
      case 2:
        localStringBuilder.append("FEEDBACK_HAPTIC");
        break;
      case 16:
        localStringBuilder.append("FEEDBACK_GENERIC");
        break;
      case 8:
        localStringBuilder.append("FEEDBACK_VISUAL");
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }

  public static String flagToString(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    }
    for (String str = null; ; str = "DEFAULT")
      return str;
  }

  public static boolean getCanRetrieveWindowContent(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return IMPL.getCanRetrieveWindowContent(paramAccessibilityServiceInfo);
  }

  public static String getDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return IMPL.getDescription(paramAccessibilityServiceInfo);
  }

  public static String getId(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return IMPL.getId(paramAccessibilityServiceInfo);
  }

  public static ResolveInfo getResolveInfo(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return IMPL.getResolveInfo(paramAccessibilityServiceInfo);
  }

  public static String getSettingsActivityName(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return IMPL.getSettingsActivityName(paramAccessibilityServiceInfo);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat
 * JD-Core Version:    0.6.0
 */