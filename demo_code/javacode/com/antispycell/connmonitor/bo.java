package com.antispycell.connmonitor;

import android.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;

final class bo
  implements View.OnClickListener
{
  bo(bj parambj)
  {
  }

  public final void onClick(View paramView)
  {
    new AlertDialog.Builder(this.a.getActivity()).setTitle("Live Capture").setMessage("The Live Capture is currently running. This setting will be applied on the next launch of the capture.").setPositiveButton("OK", new bp(this)).show();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bo
 * JD-Core Version:    0.6.0
 */