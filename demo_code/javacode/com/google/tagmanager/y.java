package com.google.tagmanager;

import com.google.analytics.b.a.a.b;
import com.google.analytics.b.a.a.d;
import com.google.analytics.b.a.a.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class y
{
  private static final Object a = null;
  private static Long b = new Long(0L);
  private static Double c = new Double(0.0D);
  private static x d = x.a();
  private static String e = new String("");
  private static Boolean f = new Boolean(false);
  private static List g = new ArrayList(0);
  private static Map h = new HashMap();
  private static b i = a(e);

  public static b a()
  {
    return i;
  }

  private static b a(Object paramObject)
  {
    int j = 0;
    d locald1 = b.r();
    b localb1;
    if ((paramObject instanceof b))
    {
      localb1 = (b)paramObject;
      return localb1;
    }
    if ((paramObject instanceof String))
      locald1.a(g.a).a((String)paramObject);
    while (true)
    {
      if (j != 0)
        locald1.b(true);
      localb1 = locald1.a();
      break;
      if ((paramObject instanceof List))
      {
        locald1.a(g.b);
        Iterator localIterator2 = ((List)paramObject).iterator();
        int i2 = 0;
        if (localIterator2.hasNext())
        {
          b localb4 = a(localIterator2.next());
          if (localb4 == i)
          {
            localb1 = i;
            break;
          }
          if ((i2 != 0) || (localb4.q()));
          for (i2 = 1; ; i2 = 0)
          {
            locald1.b(localb4);
            break;
          }
        }
        j = i2;
        continue;
      }
      if ((paramObject instanceof Map))
      {
        locald1.a(g.c);
        Iterator localIterator1 = ((Map)paramObject).entrySet().iterator();
        int n = 0;
        if (localIterator1.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator1.next();
          b localb2 = a(localEntry.getKey());
          b localb3 = a(localEntry.getValue());
          if ((localb2 == i) || (localb3 == i))
          {
            localb1 = i;
            break;
          }
          if ((n != 0) || (localb2.q()) || (localb3.q()));
          for (int i1 = 1; ; i1 = 0)
          {
            locald1.c(localb2);
            locald1.d(localb3);
            n = i1;
            break;
          }
        }
        j = n;
        continue;
      }
      if (((paramObject instanceof Double)) || ((paramObject instanceof Float)) || (((paramObject instanceof x)) && (((x)paramObject).b())));
      for (int k = 1; ; k = 0)
      {
        if (k == 0)
          break label389;
        locald1.a(g.a).a(paramObject.toString());
        break;
      }
      label389: int m;
      label437: d locald2;
      long l;
      if (((paramObject instanceof Byte)) || ((paramObject instanceof Short)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || (((paramObject instanceof x)) && (((x)paramObject).c())))
      {
        m = 1;
        if (m == 0)
          break label495;
        locald2 = locald1.a(g.f);
        if (!(paramObject instanceof Number))
          break label484;
        l = ((Number)paramObject).longValue();
      }
      while (true)
      {
        locald2.a(l);
        break;
        m = 0;
        break label437;
        label484: i.a("getInt64 received non-Number");
        l = 0L;
      }
      label495: if (!(paramObject instanceof Boolean))
        break label523;
      locald1.a(g.h).a(((Boolean)paramObject).booleanValue());
    }
    label523: StringBuilder localStringBuilder = new StringBuilder("Converting to Value from unknown object type: ");
    if (paramObject == null);
    for (String str = "null"; ; str = paramObject.getClass().toString())
    {
      i.a(str);
      localb1 = i;
      break;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.y
 * JD-Core Version:    0.6.0
 */