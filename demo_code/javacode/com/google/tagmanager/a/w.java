package com.google.tagmanager.a;

public abstract class w extends s
  implements x
{
  private final p a;

  protected w()
  {
    this.a = p.a();
  }

  protected w(v paramv)
  {
    this.a = v.a(paramv);
  }

  protected final boolean a(j paramj, l paraml, n paramn, int paramInt)
  {
    int i = 0;
    p localp = this.a;
    ak localak1 = m();
    int j = bh.a(paramInt);
    z localz = paramn.a(localak1, bh.b(paramInt));
    int k;
    if (localz != null)
      if (j == p.a(localz.b.a(), false))
        k = 0;
    boolean bool;
    while (k != 0)
    {
      bool = paramj.a(paramInt, paraml);
      return bool;
      if ((localz.b.d) && (localz.b.c.c()) && (j == p.a(localz.b.a(), true)))
      {
        k = 0;
        i = 1;
        continue;
      }
      k = 1;
    }
    if (i != 0)
    {
      int n = paramj.b(paramj.i());
      if (localz.b.a() == bi.n)
        while (paramj.m() > 0)
        {
          int i1 = paramj.h();
          ac localac = localz.b.e().a(i1);
          if (localac == null)
            break label260;
          localp.b(localz.b, localz.a(localac));
        }
      while (paramj.m() > 0)
      {
        Object localObject2 = p.a(paramj, localz.b.a());
        localp.b(localz.b, localObject2);
      }
      paramj.c(n);
    }
    label260: Object localObject1;
    while (true)
    {
      bool = true;
      break;
      switch (t.a[localz.b.b().ordinal()])
      {
      default:
        localObject1 = p.a(paramj, localz.b.a());
        label318: if (!localz.b.c())
          break label500;
        localp.b(localz.b, localz.a(localObject1));
      case 1:
      case 2:
      }
    }
    ak localak2;
    if (!localz.b.c())
    {
      localak2 = (ak)localp.a(localz.b);
      if (localak2 == null);
    }
    for (al localal = localak2.k(); ; localal = null)
    {
      if (localal == null)
        localal = localz.a.l();
      if (localz.b.a() == bi.j)
        paramj.a(localz.b.d(), localal, paramn);
      while (true)
      {
        localObject1 = localal.e();
        break;
        paramj.a(localal, paramn);
      }
      int m = paramj.h();
      localObject1 = localz.b.e().a(m);
      if (localObject1 != null)
        break label318;
      paraml.b(paramInt);
      paraml.b(m);
      break;
      label500: localp.a(localz.b, localz.a(localObject1));
      break;
    }
  }

  protected final boolean s()
  {
    return this.a.e();
  }

  protected final void t()
  {
    this.a.c();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.w
 * JD-Core Version:    0.6.0
 */