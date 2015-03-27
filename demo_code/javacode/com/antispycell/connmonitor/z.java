package com.antispycell.connmonitor;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.util.HashMap;

final class z
  implements View.OnClickListener
{
  z(w paramw, ViewGroup paramViewGroup)
  {
  }

  public final void onClick(View paramView)
  {
    SharedPreferences.Editor localEditor = this.a.g.edit();
    if (this.a.l.booleanValue())
    {
      localEditor.putBoolean("resolvehostnames", false);
      this.a.l = Boolean.valueOf(false);
      w.d = null;
    }
    while (true)
    {
      w.a(this.a, this.b);
      localEditor.commit();
      return;
      localEditor.putBoolean("resolvehostnames", true);
      this.a.l = Boolean.valueOf(true);
      if ((!this.a.l.booleanValue()) || (w.d != null))
        continue;
      w.d = new HashMap();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.z
 * JD-Core Version:    0.6.0
 */