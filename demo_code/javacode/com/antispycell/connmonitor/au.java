package com.antispycell.connmonitor;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class au
  implements View.OnClickListener
{
  au(at paramat)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google.com/maps?q=" + at.a(this.a) + "," + at.b(this.a) + "&mrt=yp&z=7"));
    at.c(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.au
 * JD-Core Version:    0.6.0
 */