package com.google.tagmanager.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class p
{
  private static final p d = new p(0);
  private final au a;
  private boolean b;
  private boolean c = false;

  private p()
  {
    this.a = au.a(16);
  }

  private p(byte paramByte)
  {
    this.a = au.a(0);
    c();
  }

  static int a(bi parambi, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 2; ; i = parambi.b())
      return i;
  }

  public static p a()
  {
    return new p();
  }

  public static Object a(j paramj, bi parambi)
  {
    Object localObject;
    switch (q.b[parambi.ordinal()])
    {
    default:
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1:
      localObject = Double.valueOf(Double.longBitsToDouble(paramj.l()));
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      while (true)
      {
        return localObject;
        localObject = Float.valueOf(paramj.b());
        continue;
        localObject = Long.valueOf(paramj.c());
        continue;
        localObject = Long.valueOf(paramj.j());
        continue;
        localObject = Integer.valueOf(paramj.d());
        continue;
        localObject = Long.valueOf(paramj.l());
        continue;
        localObject = Integer.valueOf(paramj.k());
        continue;
        localObject = Boolean.valueOf(paramj.e());
        continue;
        localObject = paramj.f();
        continue;
        localObject = paramj.g();
        continue;
        localObject = Integer.valueOf(paramj.i());
        continue;
        localObject = Integer.valueOf(paramj.k());
        continue;
        localObject = Long.valueOf(paramj.l());
        continue;
        int i = paramj.i();
        localObject = Integer.valueOf(i >>> 1 ^ -(i & 0x1));
        continue;
        long l = paramj.j();
        localObject = Long.valueOf(l >>> 1 ^ -(l & 1L));
      }
    case 16:
      throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
    case 17:
      throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
    case 18:
    }
    throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
  }

  private static void a(bi parambi, Object paramObject)
  {
    boolean bool = false;
    if (paramObject == null)
      throw new NullPointerException();
    switch (q.a[parambi.a().ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    }
    while (!bool)
    {
      throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      bool = paramObject instanceof Integer;
      continue;
      bool = paramObject instanceof Long;
      continue;
      bool = paramObject instanceof Float;
      continue;
      bool = paramObject instanceof Double;
      continue;
      bool = paramObject instanceof Boolean;
      continue;
      bool = paramObject instanceof String;
      continue;
      if ((!(paramObject instanceof g)) && (!(paramObject instanceof byte[])))
        continue;
      bool = true;
      continue;
      if ((!(paramObject instanceof Integer)) && (!(paramObject instanceof ac)))
        continue;
      bool = true;
      continue;
      if ((!(paramObject instanceof ak)) && (!(paramObject instanceof af)))
        continue;
      bool = true;
    }
  }

  private static boolean a(Map.Entry paramEntry)
  {
    r localr = (r)paramEntry.getKey();
    int i;
    if (localr.b() == bn.i)
      if (localr.c())
      {
        Iterator localIterator = ((List)paramEntry.getValue()).iterator();
        while (localIterator.hasNext())
        {
          if (((ak)localIterator.next()).i())
            continue;
          i = 0;
        }
      }
    while (true)
    {
      return i;
      Object localObject = paramEntry.getValue();
      if ((localObject instanceof ak))
      {
        if (!((ak)localObject).i())
        {
          i = 0;
          continue;
        }
      }
      else
      {
        if ((localObject instanceof af))
        {
          i = 1;
          continue;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      }
      i = 1;
    }
  }

  public static p b()
  {
    return d;
  }

  private void b(Map.Entry paramEntry)
  {
    r localr = (r)paramEntry.getKey();
    Object localObject1 = paramEntry.getValue();
    if ((localObject1 instanceof af))
      localObject1 = ((af)localObject1).a();
    Object localObject4;
    if (localr.c())
    {
      localObject4 = a(localr);
      if (localObject4 == null)
        this.a.a(localr, new ArrayList((List)localObject1));
    }
    while (true)
    {
      return;
      ((List)localObject4).addAll((List)localObject1);
      continue;
      if (localr.b() == bn.i)
      {
        Object localObject2 = a(localr);
        if (localObject2 == null)
        {
          this.a.a(localr, localObject1);
          continue;
        }
        if ((localObject2 instanceof an));
        for (Object localObject3 = localr.a((an)localObject2); ; localObject3 = localr.a(((ak)localObject2).k(), (ak)localObject1).e())
        {
          this.a.a(localr, localObject3);
          break;
        }
      }
      this.a.a(localr, localObject1);
    }
  }

  public final Object a(r paramr)
  {
    Object localObject = this.a.get(paramr);
    if ((localObject instanceof af))
      localObject = ((af)localObject).a();
    return localObject;
  }

  public final void a(p paramp)
  {
    for (int i = 0; i < paramp.a.c(); i++)
      b(paramp.a.b(i));
    Iterator localIterator = paramp.a.d().iterator();
    while (localIterator.hasNext())
      b((Map.Entry)localIterator.next());
  }

  public final void a(r paramr, Object paramObject)
  {
    if (paramr.c())
    {
      if (!(paramObject instanceof List))
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll((List)paramObject);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        a(paramr.a(), localObject);
      }
      paramObject = localArrayList;
    }
    while (true)
    {
      if ((paramObject instanceof af))
        this.c = true;
      this.a.a(paramr, paramObject);
      return;
      a(paramr.a(), paramObject);
    }
  }

  public final void b(r paramr, Object paramObject)
  {
    if (!paramr.c())
      throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    a(paramr.a(), paramObject);
    Object localObject1 = a(paramr);
    Object localObject2;
    if (localObject1 == null)
    {
      localObject2 = new ArrayList();
      this.a.a(paramr, localObject2);
    }
    while (true)
    {
      ((List)localObject2).add(paramObject);
      return;
      localObject2 = (List)localObject1;
    }
  }

  public final void c()
  {
    if (this.b);
    while (true)
    {
      return;
      this.a.a();
      this.b = true;
    }
  }

  public final p d()
  {
    p localp = new p();
    for (int i = 0; i < this.a.c(); i++)
    {
      Map.Entry localEntry2 = this.a.b(i);
      localp.a((r)localEntry2.getKey(), localEntry2.getValue());
    }
    Iterator localIterator = this.a.d().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator.next();
      localp.a((r)localEntry1.getKey(), localEntry1.getValue());
    }
    localp.c = this.c;
    return localp;
  }

  public final boolean e()
  {
    int i = 0;
    int j = 0;
    if (j < this.a.c())
      if (a(this.a.b(j)));
    while (true)
    {
      return i;
      j++;
      break;
      Iterator localIterator = this.a.d().iterator();
      while (true)
        if (localIterator.hasNext())
        {
          if (a((Map.Entry)localIterator.next()))
            continue;
          break;
        }
      i = 1;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.p
 * JD-Core Version:    0.6.0
 */