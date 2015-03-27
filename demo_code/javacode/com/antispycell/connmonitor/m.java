package com.antispycell.connmonitor;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class m
  implements View.OnClickListener
{
  m(h paramh)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW").setData(Uri.parse("market://details?id=com.antispycell.free"));
      this.a.startActivity(localIntent);
      this.a.f = p.a(h.b);
      this.a.f.a(at.a("ui_action", "button_press", "ANTISPY BANNER CLICK", null).a());
      label62: return;
    }
    catch (Exception localException)
    {
      break label62;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.m
 * JD-Core Version:    0.6.0
 */