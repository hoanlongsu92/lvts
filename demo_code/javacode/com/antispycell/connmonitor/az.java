package com.antispycell.connmonitor;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class az
  implements View.OnClickListener
{
  az(ay paramay)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.uceprotect.net/en/rblcheck.php?ipr=" + ay.a(this.a)));
    ay.b(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.az
 * JD-Core Version:    0.6.0
 */