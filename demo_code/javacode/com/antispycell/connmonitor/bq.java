package com.antispycell.connmonitor;

import android.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;

final class bq
  implements View.OnClickListener
{
  bq(bj parambj)
  {
  }

  public final void onClick(View paramView)
  {
    new AlertDialog.Builder(this.a.getActivity()).setTitle("Clear database").setMessage("Are you sure you want to clear all captured connections?").setPositiveButton("Yes", new br(this)).setNegativeButton("No", new bs(this)).show();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bq
 * JD-Core Version:    0.6.0
 */