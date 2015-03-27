package com.antispycell.connmonitor;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class bw
  implements View.OnClickListener
{
  bw(bj parambj)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      this.a.d = p.a(bj.a);
      this.a.d.a(at.a("ui_action", "button_press", "EXIT", null).a());
      this.a.getActivity().finish();
      label46: return;
    }
    catch (Exception localException)
    {
      break label46;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bw
 * JD-Core Version:    0.6.0
 */