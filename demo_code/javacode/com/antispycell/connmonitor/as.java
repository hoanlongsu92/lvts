package com.antispycell.connmonitor;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class as
  implements View.OnClickListener
{
  as(IPDetails paramIPDetails, long paramLong, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.c = p.a(this.a.getApplicationContext());
    this.a.c.a(at.a("ui_action", "button_press", "REMIND ME LATER (" + this.b + ")", Long.valueOf(this.b)).a());
    this.c.cancel();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.as
 * JD-Core Version:    0.6.0
 */