package com.google.tagmanager;

import android.content.Context;
import android.net.Uri;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class r
{
  private static r f;
  private final v a;
  private final Context b;
  private final e c;
  private volatile w d;
  private final ConcurrentMap e;

  private r(Context paramContext, v paramv, e parame)
  {
    if (paramContext == null)
      throw new NullPointerException("context cannot be null");
    this.b = paramContext.getApplicationContext();
    this.a = paramv;
    this.d = w.a;
    this.e = new ConcurrentHashMap();
    this.c = parame;
    this.c.a(new s(this));
    this.c.a(new a(this.b));
  }

  public static r a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (f == null)
        f = new r(paramContext, new t(), new e());
      r localr = f;
      monitorexit;
      return localr;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final w a()
  {
    return this.d;
  }

  final boolean a(Uri paramUri)
  {
    monitorenter;
    while (true)
    {
      m localm;
      String str;
      try
      {
        localm = m.a();
        if (!localm.a(paramUri))
          break label215;
        str = localm.d();
        int j = u.a[localm.b().ordinal()];
        switch (j)
        {
        default:
          i = 1;
          return i;
        case 1:
          c localc2 = (c)this.e.get(str);
          if (localc2 == null)
            continue;
          localc2.a(null);
          localc2.a();
          continue;
        case 2:
        case 3:
        }
      }
      finally
      {
        monitorexit;
      }
      Iterator localIterator = this.e.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        c localc1 = (c)localEntry.getValue();
        if (((String)localEntry.getKey()).equals(str))
        {
          localc1.a(localm.c());
          localc1.a();
          continue;
        }
        if (localc1.b() == null)
          continue;
        localc1.a(null);
        localc1.a();
      }
      continue;
      label215: int i = 0;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.r
 * JD-Core Version:    0.6.0
 */