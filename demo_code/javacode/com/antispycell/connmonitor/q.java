package com.antispycell.connmonitor;

import android.app.Dialog;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;

final class q
  implements View.OnClickListener
{
  q(ConnectionMonitorActivity paramConnectionMonitorActivity, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    SharedPreferences.Editor localEditor = ConnectionMonitorActivity.a.edit();
    localEditor.putBoolean("skipWelcome", true);
    localEditor.commit();
    this.b.cancel();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.q
 * JD-Core Version:    0.6.0
 */