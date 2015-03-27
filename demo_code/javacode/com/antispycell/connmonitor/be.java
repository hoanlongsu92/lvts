package com.antispycell.connmonitor;

import android.os.AsyncTask;
import android.widget.TextView;

public final class be extends AsyncTask
{
  private TextView b;
  private String c = null;
  private String d = null;

  public be(IPDetails paramIPDetails, TextView paramTextView, String paramString)
  {
    this.c = paramString;
    this.b = paramTextView;
  }

  // ERROR //
  private java.lang.Boolean a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 33	org/apache/http/impl/client/DefaultHttpClient
    //   5: dup
    //   6: invokespecial 34	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   9: astore_2
    //   10: new 36	org/apache/http/client/methods/HttpGet
    //   13: dup
    //   14: new 38	java/lang/StringBuilder
    //   17: dup
    //   18: ldc 40
    //   20: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: getfield 20	com/antispycell/connmonitor/be:c	Ljava/lang/String;
    //   27: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokespecial 52	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   36: astore_3
    //   37: aload_3
    //   38: ldc 54
    //   40: ldc 56
    //   42: invokevirtual 60	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   45: aload_2
    //   46: aload_3
    //   47: invokevirtual 64	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   50: invokeinterface 70 1 0
    //   55: invokestatic 75	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   58: astore 21
    //   60: aload 21
    //   62: ldc 77
    //   64: invokestatic 80	com/antispycell/connmonitor/be:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   67: astore 22
    //   69: aload 22
    //   71: astore 8
    //   73: aload 8
    //   75: ifnull +14 -> 89
    //   78: aload 8
    //   80: ldc 82
    //   82: ldc 84
    //   84: invokevirtual 89	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   87: astore 8
    //   89: aload 21
    //   91: ldc 91
    //   93: invokestatic 80	com/antispycell/connmonitor/be:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   96: astore 26
    //   98: aload 26
    //   100: astore 7
    //   102: aload 21
    //   104: ldc 93
    //   106: invokestatic 80	com/antispycell/connmonitor/be:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   109: astore 30
    //   111: aload 30
    //   113: astore 6
    //   115: aload 21
    //   117: ldc 95
    //   119: invokestatic 80	com/antispycell/connmonitor/be:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   122: astore 34
    //   124: aload 34
    //   126: astore 9
    //   128: aload 21
    //   130: ldc 97
    //   132: invokestatic 80	com/antispycell/connmonitor/be:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   135: astore 35
    //   137: aload 35
    //   139: astore_1
    //   140: aload 8
    //   142: ifnull +239 -> 381
    //   145: new 38	java/lang/StringBuilder
    //   148: dup
    //   149: aload 8
    //   151: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   154: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   157: ldc 103
    //   159: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: astore 10
    //   167: new 38	java/lang/StringBuilder
    //   170: dup
    //   171: aload 10
    //   173: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   176: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   179: astore 11
    //   181: aload 7
    //   183: ifnull +205 -> 388
    //   186: new 38	java/lang/StringBuilder
    //   189: dup
    //   190: aload 7
    //   192: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   195: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   198: ldc 105
    //   200: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: astore 12
    //   208: aload 11
    //   210: aload 12
    //   212: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: astore 13
    //   217: aload 6
    //   219: ifnull +176 -> 395
    //   222: new 38	java/lang/StringBuilder
    //   225: dup
    //   226: aload 6
    //   228: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   231: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   234: ldc 107
    //   236: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: astore 14
    //   244: aload 13
    //   246: aload 14
    //   248: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: astore 15
    //   253: aload 9
    //   255: ifnull +147 -> 402
    //   258: new 38	java/lang/StringBuilder
    //   261: dup
    //   262: aload 9
    //   264: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   267: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   270: ldc 103
    //   272: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: astore 16
    //   280: aload_0
    //   281: aload 15
    //   283: aload 16
    //   285: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: aload_1
    //   289: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: putfield 22	com/antispycell/connmonitor/be:d	Ljava/lang/String;
    //   298: iconst_1
    //   299: invokestatic 112	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   302: areturn
    //   303: astore 19
    //   305: aload 19
    //   307: astore 20
    //   309: aconst_null
    //   310: astore 6
    //   312: aconst_null
    //   313: astore 7
    //   315: aconst_null
    //   316: astore 8
    //   318: aconst_null
    //   319: astore 9
    //   321: aload 20
    //   323: invokevirtual 115	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   326: goto -186 -> 140
    //   329: astore 17
    //   331: aload 17
    //   333: astore 18
    //   335: aconst_null
    //   336: astore 6
    //   338: aconst_null
    //   339: astore 7
    //   341: aconst_null
    //   342: astore 8
    //   344: aconst_null
    //   345: astore 9
    //   347: aload 18
    //   349: invokevirtual 116	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   352: goto -212 -> 140
    //   355: astore 4
    //   357: aload 4
    //   359: astore 5
    //   361: aconst_null
    //   362: astore 6
    //   364: aconst_null
    //   365: astore 7
    //   367: aconst_null
    //   368: astore 8
    //   370: aconst_null
    //   371: astore 9
    //   373: aload 5
    //   375: invokevirtual 117	java/io/IOException:printStackTrace	()V
    //   378: goto -238 -> 140
    //   381: ldc 84
    //   383: astore 10
    //   385: goto -218 -> 167
    //   388: ldc 84
    //   390: astore 12
    //   392: goto -184 -> 208
    //   395: ldc 84
    //   397: astore 14
    //   399: goto -155 -> 244
    //   402: ldc 84
    //   404: astore 16
    //   406: goto -126 -> 280
    //   409: astore 25
    //   411: aload 25
    //   413: astore 5
    //   415: aconst_null
    //   416: astore 6
    //   418: aconst_null
    //   419: astore 7
    //   421: aconst_null
    //   422: astore 9
    //   424: goto -51 -> 373
    //   427: astore 29
    //   429: aload 29
    //   431: astore 5
    //   433: aconst_null
    //   434: astore 6
    //   436: aconst_null
    //   437: astore 9
    //   439: goto -66 -> 373
    //   442: astore 33
    //   444: aload 33
    //   446: astore 5
    //   448: aconst_null
    //   449: astore 9
    //   451: goto -78 -> 373
    //   454: astore 5
    //   456: goto -83 -> 373
    //   459: astore 24
    //   461: aload 24
    //   463: astore 18
    //   465: aconst_null
    //   466: astore 6
    //   468: aconst_null
    //   469: astore 7
    //   471: aconst_null
    //   472: astore 9
    //   474: goto -127 -> 347
    //   477: astore 28
    //   479: aload 28
    //   481: astore 18
    //   483: aconst_null
    //   484: astore 6
    //   486: aconst_null
    //   487: astore 9
    //   489: goto -142 -> 347
    //   492: astore 32
    //   494: aload 32
    //   496: astore 18
    //   498: aconst_null
    //   499: astore 9
    //   501: goto -154 -> 347
    //   504: astore 18
    //   506: goto -159 -> 347
    //   509: astore 23
    //   511: aload 23
    //   513: astore 20
    //   515: aconst_null
    //   516: astore 6
    //   518: aconst_null
    //   519: astore 7
    //   521: aconst_null
    //   522: astore 9
    //   524: goto -203 -> 321
    //   527: astore 27
    //   529: aload 27
    //   531: astore 20
    //   533: aconst_null
    //   534: astore 6
    //   536: aconst_null
    //   537: astore 9
    //   539: goto -218 -> 321
    //   542: astore 31
    //   544: aload 31
    //   546: astore 20
    //   548: aconst_null
    //   549: astore 9
    //   551: goto -230 -> 321
    //   554: astore 20
    //   556: goto -235 -> 321
    //
    // Exception table:
    //   from	to	target	type
    //   2	69	303	java/io/UnsupportedEncodingException
    //   2	69	329	org/apache/http/client/ClientProtocolException
    //   2	69	355	java/io/IOException
    //   78	98	409	java/io/IOException
    //   102	111	427	java/io/IOException
    //   115	124	442	java/io/IOException
    //   128	137	454	java/io/IOException
    //   78	98	459	org/apache/http/client/ClientProtocolException
    //   102	111	477	org/apache/http/client/ClientProtocolException
    //   115	124	492	org/apache/http/client/ClientProtocolException
    //   128	137	504	org/apache/http/client/ClientProtocolException
    //   78	98	509	java/io/UnsupportedEncodingException
    //   102	111	527	java/io/UnsupportedEncodingException
    //   115	124	542	java/io/UnsupportedEncodingException
    //   128	137	554	java/io/UnsupportedEncodingException
  }

  private static String a(String paramString1, String paramString2)
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
 * Qualified Name:     com.antispycell.connmonitor.be
 * JD-Core Version:    0.6.0
 */