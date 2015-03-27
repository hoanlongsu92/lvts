package com.google.analytics.b.a.a;

import com.google.tagmanager.a.ab;
import com.google.tagmanager.a.an;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.v;
import com.google.tagmanager.a.w;
import java.util.Collections;
import java.util.List;

public final class b extends w
  implements i
{
  public static ao a = new c();
  private static final b c;
  private static volatile an t = null;
  private final com.google.tagmanager.a.g d;
  private int e;
  private g f;
  private Object g;
  private List h;
  private List i;
  private List j;
  private Object k;
  private Object l;
  private long m;
  private boolean n;
  private List o;
  private List p;
  private boolean q;
  private byte r = -1;
  private int s = -1;

  static
  {
    b localb = new b();
    c = localb;
    localb.B();
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
    //   1: invokespecial 53	com/google/tagmanager/a/w:<init>	()V
    //   4: aload_0
    //   5: bipush 255
    //   7: putfield 55	com/google/analytics/b/a/a/b:r	B
    //   10: aload_0
    //   11: bipush 255
    //   13: putfield 57	com/google/analytics/b/a/a/b:s	I
    //   16: aload_0
    //   17: invokespecial 52	com/google/analytics/b/a/a/b:B	()V
    //   20: iconst_0
    //   21: istore_3
    //   22: invokestatic 71	com/google/tagmanager/a/g:i	()Lcom/google/tagmanager/a/i;
    //   25: astore 4
    //   27: aload 4
    //   29: invokestatic 76	com/google/tagmanager/a/l:a	(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;
    //   32: astore 5
    //   34: iconst_0
    //   35: istore 6
    //   37: iload 6
    //   39: ifne +867 -> 906
    //   42: aload_1
    //   43: invokevirtual 81	com/google/tagmanager/a/j:a	()I
    //   46: istore 14
    //   48: iload 14
    //   50: lookupswitch	default:+122->172, 0:+1033->1083, 8:+141->191, 18:+348->398, 26:+373->423, 34:+416->466, 42:+462->512, 50:+508->558, 58:+533->583, 64:+559->609, 72:+581->631, 80:+603->653, 82:+681->731, 90:+785->835, 96:+834->884
    //   173: aload_1
    //   174: aload 5
    //   176: aload_2
    //   177: iload 14
    //   179: invokevirtual 84	com/google/analytics/b/a/a/b:a	(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z
    //   182: ifne -145 -> 37
    //   185: iconst_1
    //   186: istore 6
    //   188: goto -151 -> 37
    //   191: aload_1
    //   192: invokevirtual 86	com/google/tagmanager/a/j:h	()I
    //   195: istore 29
    //   197: iload 29
    //   199: invokestatic 91	com/google/analytics/b/a/a/g:a	(I)Lcom/google/analytics/b/a/a/g;
    //   202: astore 30
    //   204: aload 30
    //   206: ifnonnull +154 -> 360
    //   209: aload 5
    //   211: iload 14
    //   213: invokevirtual 95	com/google/tagmanager/a/l:b	(I)V
    //   216: aload 5
    //   218: iload 29
    //   220: invokevirtual 95	com/google/tagmanager/a/l:b	(I)V
    //   223: goto -186 -> 37
    //   226: astore 13
    //   228: aload 13
    //   230: aload_0
    //   231: invokevirtual 98	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   234: athrow
    //   235: astore 10
    //   237: iload_3
    //   238: iconst_4
    //   239: iand
    //   240: iconst_4
    //   241: if_icmpne +14 -> 255
    //   244: aload_0
    //   245: aload_0
    //   246: getfield 100	com/google/analytics/b/a/a/b:h	Ljava/util/List;
    //   249: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   252: putfield 100	com/google/analytics/b/a/a/b:h	Ljava/util/List;
    //   255: iload_3
    //   256: bipush 8
    //   258: iand
    //   259: bipush 8
    //   261: if_icmpne +14 -> 275
    //   264: aload_0
    //   265: aload_0
    //   266: getfield 108	com/google/analytics/b/a/a/b:i	Ljava/util/List;
    //   269: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   272: putfield 108	com/google/analytics/b/a/a/b:i	Ljava/util/List;
    //   275: iload_3
    //   276: bipush 16
    //   278: iand
    //   279: bipush 16
    //   281: if_icmpne +14 -> 295
    //   284: aload_0
    //   285: aload_0
    //   286: getfield 110	com/google/analytics/b/a/a/b:j	Ljava/util/List;
    //   289: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   292: putfield 110	com/google/analytics/b/a/a/b:j	Ljava/util/List;
    //   295: iload_3
    //   296: sipush 1024
    //   299: iand
    //   300: sipush 1024
    //   303: if_icmpne +14 -> 317
    //   306: aload_0
    //   307: aload_0
    //   308: getfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   311: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   314: putfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   317: iload_3
    //   318: sipush 512
    //   321: iand
    //   322: sipush 512
    //   325: if_icmpne +14 -> 339
    //   328: aload_0
    //   329: aload_0
    //   330: getfield 114	com/google/analytics/b/a/a/b:o	Ljava/util/List;
    //   333: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   336: putfield 114	com/google/analytics/b/a/a/b:o	Ljava/util/List;
    //   339: aload 5
    //   341: invokevirtual 116	com/google/tagmanager/a/l:a	()V
    //   344: aload_0
    //   345: aload 4
    //   347: invokevirtual 121	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   350: putfield 63	com/google/analytics/b/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   353: aload_0
    //   354: invokevirtual 123	com/google/analytics/b/a/a/b:t	()V
    //   357: aload 10
    //   359: athrow
    //   360: aload_0
    //   361: iconst_1
    //   362: aload_0
    //   363: getfield 125	com/google/analytics/b/a/a/b:e	I
    //   366: ior
    //   367: putfield 125	com/google/analytics/b/a/a/b:e	I
    //   370: aload_0
    //   371: aload 30
    //   373: putfield 127	com/google/analytics/b/a/a/b:f	Lcom/google/analytics/b/a/a/g;
    //   376: goto -339 -> 37
    //   379: astore 9
    //   381: new 66	com/google/tagmanager/a/ae
    //   384: dup
    //   385: aload 9
    //   387: invokevirtual 131	java/io/IOException:getMessage	()Ljava/lang/String;
    //   390: invokespecial 134	com/google/tagmanager/a/ae:<init>	(Ljava/lang/String;)V
    //   393: aload_0
    //   394: invokevirtual 98	com/google/tagmanager/a/ae:a	(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    //   397: athrow
    //   398: aload_1
    //   399: invokevirtual 136	com/google/tagmanager/a/j:g	()Lcom/google/tagmanager/a/g;
    //   402: astore 28
    //   404: aload_0
    //   405: iconst_2
    //   406: aload_0
    //   407: getfield 125	com/google/analytics/b/a/a/b:e	I
    //   410: ior
    //   411: putfield 125	com/google/analytics/b/a/a/b:e	I
    //   414: aload_0
    //   415: aload 28
    //   417: putfield 138	com/google/analytics/b/a/a/b:g	Ljava/lang/Object;
    //   420: goto -383 -> 37
    //   423: iload_3
    //   424: iconst_4
    //   425: iand
    //   426: iconst_4
    //   427: if_icmpeq +18 -> 445
    //   430: aload_0
    //   431: new 140	java/util/ArrayList
    //   434: dup
    //   435: invokespecial 141	java/util/ArrayList:<init>	()V
    //   438: putfield 100	com/google/analytics/b/a/a/b:h	Ljava/util/List;
    //   441: iload_3
    //   442: iconst_4
    //   443: ior
    //   444: istore_3
    //   445: aload_0
    //   446: getfield 100	com/google/analytics/b/a/a/b:h	Ljava/util/List;
    //   449: aload_1
    //   450: getstatic 45	com/google/analytics/b/a/a/b:a	Lcom/google/tagmanager/a/ao;
    //   453: aload_2
    //   454: invokevirtual 144	com/google/tagmanager/a/j:a	(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;
    //   457: invokeinterface 150 2 0
    //   462: pop
    //   463: goto -426 -> 37
    //   466: iload_3
    //   467: bipush 8
    //   469: iand
    //   470: bipush 8
    //   472: if_icmpeq +19 -> 491
    //   475: aload_0
    //   476: new 140	java/util/ArrayList
    //   479: dup
    //   480: invokespecial 141	java/util/ArrayList:<init>	()V
    //   483: putfield 108	com/google/analytics/b/a/a/b:i	Ljava/util/List;
    //   486: iload_3
    //   487: bipush 8
    //   489: ior
    //   490: istore_3
    //   491: aload_0
    //   492: getfield 108	com/google/analytics/b/a/a/b:i	Ljava/util/List;
    //   495: aload_1
    //   496: getstatic 45	com/google/analytics/b/a/a/b:a	Lcom/google/tagmanager/a/ao;
    //   499: aload_2
    //   500: invokevirtual 144	com/google/tagmanager/a/j:a	(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;
    //   503: invokeinterface 150 2 0
    //   508: pop
    //   509: goto -472 -> 37
    //   512: iload_3
    //   513: bipush 16
    //   515: iand
    //   516: bipush 16
    //   518: if_icmpeq +19 -> 537
    //   521: aload_0
    //   522: new 140	java/util/ArrayList
    //   525: dup
    //   526: invokespecial 141	java/util/ArrayList:<init>	()V
    //   529: putfield 110	com/google/analytics/b/a/a/b:j	Ljava/util/List;
    //   532: iload_3
    //   533: bipush 16
    //   535: ior
    //   536: istore_3
    //   537: aload_0
    //   538: getfield 110	com/google/analytics/b/a/a/b:j	Ljava/util/List;
    //   541: aload_1
    //   542: getstatic 45	com/google/analytics/b/a/a/b:a	Lcom/google/tagmanager/a/ao;
    //   545: aload_2
    //   546: invokevirtual 144	com/google/tagmanager/a/j:a	(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;
    //   549: invokeinterface 150 2 0
    //   554: pop
    //   555: goto -518 -> 37
    //   558: aload_1
    //   559: invokevirtual 136	com/google/tagmanager/a/j:g	()Lcom/google/tagmanager/a/g;
    //   562: astore 24
    //   564: aload_0
    //   565: iconst_4
    //   566: aload_0
    //   567: getfield 125	com/google/analytics/b/a/a/b:e	I
    //   570: ior
    //   571: putfield 125	com/google/analytics/b/a/a/b:e	I
    //   574: aload_0
    //   575: aload 24
    //   577: putfield 152	com/google/analytics/b/a/a/b:k	Ljava/lang/Object;
    //   580: goto -543 -> 37
    //   583: aload_1
    //   584: invokevirtual 136	com/google/tagmanager/a/j:g	()Lcom/google/tagmanager/a/g;
    //   587: astore 23
    //   589: aload_0
    //   590: bipush 8
    //   592: aload_0
    //   593: getfield 125	com/google/analytics/b/a/a/b:e	I
    //   596: ior
    //   597: putfield 125	com/google/analytics/b/a/a/b:e	I
    //   600: aload_0
    //   601: aload 23
    //   603: putfield 154	com/google/analytics/b/a/a/b:l	Ljava/lang/Object;
    //   606: goto -569 -> 37
    //   609: aload_0
    //   610: bipush 16
    //   612: aload_0
    //   613: getfield 125	com/google/analytics/b/a/a/b:e	I
    //   616: ior
    //   617: putfield 125	com/google/analytics/b/a/a/b:e	I
    //   620: aload_0
    //   621: aload_1
    //   622: invokevirtual 157	com/google/tagmanager/a/j:c	()J
    //   625: putfield 159	com/google/analytics/b/a/a/b:m	J
    //   628: goto -591 -> 37
    //   631: aload_0
    //   632: bipush 64
    //   634: aload_0
    //   635: getfield 125	com/google/analytics/b/a/a/b:e	I
    //   638: ior
    //   639: putfield 125	com/google/analytics/b/a/a/b:e	I
    //   642: aload_0
    //   643: aload_1
    //   644: invokevirtual 162	com/google/tagmanager/a/j:e	()Z
    //   647: putfield 164	com/google/analytics/b/a/a/b:q	Z
    //   650: goto -613 -> 37
    //   653: aload_1
    //   654: invokevirtual 86	com/google/tagmanager/a/j:h	()I
    //   657: istore 20
    //   659: iload 20
    //   661: invokestatic 169	com/google/analytics/b/a/a/e:a	(I)Lcom/google/analytics/b/a/a/e;
    //   664: astore 21
    //   666: aload 21
    //   668: ifnonnull +20 -> 688
    //   671: aload 5
    //   673: iload 14
    //   675: invokevirtual 95	com/google/tagmanager/a/l:b	(I)V
    //   678: aload 5
    //   680: iload 20
    //   682: invokevirtual 95	com/google/tagmanager/a/l:b	(I)V
    //   685: goto -648 -> 37
    //   688: iload_3
    //   689: sipush 1024
    //   692: iand
    //   693: sipush 1024
    //   696: if_icmpeq +20 -> 716
    //   699: aload_0
    //   700: new 140	java/util/ArrayList
    //   703: dup
    //   704: invokespecial 141	java/util/ArrayList:<init>	()V
    //   707: putfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   710: iload_3
    //   711: sipush 1024
    //   714: ior
    //   715: istore_3
    //   716: aload_0
    //   717: getfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   720: aload 21
    //   722: invokeinterface 150 2 0
    //   727: pop
    //   728: goto -691 -> 37
    //   731: aload_1
    //   732: aload_1
    //   733: invokevirtual 171	com/google/tagmanager/a/j:i	()I
    //   736: invokevirtual 174	com/google/tagmanager/a/j:b	(I)I
    //   739: istore 16
    //   741: aload_1
    //   742: invokevirtual 176	com/google/tagmanager/a/j:m	()I
    //   745: ifle +81 -> 826
    //   748: aload_1
    //   749: invokevirtual 86	com/google/tagmanager/a/j:h	()I
    //   752: istore 17
    //   754: iload 17
    //   756: invokestatic 169	com/google/analytics/b/a/a/e:a	(I)Lcom/google/analytics/b/a/a/e;
    //   759: astore 18
    //   761: aload 18
    //   763: ifnonnull +20 -> 783
    //   766: aload 5
    //   768: iload 14
    //   770: invokevirtual 95	com/google/tagmanager/a/l:b	(I)V
    //   773: aload 5
    //   775: iload 17
    //   777: invokevirtual 95	com/google/tagmanager/a/l:b	(I)V
    //   780: goto -39 -> 741
    //   783: iload_3
    //   784: sipush 1024
    //   787: iand
    //   788: sipush 1024
    //   791: if_icmpeq +20 -> 811
    //   794: aload_0
    //   795: new 140	java/util/ArrayList
    //   798: dup
    //   799: invokespecial 141	java/util/ArrayList:<init>	()V
    //   802: putfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   805: iload_3
    //   806: sipush 1024
    //   809: ior
    //   810: istore_3
    //   811: aload_0
    //   812: getfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   815: aload 18
    //   817: invokeinterface 150 2 0
    //   822: pop
    //   823: goto -82 -> 741
    //   826: aload_1
    //   827: iload 16
    //   829: invokevirtual 178	com/google/tagmanager/a/j:c	(I)V
    //   832: goto -795 -> 37
    //   835: iload_3
    //   836: sipush 512
    //   839: iand
    //   840: sipush 512
    //   843: if_icmpeq +20 -> 863
    //   846: aload_0
    //   847: new 140	java/util/ArrayList
    //   850: dup
    //   851: invokespecial 141	java/util/ArrayList:<init>	()V
    //   854: putfield 114	com/google/analytics/b/a/a/b:o	Ljava/util/List;
    //   857: iload_3
    //   858: sipush 512
    //   861: ior
    //   862: istore_3
    //   863: aload_0
    //   864: getfield 114	com/google/analytics/b/a/a/b:o	Ljava/util/List;
    //   867: aload_1
    //   868: getstatic 45	com/google/analytics/b/a/a/b:a	Lcom/google/tagmanager/a/ao;
    //   871: aload_2
    //   872: invokevirtual 144	com/google/tagmanager/a/j:a	(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;
    //   875: invokeinterface 150 2 0
    //   880: pop
    //   881: goto -844 -> 37
    //   884: aload_0
    //   885: bipush 32
    //   887: aload_0
    //   888: getfield 125	com/google/analytics/b/a/a/b:e	I
    //   891: ior
    //   892: putfield 125	com/google/analytics/b/a/a/b:e	I
    //   895: aload_0
    //   896: aload_1
    //   897: invokevirtual 162	com/google/tagmanager/a/j:e	()Z
    //   900: putfield 180	com/google/analytics/b/a/a/b:n	Z
    //   903: goto -866 -> 37
    //   906: iload_3
    //   907: iconst_4
    //   908: iand
    //   909: iconst_4
    //   910: if_icmpne +14 -> 924
    //   913: aload_0
    //   914: aload_0
    //   915: getfield 100	com/google/analytics/b/a/a/b:h	Ljava/util/List;
    //   918: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   921: putfield 100	com/google/analytics/b/a/a/b:h	Ljava/util/List;
    //   924: iload_3
    //   925: bipush 8
    //   927: iand
    //   928: bipush 8
    //   930: if_icmpne +14 -> 944
    //   933: aload_0
    //   934: aload_0
    //   935: getfield 108	com/google/analytics/b/a/a/b:i	Ljava/util/List;
    //   938: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   941: putfield 108	com/google/analytics/b/a/a/b:i	Ljava/util/List;
    //   944: iload_3
    //   945: bipush 16
    //   947: iand
    //   948: bipush 16
    //   950: if_icmpne +14 -> 964
    //   953: aload_0
    //   954: aload_0
    //   955: getfield 110	com/google/analytics/b/a/a/b:j	Ljava/util/List;
    //   958: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   961: putfield 110	com/google/analytics/b/a/a/b:j	Ljava/util/List;
    //   964: iload_3
    //   965: sipush 1024
    //   968: iand
    //   969: sipush 1024
    //   972: if_icmpne +14 -> 986
    //   975: aload_0
    //   976: aload_0
    //   977: getfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   980: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   983: putfield 112	com/google/analytics/b/a/a/b:p	Ljava/util/List;
    //   986: iload_3
    //   987: sipush 512
    //   990: iand
    //   991: sipush 512
    //   994: if_icmpne +14 -> 1008
    //   997: aload_0
    //   998: aload_0
    //   999: getfield 114	com/google/analytics/b/a/a/b:o	Ljava/util/List;
    //   1002: invokestatic 106	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1005: putfield 114	com/google/analytics/b/a/a/b:o	Ljava/util/List;
    //   1008: aload 5
    //   1010: invokevirtual 116	com/google/tagmanager/a/l:a	()V
    //   1013: aload_0
    //   1014: aload 4
    //   1016: invokevirtual 121	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   1019: putfield 63	com/google/analytics/b/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   1022: aload_0
    //   1023: invokevirtual 123	com/google/analytics/b/a/a/b:t	()V
    //   1026: return
    //   1027: astore 8
    //   1029: aload_0
    //   1030: aload 4
    //   1032: invokevirtual 121	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   1035: putfield 63	com/google/analytics/b/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   1038: goto -16 -> 1022
    //   1041: astore 7
    //   1043: aload_0
    //   1044: aload 4
    //   1046: invokevirtual 121	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   1049: putfield 63	com/google/analytics/b/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   1052: aload 7
    //   1054: athrow
    //   1055: astore 12
    //   1057: aload_0
    //   1058: aload 4
    //   1060: invokevirtual 121	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   1063: putfield 63	com/google/analytics/b/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   1066: goto -713 -> 353
    //   1069: astore 11
    //   1071: aload_0
    //   1072: aload 4
    //   1074: invokevirtual 121	com/google/tagmanager/a/i:a	()Lcom/google/tagmanager/a/g;
    //   1077: putfield 63	com/google/analytics/b/a/a/b:d	Lcom/google/tagmanager/a/g;
    //   1080: aload 11
    //   1082: athrow
    //   1083: iconst_1
    //   1084: istore 6
    //   1086: goto -1049 -> 37
    //
    // Exception table:
    //   from	to	target	type
    //   42	223	226	com/google/tagmanager/a/ae
    //   360	376	226	com/google/tagmanager/a/ae
    //   398	903	226	com/google/tagmanager/a/ae
    //   42	223	235	finally
    //   228	235	235	finally
    //   360	376	235	finally
    //   381	398	235	finally
    //   398	903	235	finally
    //   42	223	379	java/io/IOException
    //   360	376	379	java/io/IOException
    //   398	903	379	java/io/IOException
    //   1008	1013	1027	java/io/IOException
    //   1008	1013	1041	finally
    //   339	344	1055	java/io/IOException
    //   339	344	1069	finally
  }

  private b(v paramv)
  {
    super(paramv);
    this.d = paramv.h();
  }

  private int A()
  {
    return this.o.size();
  }

  private void B()
  {
    this.f = g.a;
    this.g = "";
    this.h = Collections.emptyList();
    this.i = Collections.emptyList();
    this.j = Collections.emptyList();
    this.k = "";
    this.l = "";
    this.m = 0L;
    this.n = false;
    this.o = Collections.emptyList();
    this.p = Collections.emptyList();
    this.q = false;
  }

  public static b a()
  {
    return c;
  }

  public static d r()
  {
    return d.g();
  }

  private String u()
  {
    Object localObject1 = this.g;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.tagmanager.a.g localg = (com.google.tagmanager.a.g)localObject1;
      str = localg.f();
      if (!localg.g())
        continue;
      this.g = str;
    }
  }

  private int v()
  {
    return this.h.size();
  }

  private int w()
  {
    return this.i.size();
  }

  private int x()
  {
    return this.j.size();
  }

  private String y()
  {
    Object localObject1 = this.k;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.tagmanager.a.g localg = (com.google.tagmanager.a.g)localObject1;
      str = localg.f();
      if (!localg.g())
        continue;
      this.k = str;
    }
  }

  private String z()
  {
    Object localObject1 = this.l;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      com.google.tagmanager.a.g localg = (com.google.tagmanager.a.g)localObject1;
      str = localg.f();
      if (!localg.g())
        continue;
      this.l = str;
    }
  }

  public final ao b()
  {
    return a;
  }

  public final boolean c()
  {
    int i1 = 1;
    if ((0x1 & this.e) == i1);
    while (true)
    {
      return i1;
      i1 = 0;
    }
  }

  public final g d()
  {
    return this.f;
  }

  public final boolean e()
  {
    if ((0x2 & this.e) == 2);
    for (int i1 = 1; ; i1 = 0)
      return i1;
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
      label89: label118: boolean bool4;
      label142: boolean bool5;
      label166: boolean bool6;
      label190: boolean bool7;
      label209: label238: boolean bool8;
      label257: label286: boolean bool9;
      label305: label332: boolean bool10;
      label351: label377: boolean bool11;
      label401: boolean bool12;
      if (c() == localb.c())
      {
        bool2 = bool1;
        if (c())
        {
          if ((!bool2) || (this.f != localb.f))
            break label478;
          bool2 = bool1;
        }
        if ((!bool2) || (e() != localb.e()))
          break label484;
        bool3 = bool1;
        if (e())
        {
          if ((!bool3) || (!u().equals(localb.u())))
            break label490;
          bool3 = bool1;
        }
        if ((!bool3) || (!this.h.equals(localb.h)))
          break label496;
        bool4 = bool1;
        if ((!bool4) || (!this.i.equals(localb.i)))
          break label502;
        bool5 = bool1;
        if ((!bool5) || (!this.j.equals(localb.j)))
          break label508;
        bool6 = bool1;
        if ((!bool6) || (f() != localb.f()))
          break label514;
        bool7 = bool1;
        if (f())
        {
          if ((!bool7) || (!y().equals(localb.y())))
            break label520;
          bool7 = bool1;
        }
        if ((!bool7) || (g() != localb.g()))
          break label526;
        bool8 = bool1;
        if (g())
        {
          if ((!bool8) || (!z().equals(localb.z())))
            break label532;
          bool8 = bool1;
        }
        if ((!bool8) || (h() != localb.h()))
          break label538;
        bool9 = bool1;
        if (h())
        {
          if ((!bool9) || (this.m != localb.m))
            break label544;
          bool9 = bool1;
        }
        if ((!bool9) || (n() != localb.n()))
          break label550;
        bool10 = bool1;
        if (n())
        {
          if ((!bool10) || (this.n != localb.n))
            break label556;
          bool10 = bool1;
        }
        if ((!bool10) || (!this.o.equals(localb.o)))
          break label562;
        bool11 = bool1;
        if ((!bool11) || (!this.p.equals(localb.p)))
          break label568;
        bool12 = bool1;
        label425: if ((!bool12) || (p() != localb.p()))
          break label574;
      }
      label514: label520: label526: label532: label538: label544: label550: label556: label562: label568: label574: for (boolean bool13 = bool1; ; bool13 = false)
      {
        if (!p())
          break label580;
        if ((bool13) && (this.q == localb.q))
          break;
        bool1 = false;
        break;
        bool2 = false;
        break label44;
        label478: bool2 = false;
        break label70;
        label484: bool3 = false;
        break label89;
        label490: bool3 = false;
        break label118;
        label496: bool4 = false;
        break label142;
        label502: bool5 = false;
        break label166;
        label508: bool6 = false;
        break label190;
        bool7 = false;
        break label209;
        bool7 = false;
        break label238;
        bool8 = false;
        break label257;
        bool8 = false;
        break label286;
        bool9 = false;
        break label305;
        bool9 = false;
        break label332;
        bool10 = false;
        break label351;
        bool10 = false;
        break label377;
        bool11 = false;
        break label401;
        bool12 = false;
        break label425;
      }
      label580: bool1 = bool13;
    }
  }

  public final boolean f()
  {
    if ((0x4 & this.e) == 4);
    for (int i1 = 1; ; i1 = 0)
      return i1;
  }

  public final boolean g()
  {
    if ((0x8 & this.e) == 8);
    for (int i1 = 1; ; i1 = 0)
      return i1;
  }

  public final boolean h()
  {
    if ((0x10 & this.e) == 16);
    for (int i1 = 1; ; i1 = 0)
      return i1;
  }

  public final int hashCode()
  {
    int i2;
    if (this.b != 0)
      i2 = this.b;
    while (true)
    {
      return i2;
      int i1 = 779 + b.class.hashCode();
      if (c())
        i1 = 53 * (1 + i1 * 37) + ab.a(this.f);
      if (e())
        i1 = 53 * (2 + i1 * 37) + u().hashCode();
      if (v() > 0)
        i1 = 53 * (3 + i1 * 37) + this.h.hashCode();
      if (w() > 0)
        i1 = 53 * (4 + i1 * 37) + this.i.hashCode();
      if (x() > 0)
        i1 = 53 * (5 + i1 * 37) + this.j.hashCode();
      if (f())
        i1 = 53 * (6 + i1 * 37) + y().hashCode();
      if (g())
        i1 = 53 * (7 + i1 * 37) + z().hashCode();
      if (h())
        i1 = 53 * (8 + i1 * 37) + ab.a(this.m);
      if (n())
        i1 = 53 * (12 + i1 * 37) + ab.a(this.n);
      if (A() > 0)
        i1 = 53 * (11 + i1 * 37) + this.o.hashCode();
      if (this.p.size() > 0)
        i1 = 53 * (10 + i1 * 37) + ab.a(this.p);
      if (p())
        i1 = 53 * (9 + i1 * 37) + ab.a(this.q);
      i2 = i1 * 29 + this.d.hashCode();
      this.b = i2;
    }
  }

  public final boolean i()
  {
    int i1 = 0;
    int i2 = this.r;
    if (i2 != -1)
      if (i2 == 1)
        i1 = 1;
    while (true)
    {
      return i1;
      if (!c())
      {
        this.r = 0;
        continue;
      }
      for (int i3 = 0; ; i3++)
      {
        if (i3 >= v())
          break label80;
        if (((b)this.h.get(i3)).i())
          continue;
        this.r = 0;
        break;
      }
      label80: for (int i4 = 0; ; i4++)
      {
        if (i4 >= w())
          break label126;
        if (((b)this.i.get(i4)).i())
          continue;
        this.r = 0;
        break;
      }
      label126: for (int i5 = 0; ; i5++)
      {
        if (i5 >= x())
          break label172;
        if (((b)this.j.get(i5)).i())
          continue;
        this.r = 0;
        break;
      }
      label172: for (int i6 = 0; ; i6++)
      {
        if (i6 >= A())
          break label218;
        if (((b)this.o.get(i6)).i())
          continue;
        this.r = 0;
        break;
      }
      label218: if (!s())
      {
        this.r = 0;
        continue;
      }
      this.r = 1;
      i1 = 1;
    }
  }

  public final long j()
  {
    return this.m;
  }

  public final boolean n()
  {
    if ((0x20 & this.e) == 32);
    for (int i1 = 1; ; i1 = 0)
      return i1;
  }

  public final boolean o()
  {
    return this.n;
  }

  public final boolean p()
  {
    if ((0x40 & this.e) == 64);
    for (int i1 = 1; ; i1 = 0)
      return i1;
  }

  public final boolean q()
  {
    return this.q;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.b.a.a.b
 * JD-Core Version:    0.6.0
 */