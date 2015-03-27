package com.google.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class m
{
  private static m a;
  private volatile n b = n.a;
  private volatile String c = null;
  private volatile String d = null;
  private volatile String e = null;

  static m a()
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new m();
      m localm = a;
      monitorexit;
      return localm;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private static String a(String paramString)
  {
    return paramString.split("&")[0].split("=")[1];
  }

  final boolean a(Uri paramUri)
  {
    int i = 1;
    monitorenter;
    while (true)
    {
      String str;
      try
      {
        str = URLDecoder.decode(paramUri.toString(), "UTF-8");
        if (str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"))
        {
          i.d("Container preview url: " + str);
          if (!str.matches(".*?&gtm_debug=x$"))
            continue;
          this.b = n.c;
          this.e = paramUri.getQuery().replace("&gtm_debug=x", "");
          if ((this.b != n.b) && (this.b != n.c))
            continue;
          this.d = ("/r?" + this.e);
          this.c = a(this.e);
          return i;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        i = 0;
        continue;
        this.b = n.b;
        continue;
      }
      finally
      {
        monitorexit;
      }
      if (str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"))
      {
        if (a(paramUri.getQuery()).equals(this.c))
        {
          i.d("Exit preview mode for container: " + this.c);
          this.b = n.a;
          this.d = null;
          continue;
        }
      }
      else
      {
        i.b("Invalid preview uri: " + str);
        i = 0;
        continue;
      }
      i = 0;
    }
  }

  final n b()
  {
    return this.b;
  }

  final String c()
  {
    return this.d;
  }

  final String d()
  {
    return this.c;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.m
 * JD-Core Version:    0.6.0
 */