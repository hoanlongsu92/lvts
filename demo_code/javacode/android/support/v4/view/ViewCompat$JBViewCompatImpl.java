package android.support.v4.view;

import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;

class ViewCompat$JBViewCompatImpl extends ViewCompat.ICSViewCompatImpl
{
  public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
  {
    Object localObject = ViewCompatJB.getAccessibilityNodeProvider(paramView);
    if (localObject != null);
    for (AccessibilityNodeProviderCompat localAccessibilityNodeProviderCompat = new AccessibilityNodeProviderCompat(localObject); ; localAccessibilityNodeProviderCompat = null)
      return localAccessibilityNodeProviderCompat;
  }

  public int getImportantForAccessibility(View paramView)
  {
    return ViewCompatJB.getImportantForAccessibility(paramView);
  }

  public boolean hasTransientState(View paramView)
  {
    return ViewCompatJB.hasTransientState(paramView);
  }

  public void postInvalidateOnAnimation(View paramView)
  {
    ViewCompatJB.postInvalidateOnAnimation(paramView);
  }

  public void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewCompatJB.postInvalidateOnAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void postOnAnimation(View paramView, Runnable paramRunnable)
  {
    ViewCompatJB.postOnAnimation(paramView, paramRunnable);
  }

  public void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong)
  {
    ViewCompatJB.postOnAnimationDelayed(paramView, paramRunnable, paramLong);
  }

  public void setHasTransientState(View paramView, boolean paramBoolean)
  {
    ViewCompatJB.setHasTransientState(paramView, paramBoolean);
  }

  public void setImportantForAccessibility(View paramView, int paramInt)
  {
    ViewCompatJB.setImportantForAccessibility(paramView, paramInt);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat.JBViewCompatImpl
 * JD-Core Version:    0.6.0
 */