package com.antispycell.connmonitor;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bv
  implements View.OnClickListener
{
  bv(bj parambj)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(bj.a, Legal.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bv
 * JD-Core Version:    0.6.0
 */