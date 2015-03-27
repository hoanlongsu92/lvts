package com.google.analytics.a.a;

import com.google.tagmanager.a.an;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.g;
import com.google.tagmanager.a.s;
import com.google.tagmanager.a.u;

public final class l extends s
  implements o
{
  public static ao a = new m();
  private static final l c;
  private static volatile an j = null;
  private final g d;
  private int e;
  private int f;
  private int g;
  private byte h = -1;
  private int i = -1;

  static
  {
    l locall = new l();
    c = locall;
    locall.g();
  }

  private l()
  {
    this.d = g.a;
  }

  // ERROR //
  private l(com.google.tagmanager.a.j paramj, com.google.tagmanager.a.n paramn)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 38	com/google/tagmanager/a/s:<init>	()V
    //   4: aload_0
    //   5: bipush 255
    //   7: putfield 40	com/google/analytics/a/a/l:h	B
    //   10: aload_0
    //   11: bipush 255
    //   13: putfield 42	com/google/analytics/a/a/l:i	I
    //   16: aload_0
    //   17: invokespecial 37	com/google/analytics/a/a/l:g	()V
    //   20: invokestatic 56	com/google/tagmanager/a/g:i	()Lcom/google/tagmanager/a/i;
    //   23: astore_3
    //   24: aload_3
    //   25: invokestatic 61	com/google/tagmanager/a/l:a	(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;
    //   28: astore 4
    //   30: iconst_0
    //   31: istore 5
    //   33: iload 5
    //   35: ifne +156 -> 191
    //   38: aload_1
    //   39: invokevirtual 66	com/google/tagmanager/a/j:a	()I
    //   42: istore 13
    //   44: iload 13
    //   46: lookupswitch	default:+34->80, 0:+215->261, 8:+53->99, 16:+105->151
    //   81: aload_1
    //   82: aload 4
    //   84: aload_2
    //   85: iload 13
    //   87: invokevirtual 69	com/google/analytics/a/a/l:a	(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z
    //   90: ifne -57 -> 33
    //   93: iconst_1
    //   94: istore 5
    //   96: goto -63 -> 33
    //   99: aload_0
    //   100: iconst_1
    //   101: aload_0
    //   102: getfield 71	com/google/analytics/a/a/l:e	I
    //   105: ior
    //   106: putfield 71	com/google/analytics/a/a/l:e	I
    //   109: aload_0
    //   110: aload_1
    //   111: invokevirtual 73	com/google/tagmanager/a/j:d	()I
    //   114: putfield 75	com/google/analytics/a/a/l:f	I
    //   117: goto -84 -> 33
    //   120: astore 12
    //   122: aload 12
    //   124: aload_0
    //   125: invokevirtual 78	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   128: athrow
    //   129: astore 9
    //   131: aload 4
    //   133: invokevirtual 80	com/google/tagmanager/a/l:a	()V
    //   136: aload_0
    //   137: aload_3
    //   138: invokevirtual 85	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   141: putfield 48	com/google/analytics/a/a/l:d	Lcom/google/tagmanager/a/g;
    //   144: aload_0
    //   145: invokevirtual 88	com/google/analytics/a/a/l:t	()V
    //   148: aload 9
    //   150: athrow
    //   151: aload_0
    //   152: iconst_2
    //   153: aload_0
    //   154: getfield 71	com/google/analytics/a/a/l:e	I
    //   157: ior
    //   158: putfield 71	com/google/analytics/a/a/l:e	I
    //   161: aload_0
    //   162: aload_1
    //   163: invokevirtual 73	com/google/tagmanager/a/j:d	()I
    //   166: putfield 90	com/google/analytics/a/a/l:g	I
    //   169: goto -136 -> 33
    //   172: astore 8
    //   174: new 51	com/google/tagmanager/a/ae
    //   177: dup
    //   178: aload 8
    //   180: invokevirtual 94	java/io/IOException:getMessage	()Ljava/lang/String;
    //   183: invokespecial 97	com/google/tagmanager/a/ae:<init>	(Ljava/lang/String;)V
    //   186: aload_0
    //   187: invokevirtual 78	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   190: athrow
    //   191: aload 4
    //   193: invokevirtual 80	com/google/tagmanager/a/l:a	()V
    //   196: aload_0
    //   197: aload_3
    //   198: invokevirtual 85	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   201: putfield 48	com/google/analytics/a/a/l:d	Lcom/google/tagmanager/a/g;
    //   204: aload_0
    //   205: invokevirtual 88	com/google/analytics/a/a/l:t	()V
    //   208: return
    //   209: astore 7
    //   211: aload_0
    //   212: aload_3
    //   213: invokevirtual 85	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   216: putfield 48	com/google/analytics/a/a/l:d	Lcom/google/tagmanager/a/g;
    //   219: goto -15 -> 204
    //   222: astore 6
    //   224: aload_0
    //   225: aload_3
    //   226: invokevirtual 85	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   229: putfield 48	com/google/analytics/a/a/l:d	Lcom/google/tagmanager/a/g;
    //   232: aload 6
    //   234: athrow
    //   235: astore 11
    //   237: aload_0
    //   238: aload_3
    //   239: invokevirtual 85	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   242: putfield 48	com/google/analytics/a/a/l:d	Lcom/google/tagmanager/a/g;
    //   245: goto -101 -> 144
    //   248: astore 10
    //   250: aload_0
    //   251: aload_3
    //   252: invokevirtual 85	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   255: putfield 48	com/google/analytics/a/a/l:d	Lcom/google/tagmanager/a/g;
    //   258: aload 10
    //   260: athrow
    //   261: iconst_1
    //   262: istore 5
    //   264: goto -231 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   38	117	120	com/google/tagmanager/a/ae
    //   151	169	120	com/google/tagmanager/a/ae
    //   38	117	129	finally
    //   122	129	129	finally
    //   151	169	129	finally
    //   174	191	129	finally
    //   38	117	172	java/io/IOException
    //   151	169	172	java/io/IOException
    //   191	196	209	java/io/IOException
    //   191	196	222	finally
    //   131	136	235	java/io/IOException
    //   131	136	248	finally
  }

  private l(u paramu)
  {
    super(0);
    this.d = paramu.h();
  }

  public static l a()
  {
    return c;
  }

  private void g()
  {
    this.f = 0;
    this.g = 0;
  }

  public final ao b()
  {
    return a;
  }

  public final boolean c()
  {
    int k = 1;
    if ((0x1 & this.e) == k);
    while (true)
    {
      return k;
      k = 0;
    }
  }

  public final int d()
  {
    return this.f;
  }

  public final boolean e()
  {
    if ((0x2 & this.e) == 2);
    for (int k = 1; ; k = 0)
      return k;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (paramObject == this);
    while (true)
    {
      return bool1;
      if (!(paramObject instanceof l))
      {
        bool1 = super.equals(paramObject);
        continue;
      }
      l locall = (l)paramObject;
      boolean bool2;
      if (c() == locall.c())
      {
        bool2 = bool1;
        label44: if (c())
        {
          if ((!bool2) || (this.f != locall.f))
            break label123;
          bool2 = bool1;
        }
        label70: if ((!bool2) || (e() != locall.e()))
          break label129;
      }
      label129: for (boolean bool3 = bool1; ; bool3 = false)
      {
        if (!e())
          break label135;
        if ((bool3) && (this.g == locall.g))
          break;
        bool1 = false;
        break;
        bool2 = false;
        break label44;
        label123: bool2 = false;
        break label70;
      }
      label135: bool1 = bool3;
    }
  }

  public final int f()
  {
    return this.g;
  }

  public final int hashCode()
  {
    int m;
    if (this.b != 0)
      m = this.b;
    while (true)
    {
      return m;
      int k = 779 + l.class.hashCode();
      if (c())
        k = 53 * (1 + k * 37) + this.f;
      if (e())
        k = 53 * (2 + k * 37) + this.g;
      m = k * 29 + this.d.hashCode();
      this.b = m;
    }
  }

  public final boolean i()
  {
    byte b = 1;
    int k = this.h;
    if (k != -1)
      if (k != b);
    while (true)
    {
      return b;
      b = 0;
      continue;
      if (!c())
      {
        this.h = 0;
        b = 0;
        continue;
      }
      if (!e())
      {
        this.h = 0;
        b = 0;
        continue;
      }
      this.h = b;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.l
 * JD-Core Version:    0.6.0
 */