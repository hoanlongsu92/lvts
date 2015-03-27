package com.google.analytics.a.a;

import com.google.tagmanager.a.ab;
import com.google.tagmanager.a.an;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.s;
import com.google.tagmanager.a.u;

public final class b extends s
  implements g
{
  public static ao a = new c();
  private static final b c;
  private static volatile an k = null;
  private final com.google.tagmanager.a.g d;
  private int e;
  private e f;
  private int g;
  private int h;
  private byte i = -1;
  private int j = -1;

  static
  {
    b localb = new b();
    c = localb;
    localb.n();
  }

  private b()
  {
    this.d = com.google.tagmanager.a.g.a;
  }

  // ERROR //
  private b(com.google.tagmanager.a.j paramj, com.google.tagmanager.a.n paramn)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 41	com/google/tagmanager/a/s:<init>	()V
    //   4: aload_0
    //   5: bipush 255
    //   7: putfield 43	com/google/analytics/a/a/b:i	B
    //   10: aload_0
    //   11: bipush 255
    //   13: putfield 45	com/google/analytics/a/a/b:j	I
    //   16: aload_0
    //   17: invokespecial 40	com/google/analytics/a/a/b:n	()V
    //   20: invokestatic 59	com/google/tagmanager/a/g:i	()Lcom/google/tagmanager/a/i;
    //   23: astore_3
    //   24: aload_3
    //   25: invokestatic 64	com/google/tagmanager/a/l:a	(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;
    //   28: astore 4
    //   30: iconst_0
    //   31: istore 5
    //   33: iload 5
    //   35: ifne +218 -> 253
    //   38: aload_1
    //   39: invokevirtual 69	com/google/tagmanager/a/j:a	()I
    //   42: istore 13
    //   44: iload 13
    //   46: lookupswitch	default:+42->88, 0:+277->323, 8:+61->107, 16:+165->211, 24:+186->232
    //   89: aload_1
    //   90: aload 4
    //   92: aload_2
    //   93: iload 13
    //   95: invokevirtual 72	com/google/analytics/a/a/b:a	(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z
    //   98: ifne -65 -> 33
    //   101: iconst_1
    //   102: istore 5
    //   104: goto -71 -> 33
    //   107: aload_1
    //   108: invokevirtual 74	com/google/tagmanager/a/j:h	()I
    //   111: istore 14
    //   113: iload 14
    //   115: invokestatic 79	com/google/analytics/a/a/e:a	(I)Lcom/google/analytics/a/a/e;
    //   118: astore 15
    //   120: aload 15
    //   122: ifnonnull +51 -> 173
    //   125: aload 4
    //   127: iload 13
    //   129: invokevirtual 83	com/google/tagmanager/a/l:b	(I)V
    //   132: aload 4
    //   134: iload 14
    //   136: invokevirtual 83	com/google/tagmanager/a/l:b	(I)V
    //   139: goto -106 -> 33
    //   142: astore 12
    //   144: aload 12
    //   146: aload_0
    //   147: invokevirtual 86	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   150: athrow
    //   151: astore 9
    //   153: aload 4
    //   155: invokevirtual 88	com/google/tagmanager/a/l:a	()V
    //   158: aload_0
    //   159: aload_3
    //   160: invokevirtual 93	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   163: putfield 51	com/google/analytics/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   166: aload_0
    //   167: invokevirtual 96	com/google/analytics/a/a/b:t	()V
    //   170: aload 9
    //   172: athrow
    //   173: aload_0
    //   174: iconst_1
    //   175: aload_0
    //   176: getfield 98	com/google/analytics/a/a/b:e	I
    //   179: ior
    //   180: putfield 98	com/google/analytics/a/a/b:e	I
    //   183: aload_0
    //   184: aload 15
    //   186: putfield 100	com/google/analytics/a/a/b:f	Lcom/google/analytics/a/a/e;
    //   189: goto -156 -> 33
    //   192: astore 8
    //   194: new 54	com/google/tagmanager/a/ae
    //   197: dup
    //   198: aload 8
    //   200: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   203: invokespecial 107	com/google/tagmanager/a/ae:<init>	(Ljava/lang/String;)V
    //   206: aload_0
    //   207: invokevirtual 86	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   210: athrow
    //   211: aload_0
    //   212: iconst_2
    //   213: aload_0
    //   214: getfield 98	com/google/analytics/a/a/b:e	I
    //   217: ior
    //   218: putfield 98	com/google/analytics/a/a/b:e	I
    //   221: aload_0
    //   222: aload_1
    //   223: invokevirtual 109	com/google/tagmanager/a/j:d	()I
    //   226: putfield 111	com/google/analytics/a/a/b:g	I
    //   229: goto -196 -> 33
    //   232: aload_0
    //   233: iconst_4
    //   234: aload_0
    //   235: getfield 98	com/google/analytics/a/a/b:e	I
    //   238: ior
    //   239: putfield 98	com/google/analytics/a/a/b:e	I
    //   242: aload_0
    //   243: aload_1
    //   244: invokevirtual 109	com/google/tagmanager/a/j:d	()I
    //   247: putfield 113	com/google/analytics/a/a/b:h	I
    //   250: goto -217 -> 33
    //   253: aload 4
    //   255: invokevirtual 88	com/google/tagmanager/a/l:a	()V
    //   258: aload_0
    //   259: aload_3
    //   260: invokevirtual 93	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   263: putfield 51	com/google/analytics/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   266: aload_0
    //   267: invokevirtual 96	com/google/analytics/a/a/b:t	()V
    //   270: return
    //   271: astore 7
    //   273: aload_0
    //   274: aload_3
    //   275: invokevirtual 93	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   278: putfield 51	com/google/analytics/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   281: goto -15 -> 266
    //   284: astore 6
    //   286: aload_0
    //   287: aload_3
    //   288: invokevirtual 93	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   291: putfield 51	com/google/analytics/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   294: aload 6
    //   296: athrow
    //   297: astore 11
    //   299: aload_0
    //   300: aload_3
    //   301: invokevirtual 93	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   304: putfield 51	com/google/analytics/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   307: goto -141 -> 166
    //   310: astore 10
    //   312: aload_0
    //   313: aload_3
    //   314: invokevirtual 93	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   317: putfield 51	com/google/analytics/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   320: aload 10
    //   322: athrow
    //   323: iconst_1
    //   324: istore 5
    //   326: goto -293 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   38	139	142	com/google/tagmanager/a/ae
    //   173	189	142	com/google/tagmanager/a/ae
    //   211	250	142	com/google/tagmanager/a/ae
    //   38	139	151	finally
    //   144	151	151	finally
    //   173	189	151	finally
    //   194	211	151	finally
    //   211	250	151	finally
    //   38	139	192	java/io/IOException
    //   173	189	192	java/io/IOException
    //   211	250	192	java/io/IOException
    //   253	258	271	java/io/IOException
    //   253	258	284	finally
    //   153	158	297	java/io/IOException
    //   153	158	310	finally
  }

  private b(u paramu)
  {
    super(0);
    this.d = paramu.h();
  }

  public static b a()
  {
    return c;
  }

  public static d a(b paramb)
  {
    return d.f().a(paramb);
  }

  private void n()
  {
    this.f = e.a;
    this.g = 0;
    this.h = 0;
  }

  public final ao b()
  {
    return a;
  }

  public final boolean c()
  {
    int m = 1;
    if ((0x1 & this.e) == m);
    while (true)
    {
      return m;
      m = 0;
    }
  }

  public final e d()
  {
    return this.f;
  }

  public final boolean e()
  {
    if ((0x2 & this.e) == 2);
    for (int m = 1; ; m = 0)
      return m;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (paramObject == this);
    while (true)
    {
      return bool1;
      if (!(paramObject instanceof b))
      {
        bool1 = super.equals(paramObject);
        continue;
      }
      b localb = (b)paramObject;
      boolean bool2;
      label44: label70: boolean bool3;
      if (c() == localb.c())
      {
        bool2 = bool1;
        if (c())
        {
          if ((!bool2) || (this.f != localb.f))
            break label168;
          bool2 = bool1;
        }
        if ((!bool2) || (e() != localb.e()))
          break label174;
        bool3 = bool1;
        label89: if (e())
        {
          if ((!bool3) || (this.g != localb.g))
            break label180;
          bool3 = bool1;
        }
        label115: if ((!bool3) || (g() != localb.g()))
          break label186;
      }
      label168: label174: label180: label186: for (boolean bool4 = bool1; ; bool4 = false)
      {
        if (!g())
          break label192;
        if ((bool4) && (this.h == localb.h))
          break;
        bool1 = false;
        break;
        bool2 = false;
        break label44;
        bool2 = false;
        break label70;
        bool3 = false;
        break label89;
        bool3 = false;
        break label115;
      }
      label192: bool1 = bool4;
    }
  }

  public final int f()
  {
    return this.g;
  }

  public final boolean g()
  {
    if ((0x4 & this.e) == 4);
    for (int m = 1; ; m = 0)
      return m;
  }

  public final int h()
  {
    return this.h;
  }

  public final int hashCode()
  {
    int n;
    if (this.b != 0)
      n = this.b;
    while (true)
    {
      return n;
      int m = 779 + b.class.hashCode();
      if (c())
        m = 53 * (1 + m * 37) + ab.a(this.f);
      if (e())
        m = 53 * (2 + m * 37) + this.g;
      if (g())
        m = 53 * (3 + m * 37) + this.h;
      n = m * 29 + this.d.hashCode();
      this.b = n;
    }
  }

  public final boolean i()
  {
    byte b = 1;
    int m = this.i;
    if (m != -1)
      if (m != b);
    while (true)
    {
      return b;
      b = 0;
      continue;
      this.i = b;
    }
  }

  public final d j()
  {
    return d.f().a(this);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.b
 * JD-Core Version:    0.6.0
 */