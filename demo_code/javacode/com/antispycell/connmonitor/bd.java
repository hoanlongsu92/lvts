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

public final class bd extends AsyncTask
{
  private TextView b;
  private TextView c;
  private TextView d;
  private String e = null;
  private String f = null;
  private String g = null;
  private String h = null;

  public bd(IPDetails paramIPDetails, TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, String paramString)
  {
    this.h = paramString;
    this.b = paramTextView1;
    this.c = paramTextView2;
    this.d = paramTextView3;
  }

  private Boolean a()
  {
    try
    {
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
      HttpGet localHttpGet = new HttpGet("http://stat.ripe.net/data/registry-browser/data.json?resource=" + this.h + "&use_live_lookups=1");
      localHttpGet.setHeader("Accept", "application/json");
      String str1 = EntityUtils.toString(localDefaultHttpClient.execute(localHttpGet).getEntity());
      while (true)
      {
        JSONArray localJSONArray2;
        int j;
        JSONObject localJSONObject3;
        try
        {
          JSONObject localJSONObject1 = new JSONObject(str1);
          localJSONObject2 = localJSONObject1;
          if (localJSONObject2 == null)
            continue;
          localJSONArray1 = localJSONObject2.getJSONObject("data").getJSONArray("objects").getJSONObject(0).getJSONArray("fields");
          i = 0;
          str2 = null;
          str3 = null;
          str4 = "";
          if (i < localJSONArray1.length())
            continue;
          this.e = str2;
          this.g = (str4 + str3);
          localJSONArray2 = localJSONObject2.getJSONObject("data").getJSONArray("backward_refs").getJSONObject(0).getJSONArray("fields");
          j = 0;
          int k = localJSONArray2.length();
          if (j < k)
            break label372;
          return Boolean.valueOf(true);
        }
        catch (JSONException localJSONException2)
        {
          JSONArray localJSONArray1;
          localJSONException2.printStackTrace();
          JSONObject localJSONObject2 = null;
          continue;
          localJSONObject3 = localJSONArray1.getJSONObject(i);
          if ((!localJSONObject3.getString("key").equals("netname")) || (localJSONObject3.getString("value") == null))
            continue;
          String str2 = localJSONObject3.getString("value");
          if ((!localJSONObject3.getString("key").equals("descr")) || (localJSONObject3.getString("value") == null))
            continue;
          String str4 = str4 + localJSONObject3.getString("value") + "\n";
          if (!localJSONObject3.getString("key").equals("country"))
            break;
        }
        if (localJSONObject3.getString("value") == null)
          break;
        String str3 = localJSONObject3.getString("value") + "\n";
        break;
        label372: JSONObject localJSONObject4 = localJSONArray2.getJSONObject(j);
        if ((localJSONObject4.getString("key").equals("origin")) && (localJSONObject4.getString("value") != null))
          this.f = localJSONObject4.getString("value");
        j++;
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
      {
        int i;
        localJSONException1.printStackTrace();
        continue;
        i++;
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bd
 * JD-Core Version:    0.6.0
 */