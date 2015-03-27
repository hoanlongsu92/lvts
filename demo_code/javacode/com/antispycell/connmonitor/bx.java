package com.antispycell.connmonitor;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;

public final class bx extends AsyncTask
{
  private an b;
  private Context c;
  private ProgressDialog d;

  public bx(bj parambj, an paraman, Context paramContext)
  {
    this.b = paraman;
    this.c = paramContext;
  }

  protected final void onPreExecute()
  {
    this.d = new ProgressDialog(this.a.getActivity());
    this.d.setTitle("Exporting Database ...");
    this.d.setMessage("Please wait.");
    this.d.setCancelable(false);
    this.d.setIndeterminate(true);
    this.d.show();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bx
 * JD-Core Version:    0.6.0
 */