package com.antispycell.connmonitor;

import android.os.AsyncTask;
import android.widget.TextView;

public final class bb extends AsyncTask
{
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private String f = null;
  private String g = null;
  private String h = null;

  public bb(IPDetails paramIPDetails, TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, TextView paramTextView4, String paramString)
  {
    this.h = paramString;
    this.b = paramTextView1;
    this.c = paramTextView2;
    this.d = paramTextView3;
    this.e = paramTextView4;
  }

  // ERROR //
  private java.lang.Boolean a(android.content.Context[] paramArrayOfContext)
  {
    // Byte code:
    //   0: new 45	org/apache/http/impl/client/DefaultHttpClient
    //   3: dup
    //   4: invokespecial 46	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   7: astore_2
    //   8: new 48	org/apache/http/client/methods/HttpGet
    //   11: dup
    //   12: new 50	java/lang/StringBuilder
    //   15: dup
    //   16: ldc 52
    //   18: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   21: aload_0
    //   22: getfield 28	com/antispycell/connmonitor/bb:h	Ljava/lang/String;
    //   25: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokespecial 64	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   34: astore_3
    //   35: aload_3
    //   36: ldc 66
    //   38: ldc 68
    //   40: invokevirtual 72	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_2
    //   44: aload_3
    //   45: invokevirtual 76	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   48: invokeinterface 82 1 0
    //   53: invokestatic 87	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   56: astore 12
    //   58: aload 12
    //   60: ldc 89
    //   62: invokestatic 92	com/antispycell/connmonitor/bb:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   65: astore 13
    //   67: aload 13
    //   69: astore 6
    //   71: aload_0
    //   72: aload 12
    //   74: ldc 94
    //   76: invokestatic 96	com/antispycell/connmonitor/bb:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   79: putfield 24	com/antispycell/connmonitor/bb:f	Ljava/lang/String;
    //   82: aload_0
    //   83: aload 12
    //   85: ldc 98
    //   87: invokestatic 96	com/antispycell/connmonitor/bb:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   90: putfield 26	com/antispycell/connmonitor/bb:g	Ljava/lang/String;
    //   93: aload 12
    //   95: ldc 100
    //   97: iconst_0
    //   98: invokevirtual 106	java/lang/String:indexOf	(Ljava/lang/String;I)I
    //   101: bipush 255
    //   103: if_icmpeq +526 -> 629
    //   106: aload 12
    //   108: bipush 8
    //   110: aload 12
    //   112: ldc 100
    //   114: iconst_0
    //   115: invokevirtual 106	java/lang/String:indexOf	(Ljava/lang/String;I)I
    //   118: iadd
    //   119: invokevirtual 110	java/lang/String:substring	(I)Ljava/lang/String;
    //   122: astore 38
    //   124: aload 38
    //   126: ldc 112
    //   128: invokevirtual 115	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   131: bipush 255
    //   133: if_icmpeq +218 -> 351
    //   136: aload 38
    //   138: bipush 8
    //   140: aload 38
    //   142: ldc 112
    //   144: invokevirtual 115	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   147: iadd
    //   148: invokevirtual 110	java/lang/String:substring	(I)Ljava/lang/String;
    //   151: astore 14
    //   153: aload 14
    //   155: ldc 117
    //   157: invokevirtual 115	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   160: bipush 255
    //   162: if_icmpeq +18 -> 180
    //   165: aload 14
    //   167: iconst_0
    //   168: aload 14
    //   170: ldc 117
    //   172: invokevirtual 115	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   175: invokevirtual 120	java/lang/String:substring	(II)Ljava/lang/String;
    //   178: astore 14
    //   180: new 122	com/antispycell/connmonitor/ba
    //   183: dup
    //   184: aload_0
    //   185: getfield 19	com/antispycell/connmonitor/bb:a	Lcom/antispycell/connmonitor/IPDetails;
    //   188: aload_0
    //   189: getfield 28	com/antispycell/connmonitor/bb:h	Ljava/lang/String;
    //   192: invokespecial 125	com/antispycell/connmonitor/ba:<init>	(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/String;)V
    //   195: astore 15
    //   197: iconst_1
    //   198: anewarray 127	android/content/Context
    //   201: astore 16
    //   203: aload 16
    //   205: iconst_0
    //   206: aload_1
    //   207: iconst_0
    //   208: aaload
    //   209: aastore
    //   210: aload 15
    //   212: aload 16
    //   214: invokevirtual 130	com/antispycell/connmonitor/ba:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   217: pop
    //   218: new 132	com/antispycell/connmonitor/ay
    //   221: dup
    //   222: aload_0
    //   223: getfield 19	com/antispycell/connmonitor/bb:a	Lcom/antispycell/connmonitor/IPDetails;
    //   226: aload_0
    //   227: getfield 36	com/antispycell/connmonitor/bb:e	Landroid/widget/TextView;
    //   230: aload_0
    //   231: getfield 28	com/antispycell/connmonitor/bb:h	Ljava/lang/String;
    //   234: invokespecial 135	com/antispycell/connmonitor/ay:<init>	(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Ljava/lang/String;)V
    //   237: astore 18
    //   239: iconst_1
    //   240: anewarray 127	android/content/Context
    //   243: astore 19
    //   245: aload 19
    //   247: iconst_0
    //   248: aload_1
    //   249: iconst_0
    //   250: aaload
    //   251: aastore
    //   252: aload 18
    //   254: aload 19
    //   256: invokevirtual 136	com/antispycell/connmonitor/ay:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   259: pop
    //   260: aload 6
    //   262: ifnull +95 -> 357
    //   265: aload 6
    //   267: ldc 138
    //   269: invokevirtual 142	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   272: istore 30
    //   274: iload 30
    //   276: ifeq +81 -> 357
    //   279: aload_0
    //   280: getfield 19	com/antispycell/connmonitor/bb:a	Lcom/antispycell/connmonitor/IPDetails;
    //   283: astore 31
    //   285: aload_0
    //   286: getfield 30	com/antispycell/connmonitor/bb:b	Landroid/widget/TextView;
    //   289: astore 32
    //   291: aload_0
    //   292: getfield 32	com/antispycell/connmonitor/bb:c	Landroid/widget/TextView;
    //   295: pop
    //   296: new 144	com/antispycell/connmonitor/bc
    //   299: dup
    //   300: aload 31
    //   302: aload 32
    //   304: aload_0
    //   305: getfield 34	com/antispycell/connmonitor/bb:d	Landroid/widget/TextView;
    //   308: aload_0
    //   309: getfield 28	com/antispycell/connmonitor/bb:h	Ljava/lang/String;
    //   312: invokespecial 147	com/antispycell/connmonitor/bc:<init>	(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    //   315: astore 34
    //   317: iconst_1
    //   318: anewarray 127	android/content/Context
    //   321: astore 35
    //   323: aload 35
    //   325: iconst_0
    //   326: aload_1
    //   327: iconst_0
    //   328: aaload
    //   329: aastore
    //   330: aload 34
    //   332: aload 35
    //   334: invokevirtual 148	com/antispycell/connmonitor/bc:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   337: pop
    //   338: iconst_1
    //   339: invokestatic 154	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   342: astore 37
    //   344: aload 37
    //   346: astore 7
    //   348: aload 7
    //   350: areturn
    //   351: aconst_null
    //   352: astore 14
    //   354: goto -174 -> 180
    //   357: aload 6
    //   359: ifnull +85 -> 444
    //   362: aload 6
    //   364: iconst_0
    //   365: iconst_4
    //   366: invokevirtual 120	java/lang/String:substring	(II)Ljava/lang/String;
    //   369: ldc 156
    //   371: invokevirtual 160	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   374: istore 25
    //   376: iload 25
    //   378: ifeq +66 -> 444
    //   381: new 162	com/antispycell/connmonitor/bd
    //   384: dup
    //   385: aload_0
    //   386: getfield 19	com/antispycell/connmonitor/bb:a	Lcom/antispycell/connmonitor/IPDetails;
    //   389: aload_0
    //   390: getfield 30	com/antispycell/connmonitor/bb:b	Landroid/widget/TextView;
    //   393: aload_0
    //   394: getfield 32	com/antispycell/connmonitor/bb:c	Landroid/widget/TextView;
    //   397: aload_0
    //   398: getfield 34	com/antispycell/connmonitor/bb:d	Landroid/widget/TextView;
    //   401: aload_0
    //   402: getfield 28	com/antispycell/connmonitor/bb:h	Ljava/lang/String;
    //   405: invokespecial 165	com/antispycell/connmonitor/bd:<init>	(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    //   408: astore 26
    //   410: iconst_1
    //   411: anewarray 127	android/content/Context
    //   414: astore 27
    //   416: aload 27
    //   418: iconst_0
    //   419: aload_1
    //   420: iconst_0
    //   421: aaload
    //   422: aastore
    //   423: aload 26
    //   425: aload 27
    //   427: invokevirtual 166	com/antispycell/connmonitor/bd:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   430: pop
    //   431: iconst_1
    //   432: invokestatic 154	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   435: astore 29
    //   437: aload 29
    //   439: astore 7
    //   441: goto -93 -> 348
    //   444: aload 14
    //   446: ifnull +43 -> 489
    //   449: new 168	com/antispycell/connmonitor/be
    //   452: dup
    //   453: aload_0
    //   454: getfield 19	com/antispycell/connmonitor/bb:a	Lcom/antispycell/connmonitor/IPDetails;
    //   457: aload_0
    //   458: getfield 34	com/antispycell/connmonitor/bb:d	Landroid/widget/TextView;
    //   461: aload 14
    //   463: invokespecial 169	com/antispycell/connmonitor/be:<init>	(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Ljava/lang/String;)V
    //   466: astore 22
    //   468: iconst_1
    //   469: anewarray 127	android/content/Context
    //   472: astore 23
    //   474: aload 23
    //   476: iconst_0
    //   477: aload_1
    //   478: iconst_0
    //   479: aaload
    //   480: aastore
    //   481: aload 22
    //   483: aload 23
    //   485: invokevirtual 170	com/antispycell/connmonitor/be:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   488: pop
    //   489: aload 6
    //   491: ifnonnull +16 -> 507
    //   494: aload 12
    //   496: ldc 172
    //   498: invokestatic 92	com/antispycell/connmonitor/bb:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   501: astore 21
    //   503: aload 21
    //   505: astore 6
    //   507: aload_0
    //   508: getfield 24	com/antispycell/connmonitor/bb:f	Ljava/lang/String;
    //   511: ifnull +37 -> 548
    //   514: new 50	java/lang/StringBuilder
    //   517: dup
    //   518: aload 6
    //   520: invokestatic 175	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   523: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   526: ldc 177
    //   528: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: aload_0
    //   532: getfield 24	com/antispycell/connmonitor/bb:f	Ljava/lang/String;
    //   535: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: ldc 179
    //   540: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   543: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   546: astore 6
    //   548: aload_0
    //   549: aload 6
    //   551: putfield 24	com/antispycell/connmonitor/bb:f	Ljava/lang/String;
    //   554: iconst_1
    //   555: invokestatic 154	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   558: astore 7
    //   560: goto -212 -> 348
    //   563: astore 10
    //   565: aload 10
    //   567: astore 11
    //   569: aconst_null
    //   570: astore 6
    //   572: aload 11
    //   574: invokevirtual 182	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   577: goto -70 -> 507
    //   580: astore 8
    //   582: aload 8
    //   584: astore 9
    //   586: aconst_null
    //   587: astore 6
    //   589: aload 9
    //   591: invokevirtual 183	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   594: goto -87 -> 507
    //   597: astore 4
    //   599: aload 4
    //   601: astore 5
    //   603: aconst_null
    //   604: astore 6
    //   606: aload 5
    //   608: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   611: goto -104 -> 507
    //   614: astore 5
    //   616: goto -10 -> 606
    //   619: astore 9
    //   621: goto -32 -> 589
    //   624: astore 11
    //   626: goto -54 -> 572
    //   629: aconst_null
    //   630: astore 14
    //   632: goto -452 -> 180
    //
    // Exception table:
    //   from	to	target	type
    //   0	67	563	java/io/UnsupportedEncodingException
    //   279	344	563	java/io/UnsupportedEncodingException
    //   381	437	563	java/io/UnsupportedEncodingException
    //   0	67	580	org/apache/http/client/ClientProtocolException
    //   279	344	580	org/apache/http/client/ClientProtocolException
    //   381	437	580	org/apache/http/client/ClientProtocolException
    //   0	67	597	java/io/IOException
    //   279	344	597	java/io/IOException
    //   381	437	597	java/io/IOException
    //   71	274	614	java/io/IOException
    //   362	376	614	java/io/IOException
    //   449	503	614	java/io/IOException
    //   71	274	619	org/apache/http/client/ClientProtocolException
    //   362	376	619	org/apache/http/client/ClientProtocolException
    //   449	503	619	org/apache/http/client/ClientProtocolException
    //   71	274	624	java/io/UnsupportedEncodingException
    //   362	376	624	java/io/UnsupportedEncodingException
    //   449	503	624	java/io/UnsupportedEncodingException
  }

  private static String a(String paramString1, String paramString2)
  {
    String str1 = null;
    if (paramString1.indexOf(paramString2, 0) != -1)
    {
      String str2 = paramString1.substring(1 + (paramString1.indexOf(paramString2, 0) + paramString2.length()));
      if (str2.indexOf("\"") != -1)
        str1 = str2.substring(0, str2.indexOf("\""));
    }
    return str1;
  }

  private static String b(String paramString1, String paramString2)
  {
    String str1 = null;
    if (paramString1.indexOf(paramString2, 0) != -1)
    {
      String str2 = paramString1.substring(paramString1.indexOf(paramString2, 0) + paramString2.length());
      if (str2.indexOf("<") != -1)
        str1 = str2.substring(0, str2.indexOf("<"));
    }
    return str1;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bb
 * JD-Core Version:    0.6.0
 */