package com.antispycell.connmonitor;

import android.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;

final class bl
  implements View.OnClickListener
{
  bl(bj parambj)
  {
  }

  public final void onClick(View paramView)
  {
    new AlertDialog.Builder(this.a.getActivity()).setTitle("Live Capture").setMessage("The Live Capture is currently running. This setting will be applied on the next launch of the capture.").setPositiveButton("OK", new bm(this)).show();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bl
 * JD-Core Version:    0.6.0
 */