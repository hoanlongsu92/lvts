package com.google.analytics.tracking.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

final class bc
  implements o
{
  private final String a;
  private final HttpClient b;
  private final Context c;
  private an d;
  private URL e;

  bc(HttpClient paramHttpClient, Context paramContext)
  {
    this(paramHttpClient, an.a(paramContext), paramContext);
  }

  private bc(HttpClient paramHttpClient, an paraman, Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    String str1 = Build.VERSION.RELEASE;
    String str2 = bg.a(Locale.getDefault());
    String str3 = Build.MODEL;
    String str4 = Build.ID;
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "GoogleAnalytics";
    arrayOfObject[1] = "3.0";
    arrayOfObject[2] = str1;
    arrayOfObject[3] = str2;
    arrayOfObject[4] = str3;
    arrayOfObject[5] = str4;
    this.a = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", arrayOfObject);
    this.b = paramHttpClient;
    this.d = paraman;
  }

  private URL a(ao paramao)
  {
    URL localURL;
    if (this.e != null)
    {
      localURL = this.e;
      return localURL;
    }
    String str1 = paramao.d();
    while (true)
    {
      try
      {
        if (!"http:".equals(str1))
          break label60;
        str2 = "http://www.google-analytics.com/collect";
        localURL = new URL(str2);
      }
      catch (MalformedURLException localMalformedURLException)
      {
        aq.a("Error trying to parse the hardcoded host url. This really shouldn't happen.");
        localURL = null;
      }
      break;
      label60: String str2 = "https://ssl.google-analytics.com/collect";
    }
  }

  private HttpEntityEnclosingRequest a(String paramString1, String paramString2)
  {
    BasicHttpEntityEnclosingRequest localBasicHttpEntityEnclosingRequest;
    if (TextUtils.isEmpty(paramString1))
    {
      aq.d("Empty hit, discarding.");
      localBasicHttpEntityEnclosingRequest = null;
    }
    while (true)
    {
      return localBasicHttpEntityEnclosingRequest;
      String str = paramString2 + "?" + paramString1;
      if (str.length() < 2036)
        localBasicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", str);
      while (true)
      {
        localBasicHttpEntityEnclosingRequest.addHeader("User-Agent", this.a);
        break;
        localBasicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", paramString2);
        try
        {
          localBasicHttpEntityEnclosingRequest.setEntity(new StringEntity(paramString1));
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          aq.d("Encoding error, discarding hit");
          localBasicHttpEntityEnclosingRequest = null;
        }
      }
    }
  }

  private static void a(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Header[] arrayOfHeader = paramHttpEntityEnclosingRequest.getAllHeaders();
    int i = arrayOfHeader.length;
    for (int j = 0; j < i; j++)
      localStringBuffer.append(arrayOfHeader[j].toString()).append("\n");
    localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
    if (paramHttpEntityEnclosingRequest.getEntity() != null);
    try
    {
      InputStream localInputStream = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (localInputStream != null)
      {
        int k = localInputStream.available();
        if (k > 0)
        {
          byte[] arrayOfByte = new byte[k];
          localInputStream.read(arrayOfByte);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String(arrayOfByte)).append("\n");
        }
      }
      aq.c(localStringBuffer.toString());
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        aq.c("Error Writing hit to log...");
    }
  }

  public final int a(List paramList)
  {
    int i = 0;
    int j = Math.min(paramList.size(), 40);
    int k = 1;
    int m = 0;
    HttpHost localHttpHost;
    HttpEntityEnclosingRequest localHttpEntityEnclosingRequest;
    label266: int i1;
    if (m < j)
    {
      ao localao = (ao)paramList.get(m);
      URL localURL = a(localao);
      int i4;
      if (localURL == null)
      {
        if (aq.a())
          aq.d("No destination: discarding hit: " + localao.a());
        while (true)
        {
          i4 = i + 1;
          m++;
          i = i4;
          break;
          aq.d("No destination: discarding hit.");
        }
      }
      localHttpHost = new HttpHost(localURL.getHost(), localURL.getPort(), localURL.getProtocol());
      String str1 = localURL.getPath();
      if (TextUtils.isEmpty(localao.a()));
      StringBuilder localStringBuilder;
      for (String str2 = ""; ; str2 = localStringBuilder.toString())
      {
        localHttpEntityEnclosingRequest = a(str2, str1);
        if (localHttpEntityEnclosingRequest != null)
          break label266;
        i4 = i + 1;
        break;
        long l1 = System.currentTimeMillis();
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(localao.a());
        if (localao.c() > 0L)
        {
          long l2 = l1 - localao.c();
          if (l2 >= 0L)
            localStringBuilder.append("&qt=").append(l2);
        }
        localStringBuilder.append("&z=").append(localao.b());
      }
      localHttpEntityEnclosingRequest.addHeader("Host", localHttpHost.toHostString());
      if (aq.a())
        a(localHttpEntityEnclosingRequest);
      if (str2.length() > 8192)
        aq.d("Hit too long (> 8192 bytes)--not sent");
      for (i1 = k; ; i1 = k)
      {
        int i2 = i + 1;
        int i3 = i1;
        i4 = i2;
        k = i3;
        break;
        if (!this.d.b())
          break label356;
        aq.b("Dry run enabled. Hit not actually sent.");
      }
      label356: if (k == 0)
        break label532;
    }
    while (true)
    {
      try
      {
        while (true)
        {
          u.b(this.c);
          i1 = 0;
          try
          {
            HttpResponse localHttpResponse = this.b.execute(localHttpHost, localHttpEntityEnclosingRequest);
            int i5 = localHttpResponse.getStatusLine().getStatusCode();
            HttpEntity localHttpEntity = localHttpResponse.getEntity();
            if (localHttpEntity != null)
              localHttpEntity.consumeContent();
            if (i5 == 200)
              break;
            aq.d("Bad response: " + localHttpResponse.getStatusLine().getStatusCode());
          }
          catch (ClientProtocolException localClientProtocolException1)
          {
          }
        }
        aq.d("ClientProtocolException sending hit; discarding hit...");
      }
      catch (IOException localIOException)
      {
        aq.d("Exception sending hit: " + localIOException.getClass().getSimpleName());
        aq.d(localIOException.getMessage());
        int n = i;
        return n;
        n = i;
        continue;
      }
      catch (ClientProtocolException localClientProtocolException2)
      {
        i1 = k;
        continue;
      }
      label532: i1 = k;
    }
  }

  public final void a(String paramString)
  {
    try
    {
      this.e = new URL(paramString);
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (true)
        this.e = null;
    }
  }

  public final boolean a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.c.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
      aq.c("...no network connectivity");
    for (int i = 0; ; i = 1)
      return i;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bc
 * JD-Core Version:    0.6.0
 */