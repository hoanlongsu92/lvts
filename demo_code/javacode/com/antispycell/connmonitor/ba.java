package com.antispycell.connmonitor;

import android.content.Context;
import android.os.AsyncTask;
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

public final class ba extends AsyncTask
{
  private Double b = null;
  private Double c = null;
  private String d = null;
  private Context e = null;

  public ba(IPDetails paramIPDetails, String paramString)
  {
    this.d = paramString;
  }

  private Boolean a(Context[] paramArrayOfContext)
  {
    this.e = paramArrayOfContext[0];
    try
    {
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
      HttpGet localHttpGet = new HttpGet("http://stat.ripe.net/data/geoloc/data.json?resource=" + this.d);
      localHttpGet.setHeader("Accept", "application/json");
      String str = EntityUtils.toString(localDefaultHttpClient.execute(localHttpGet).getEntity());
      try
      {
        localJSONObject = new JSONObject(str);
        if (localJSONObject != null)
        {
          JSONArray localJSONArray = localJSONObject.getJSONObject("data").getJSONArray("locations");
          this.c = Double.valueOf(localJSONArray.getJSONObject(0).getDouble("latitude"));
          this.b = Double.valueOf(localJSONArray.getJSONObject(0).getDouble("longitude"));
        }
        return Boolean.valueOf(true);
      }
      catch (JSONException localJSONException2)
      {
        while (true)
        {
          localJSONException2.printStackTrace();
          JSONObject localJSONObject = null;
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
 * Qualified Name:     com.antispycell.connmonitor.ba
 * JD-Core Version:    0.6.0
 */