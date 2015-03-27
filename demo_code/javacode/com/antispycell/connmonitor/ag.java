package com.antispycell.connmonitor;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class ag
  implements View.OnClickListener
{
  ag(ae paramae, Button paramButton)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(ae.b, LoggingService.class);
    p localp;
    if (!ae.d.booleanValue())
    {
      ae.b.startService(localIntent);
      this.b.setText("Stop Live Capture");
      this.b.setBackgroundDrawable(this.a.getResources().getDrawable(2130837522));
      ae.d = Boolean.valueOf(true);
      this.a.h = p.a(ae.b);
      localp = this.a.h;
      if (!ae.d.booleanValue())
        break label174;
    }
    label174: for (String str = "LIVE CAPTURE START"; ; str = "LIVE CAPTURE STOP")
    {
      localp.a(at.a("ui_action", "button_press", str, null).a());
      return;
      if (!ae.d.booleanValue())
        break;
      ae.b.stopService(localIntent);
      this.b.setText("Start Live Capture");
      this.b.setBackgroundDrawable(this.a.getResources().getDrawable(2130837511));
      ae.d = Boolean.valueOf(false);
      break;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ag
 * JD-Core Version:    0.6.0
 */