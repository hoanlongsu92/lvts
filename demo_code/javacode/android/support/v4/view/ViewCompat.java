package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public class ViewCompat
{
  private static final long FAKE_FRAME_TIME = 10L;
  static final ViewCompat.ViewCompatImpl IMPL;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
  public static final int OVER_SCROLL_ALWAYS = 0;
  public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
  public static final int OVER_SCROLL_NEVER = 2;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if ((i >= 16) || (Build.VERSION.CODENAME.equals("JellyBean")))
      IMPL = new ViewCompat.JBViewCompatImpl();
    while (true)
    {
      return;
      if (i >= 14)
      {
        IMPL = new ViewCompat.ICSViewCompatImpl();
        continue;
      }
      if (i >= 11)
      {
        IMPL = new ViewCompat.HCViewCompatImpl();
        continue;
      }
      if (i >= 9)
      {
        IMPL = new ViewCompat.GBViewCompatImpl();
        continue;
      }
      IMPL = new ViewCompat.BaseViewCompatImpl();
    }
  }

  public static boolean canScrollHorizontally(View paramView, int paramInt)
  {
    return IMPL.canScrollHorizontally(paramView, paramInt);
  }

  public static boolean canScrollVertically(View paramView, int paramInt)
  {
    return IMPL.canScrollVertically(paramView, paramInt);
  }

  public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
  {
    return IMPL.getAccessibilityNodeProvider(paramView);
  }

  public static int getImportantForAccessibility(View paramView)
  {
    return IMPL.getImportantForAccessibility(paramView);
  }

  public static int getOverScrollMode(View paramView)
  {
    return IMPL.getOverScrollMode(paramView);
  }

  public static boolean hasTransientState(View paramView)
  {
    return IMPL.hasTransientState(paramView);
  }

  public static void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    IMPL.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }

  public static void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    IMPL.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
  }

  public static void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    IMPL.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }

  public static void postInvalidateOnAnimation(View paramView)
  {
    IMPL.postInvalidateOnAnimation(paramView);
  }

  public static void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IMPL.postInvalidateOnAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public static void postOnAnimation(View paramView, Runnable paramRunnable)
  {
    IMPL.postOnAnimation(paramView, paramRunnable);
  }

  public static void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong)
  {
    IMPL.postOnAnimationDelayed(paramView, paramRunnable, paramLong);
  }

  public static void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
    IMPL.setAccessibilityDelegate(paramView, paramAccessibilityDelegateCompat);
  }

  public static void setHasTransientState(View paramView, boolean paramBoolean)
  {
    IMPL.setHasTransientState(paramView, paramBoolean);
  }

  public static void setImportantForAccessibility(View paramView, int paramInt)
  {
    IMPL.setImportantForAccessibility(paramView, paramInt);
  }

  public static void setOverScrollMode(View paramView, int paramInt)
  {
    IMPL.setOverScrollMode(paramView, paramInt);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat
 * JD-Core Version:    0.6.0
 */