package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class ViewPager$MyAccessibilityDelegate extends AccessibilityDelegateCompat
{
  ViewPager$MyAccessibilityDelegate(ViewPager paramViewPager)
  {
  }

  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
  }

  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    int i = 1;
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
    if ((ViewPager.access$100(this.this$0) != null) && (ViewPager.access$100(this.this$0).getCount() > i));
    while (true)
    {
      paramAccessibilityNodeInfoCompat.setScrollable(i);
      if ((ViewPager.access$100(this.this$0) != null) && (ViewPager.access$200(this.this$0) >= 0) && (ViewPager.access$200(this.this$0) < -1 + ViewPager.access$100(this.this$0).getCount()))
        paramAccessibilityNodeInfoCompat.addAction(4096);
      if ((ViewPager.access$100(this.this$0) != null) && (ViewPager.access$200(this.this$0) > 0) && (ViewPager.access$200(this.this$0) < ViewPager.access$100(this.this$0).getCount()))
        paramAccessibilityNodeInfoCompat.addAction(8192);
      return;
      int j = 0;
    }
  }

  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    int i = 1;
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle));
    while (true)
    {
      return i;
      switch (paramInt)
      {
      default:
        i = 0;
        break;
      case 4096:
        if ((ViewPager.access$100(this.this$0) != null) && (ViewPager.access$200(this.this$0) >= 0) && (ViewPager.access$200(this.this$0) < -1 + ViewPager.access$100(this.this$0).getCount()))
        {
          this.this$0.setCurrentItem(1 + ViewPager.access$200(this.this$0));
          continue;
        }
        i = 0;
        break;
      case 8192:
        if ((ViewPager.access$100(this.this$0) != null) && (ViewPager.access$200(this.this$0) > 0) && (ViewPager.access$200(this.this$0) < ViewPager.access$100(this.this$0).getCount()))
        {
          this.this$0.setCurrentItem(-1 + ViewPager.access$200(this.this$0));
          continue;
        }
        i = 0;
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager.MyAccessibilityDelegate
 * JD-Core Version:    0.6.0
 */