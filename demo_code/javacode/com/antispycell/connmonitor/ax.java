package com.antispycell.connmonitor;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class ax
  implements View.OnClickListener
{
  ax(aw paramaw)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(aw.a(this.a), AppDetails.class);
    localIntent.putExtra("packageName", ((ao)IPDetails.b.get(aw.b(this.a))).d());
    aw.c(this.a).startActivity(localIntent);
    if (IPDetails.b.size() == 1)
      aw.c(this.a).finish();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ax
 * JD-Core Version:    0.6.0
 */