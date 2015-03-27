package com.antispycell.connmonitor;

import android.os.AsyncTask;
import android.widget.TextView;
import java.net.InetAddress;
import java.net.UnknownHostException;

public final class e extends AsyncTask
{
  private TextView b;
  private String c = null;

  public e(AppDetails paramAppDetails, TextView paramTextView, String paramString)
  {
    this.c = paramString;
    this.b = paramTextView;
  }

  private String a()
  {
    Object localObject = null;
    try
    {
      String str = InetAddress.getByName(this.c).getHostName();
      localObject = str;
      return localObject;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      while (true)
        localUnknownHostException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.e
 * JD-Core Version:    0.6.0
 */