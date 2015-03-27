package com.antispycell.connmonitor;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class ar
  implements View.OnClickListener
{
  ar(IPDetails paramIPDetails, long paramLong, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW").setData(Uri.parse("market://details?id=com.antispycell.connmonitor.unlock"));
      this.a.startActivity(localIntent);
      this.a.c = p.a(this.a.getApplicationContext());
      this.a.c.a(at.a("ui_action", "button_press", "DOWNLOAD (" + this.b + ")", Long.valueOf(this.b)).a());
      this.c.cancel();
      this.a.finish();
      label108: return;
    }
    catch (Exception localException)
    {
      break label108;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ar
 * JD-Core Version:    0.6.0
 */