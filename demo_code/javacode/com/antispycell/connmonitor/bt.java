package com.antispycell.connmonitor;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class bt
  implements View.OnClickListener
{
  bt(bj parambj)
  {
  }

  public final void onClick(View paramView)
  {
    an localan = new an(bj.a);
    bx localbx = new bx(this.a, localan, bj.a);
    Context[] arrayOfContext = new Context[1];
    arrayOfContext[0] = bj.a;
    localbx.execute(arrayOfContext);
    this.a.d = p.a(bj.a);
    this.a.d.a(at.a("ui_action", "button_press", "EXPORT DATABASE", null).a());
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bt
 * JD-Core Version:    0.6.0
 */