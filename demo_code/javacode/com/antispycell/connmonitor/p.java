package com.antispycell.connmonitor;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class p
  implements View.OnClickListener
{
  p(ConnectionMonitorActivity paramConnectionMonitorActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a.getBaseContext(), Legal.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.p
 * JD-Core Version:    0.6.0
 */