package com.antispycell.connmonitor;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class bu
  implements View.OnClickListener
{
  bu(bj parambj)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      this.a.d = p.a(bj.a);
      this.a.d.a(at.a("ui_action", "button_press", "DOWNLOAD UNLOCK KEY", null).a());
      Intent localIntent = new Intent("android.intent.action.VIEW").setData(Uri.parse("market://details?id=com.antispycell.connmonitor.unlock"));
      this.a.startActivity(localIntent);
      this.a.getActivity().finish();
      label72: return;
    }
    catch (Exception localException)
    {
      break label72;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bu
 * JD-Core Version:    0.6.0
 */