package com.antispycell.connmonitor;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class s
  implements View.OnClickListener
{
  s(ConnectionMonitorActivity paramConnectionMonitorActivity, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.d = p.a(this.a.getApplicationContext());
    this.a.d.a(at.a("ui_action", "button_press", "REMIND ME LATER - 15 MINS", null).a());
    this.b.cancel();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.s
 * JD-Core Version:    0.6.0
 */