package com.antispycell.connmonitor;

import android.os.AsyncTask;
import android.widget.TextView;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ay extends AsyncTask
{
  private TextView b;
  private String c = null;
  private String d = null;

  public ay(IPDetails paramIPDetails, TextView paramTextView, String paramString)
  {
    this.c = paramString;
    this.b = paramTextView;
  }

  private Boolean a()
  {
    try
    {
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
      HttpGet localHttpGet = new HttpGet("http://stat.ripe.net/data/blacklist/data.json?resource=" + this.c);
      localHttpGet.setHeader("Accept", "application/json");
      String str = EntityUtils.toString(localDefaultHttpClient.execute(localHttpGet).getEntity());
      try
      {
        localJSONObject1 = new JSONObject(str);
        if (localJSONObject1 != null)
        {
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("data").getJSONObject("sources");
          JSONArray localJSONArray = localJSONObject2.names();
          if (localJSONObject2.length() > 0)
            this.d = localJSONObject2.getJSONArray((String)localJSONArray.get(0)).getJSONObject(0).getString("details");
        }
        return Boolean.valueOf(true);
      }
      catch (JSONException localJSONException2)
      {
        while (true)
        {
          localJSONException2.printStackTrace();
          JSONObject localJSONObject1 = null;
        }
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        localUnsupportedEncodingException.printStackTrace();
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      while (true)
        localClientProtocolException.printStackTrace();
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
    catch (JSONException localJSONException1)
    {
      while (true)
        localJSONException1.printStackTrace();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ay
 * JD-Core Version:    0.6.0
 */