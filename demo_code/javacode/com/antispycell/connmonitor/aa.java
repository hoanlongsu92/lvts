package com.antispycell.connmonitor;

import android.os.AsyncTask;
import android.widget.TextView;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;

public final class aa extends AsyncTask
{
  private TextView b;
  private String c = null;
  private String d = null;

  public aa(w paramw, TextView paramTextView, String paramString1, String paramString2)
  {
    this.c = paramString1;
    this.b = paramTextView;
    this.d = paramString2;
  }

  private String a()
  {
    Object localObject = null;
    try
    {
      String str = InetAddress.getByName(this.c).getHostName();
      localObject = str;
      if ((this.c != null) && (localObject != null))
        w.d.put(this.c, localObject);
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
 * Qualified Name:     com.antispycell.connmonitor.aa
 * JD-Core Version:    0.6.0
 */