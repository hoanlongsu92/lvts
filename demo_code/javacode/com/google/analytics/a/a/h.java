package com.google.analytics.a.a;

import com.google.tagmanager.a.ab;
import com.google.tagmanager.a.an;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.g;
import com.google.tagmanager.a.s;
import com.google.tagmanager.a.u;
import java.util.Collections;
import java.util.List;

public final class h extends s
  implements k
{
  public static ao a = new i();
  private static final h c;
  private static volatile an m = null;
  private final g d;
  private int e;
  private List f;
  private int g;
  private int h;
  private boolean i;
  private boolean j;
  private byte k = -1;
  private int l = -1;

  static
  {
    h localh = new h();
    c = localh;
    localh.o();
  }

  private h()
  {
    this.d = g.a;
  }

  // ERROR //
  private h(com.google.tagmanager.a.j paramj, com.google.tagmanager.a.n paramn)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: invokespecial 44	com/google/tagmanager/a/s:<init>	()V
    //   6: aload_0
    //   7: bipush 255
    //   9: putfield 46	com/google/analytics/a/a/h:k	B
    //   12: aload_0
    //   13: bipush 255
    //   15: putfield 48	com/google/analytics/a/a/h:l	I
    //   18: aload_0
    //   19: invokespecial 43	com/google/analytics/a/a/h:o	()V
    //   22: invokestatic 62	com/google/tagmanager/a/g:i	()Lcom/google/tagmanager/a/i;
    //   25: astore 4
    //   27: aload 4
    //   29: invokestatic 67	com/google/tagmanager/a/l:a	(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;
    //   32: astore 5
    //   34: iconst_0
    //   35: istore 6
    //   37: iload_3
    //   38: ifne +374 -> 412
    //   41: aload_1
    //   42: invokevirtual 72	com/google/tagmanager/a/j:a	()I
    //   45: istore 14
    //   47: iload 14
    //   49: lookupswitch	default:+67->116, 0:+457->506, 8:+85->134, 16:+158->207, 24:+198->247, 26:+243->292, 32:+321->370, 48:+342->391
    //   117: aload_1
    //   118: aload 5
    //   120: aload_2
    //   121: iload 14
    //   123: invokevirtual 75	com/google/analytics/a/a/h:a	(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z
    //   126: ifne -89 -> 37
    //   129: iconst_1
    //   130: istore_3
    //   131: goto -94 -> 37
    //   134: aload_0
    //   135: bipush 8
    //   137: aload_0
    //   138: getfield 77	com/google/analytics/a/a/h:e	I
    //   141: ior
    //   142: putfield 77	com/google/analytics/a/a/h:e	I
    //   145: aload_0
    //   146: aload_1
    //   147: invokevirtual 80	com/google/tagmanager/a/j:e	()Z
    //   150: putfield 82	com/google/analytics/a/a/h:j	Z
    //   153: goto -116 -> 37
    //   156: astore 13
    //   158: aload 13
    //   160: aload_0
    //   161: invokevirtual 85	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   164: athrow
    //   165: astore 10
    //   167: iload 6
    //   169: iconst_1
    //   170: iand
    //   171: iconst_1
    //   172: if_icmpne +14 -> 186
    //   175: aload_0
    //   176: aload_0
    //   177: getfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   180: invokestatic 93	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   183: putfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   186: aload 5
    //   188: invokevirtual 95	com/google/tagmanager/a/l:a	()V
    //   191: aload_0
    //   192: aload 4
    //   194: invokevirtual 100	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   197: putfield 54	com/google/analytics/a/a/h:d	Lcom/google/tagmanager/a/g;
    //   200: aload_0
    //   201: invokevirtual 103	com/google/analytics/a/a/h:t	()V
    //   204: aload 10
    //   206: athrow
    //   207: aload_0
    //   208: iconst_1
    //   209: aload_0
    //   210: getfield 77	com/google/analytics/a/a/h:e	I
    //   213: ior
    //   214: putfield 77	com/google/analytics/a/a/h:e	I
    //   217: aload_0
    //   218: aload_1
    //   219: invokevirtual 105	com/google/tagmanager/a/j:d	()I
    //   222: putfield 107	com/google/analytics/a/a/h:g	I
    //   225: goto -188 -> 37
    //   228: astore 9
    //   230: new 57	com/google/tagmanager/a/ae
    //   233: dup
    //   234: aload 9
    //   236: invokevirtual 111	java/io/IOException:getMessage	()Ljava/lang/String;
    //   239: invokespecial 114	com/google/tagmanager/a/ae:<init>	(Ljava/lang/String;)V
    //   242: aload_0
    //   243: invokevirtual 85	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   246: athrow
    //   247: iload 6
    //   249: iconst_1
    //   250: iand
    //   251: iconst_1
    //   252: if_icmpeq +20 -> 272
    //   255: aload_0
    //   256: new 116	java/util/ArrayList
    //   259: dup
    //   260: invokespecial 117	java/util/ArrayList:<init>	()V
    //   263: putfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   266: iload 6
    //   268: iconst_1
    //   269: ior
    //   270: istore 6
    //   272: aload_0
    //   273: getfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   276: aload_1
    //   277: invokevirtual 105	com/google/tagmanager/a/j:d	()I
    //   280: invokestatic 123	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   283: invokeinterface 129 2 0
    //   288: pop
    //   289: goto -252 -> 37
    //   292: aload_1
    //   293: aload_1
    //   294: invokevirtual 131	com/google/tagmanager/a/j:i	()I
    //   297: invokevirtual 135	com/google/tagmanager/a/j:b	(I)I
    //   300: istore 15
    //   302: iload 6
    //   304: iconst_1
    //   305: iand
    //   306: iconst_1
    //   307: if_icmpeq +27 -> 334
    //   310: aload_1
    //   311: invokevirtual 137	com/google/tagmanager/a/j:m	()I
    //   314: ifle +20 -> 334
    //   317: aload_0
    //   318: new 116	java/util/ArrayList
    //   321: dup
    //   322: invokespecial 117	java/util/ArrayList:<init>	()V
    //   325: putfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   328: iload 6
    //   330: iconst_1
    //   331: ior
    //   332: istore 6
    //   334: aload_1
    //   335: invokevirtual 137	com/google/tagmanager/a/j:m	()I
    //   338: ifle +23 -> 361
    //   341: aload_0
    //   342: getfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   345: aload_1
    //   346: invokevirtual 105	com/google/tagmanager/a/j:d	()I
    //   349: invokestatic 123	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   352: invokeinterface 129 2 0
    //   357: pop
    //   358: goto -24 -> 334
    //   361: aload_1
    //   362: iload 15
    //   364: invokevirtual 140	com/google/tagmanager/a/j:c	(I)V
    //   367: goto -330 -> 37
    //   370: aload_0
    //   371: iconst_2
    //   372: aload_0
    //   373: getfield 77	com/google/analytics/a/a/h:e	I
    //   376: ior
    //   377: putfield 77	com/google/analytics/a/a/h:e	I
    //   380: aload_0
    //   381: aload_1
    //   382: invokevirtual 105	com/google/tagmanager/a/j:d	()I
    //   385: putfield 142	com/google/analytics/a/a/h:h	I
    //   388: goto -351 -> 37
    //   391: aload_0
    //   392: iconst_4
    //   393: aload_0
    //   394: getfield 77	com/google/analytics/a/a/h:e	I
    //   397: ior
    //   398: putfield 77	com/google/analytics/a/a/h:e	I
    //   401: aload_0
    //   402: aload_1
    //   403: invokevirtual 80	com/google/tagmanager/a/j:e	()Z
    //   406: putfield 144	com/google/analytics/a/a/h:i	Z
    //   409: goto -372 -> 37
    //   412: iload 6
    //   414: iconst_1
    //   415: iand
    //   416: iconst_1
    //   417: if_icmpne +14 -> 431
    //   420: aload_0
    //   421: aload_0
    //   422: getfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   425: invokestatic 93	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   428: putfield 87	com/google/analytics/a/a/h:f	Ljava/util/List;
    //   431: aload 5
    //   433: invokevirtual 95	com/google/tagmanager/a/l:a	()V
    //   436: aload_0
    //   437: aload 4
    //   439: invokevirtual 100	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   442: putfield 54	com/google/analytics/a/a/h:d	Lcom/google/tagmanager/a/g;
    //   445: aload_0
    //   446: invokevirtual 103	com/google/analytics/a/a/h:t	()V
    //   449: return
    //   450: astore 8
    //   452: aload_0
    //   453: aload 4
    //   455: invokevirtual 100	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   458: putfield 54	com/google/analytics/a/a/h:d	Lcom/google/tagmanager/a/g;
    //   461: goto -16 -> 445
    //   464: astore 7
    //   466: aload_0
    //   467: aload 4
    //   469: invokevirtual 100	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   472: putfield 54	com/google/analytics/a/a/h:d	Lcom/google/tagmanager/a/g;
    //   475: aload 7
    //   477: athrow
    //   478: astore 12
    //   480: aload_0
    //   481: aload 4
    //   483: invokevirtual 100	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   486: putfield 54	com/google/analytics/a/a/h:d	Lcom/google/tagmanager/a/g;
    //   489: goto -289 -> 200
    //   492: astore 11
    //   494: aload_0
    //   495: aload 4
    //   497: invokevirtual 100	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   500: putfield 54	com/google/analytics/a/a/h:d	Lcom/google/tagmanager/a/g;
    //   503: aload 11
    //   505: athrow
    //   506: iconst_1
    //   507: istore_3
    //   508: goto -471 -> 37
    //
    // Exception table:
    //   from	to	target	type
    //   41	153	156	com/google/tagmanager/a/ae
    //   207	225	156	com/google/tagmanager/a/ae
    //   255	409	156	com/google/tagmanager/a/ae
    //   41	153	165	finally
    //   158	165	165	finally
    //   207	225	165	finally
    //   230	247	165	finally
    //   255	409	165	finally
    //   41	153	228	java/io/IOException
    //   207	225	228	java/io/IOException
    //   255	409	228	java/io/IOException
    //   431	436	450	java/io/IOException
    //   431	436	464	finally
    //   186	191	478	java/io/IOException
    //   186	191	492	finally
  }

  private h(u paramu)
  {
    super(0);
    this.d = paramu.h();
  }

  public static h a()
  {
    return c;
  }

  private void o()
  {
    this.f = Collections.emptyList();
    this.g = 0;
    this.h = 0;
    this.i = false;
    this.j = false;
  }

  public final ao b()
  {
    return a;
  }

  public final boolean c()
  {
    int n = 1;
    if ((0x1 & this.e) == n);
    while (true)
    {
      return n;
      n = 0;
    }
  }

  public final int d()
  {
    return this.g;
  }

  public final boolean e()
  {
    if ((0x2 & this.e) == 2);
    for (int n = 1; ; n = 0)
      return n;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (paramObject == this);
    while (true)
    {
      return bool1;
      if (!(paramObject instanceof h))
      {
        bool1 = super.equals(paramObject);
        continue;
      }
      h localh = (h)paramObject;
      boolean bool2;
      label49: boolean bool3;
      label68: label94: boolean bool4;
      label113: boolean bool5;
      if (this.f.equals(localh.f))
      {
        bool2 = bool1;
        if ((!bool2) || (c() != localh.c()))
          break label237;
        bool3 = bool1;
        if (c())
        {
          if ((!bool3) || (this.g != localh.g))
            break label243;
          bool3 = bool1;
        }
        if ((!bool3) || (e() != localh.e()))
          break label249;
        bool4 = bool1;
        if (e())
        {
          if ((!bool4) || (this.h != localh.h))
            break label255;
          bool4 = bool1;
        }
        label139: if ((!bool4) || (g() != localh.g()))
          break label261;
        bool5 = bool1;
        label158: if (g())
        {
          if ((!bool5) || (this.i != localh.i))
            break label267;
          bool5 = bool1;
        }
        label184: if ((!bool5) || (j() != localh.j()))
          break label273;
      }
      label261: label267: label273: for (boolean bool6 = bool1; ; bool6 = false)
      {
        if (!j())
          break label279;
        if ((bool6) && (this.j == localh.j))
          break;
        bool1 = false;
        break;
        bool2 = false;
        break label49;
        label237: bool3 = false;
        break label68;
        label243: bool3 = false;
        break label94;
        label249: bool4 = false;
        break label113;
        label255: bool4 = false;
        break label139;
        bool5 = false;
        break label158;
        bool5 = false;
        break label184;
      }
      label279: bool1 = bool6;
    }
  }

  public final int f()
  {
    return this.h;
  }

  public final boolean g()
  {
    if ((0x4 & this.e) == 4);
    for (int n = 1; ; n = 0)
      return n;
  }

  public final boolean h()
  {
    return this.i;
  }

  public final int hashCode()
  {
    int i1;
    if (this.b != 0)
      i1 = this.b;
    while (true)
    {
      return i1;
      int n = 779 + h.class.hashCode();
      if (this.f.size() > 0)
        n = 53 * (3 + n * 37) + this.f.hashCode();
      if (c())
        n = 53 * (2 + n * 37) + this.g;
      if (e())
        n = 53 * (4 + n * 37) + this.h;
      if (g())
        n = 53 * (6 + n * 37) + ab.a(this.i);
      if (j())
        n = 53 * (1 + n * 37) + ab.a(this.j);
      i1 = n * 29 + this.d.hashCode();
      this.b = i1;
    }
  }

  public final boolean i()
  {
    byte b = 1;
    int n = this.k;
    if (n != -1)
      if (n != b);
    while (true)
    {
      return b;
      b = 0;
      continue;
      if (!c())
      {
        this.k = 0;
        b = 0;
        continue;
      }
      this.k = b;
    }
  }

  public final boolean j()
  {
    if ((0x8 & this.e) == 8);
    for (int n = 1; ; n = 0)
      return n;
  }

  public final boolean n()
  {
    return this.j;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.h
 * JD-Core Version:    0.6.0
 */