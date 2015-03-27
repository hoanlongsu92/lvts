package com.antispycell.connmonitor;

import android.graphics.drawable.Drawable;
import android.os.AsyncTask;

public final class at extends AsyncTask
{
  private Double b = null;
  private Double c = null;
  private Drawable d = null;
  private Integer e = null;
  private Integer f = null;
  private int g = 1;

  public at(IPDetails paramIPDetails, Double paramDouble1, Double paramDouble2)
  {
    this.b = paramDouble1;
    this.c = paramDouble2;
  }

  // ERROR //
  private java.lang.Boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 20	com/antispycell/connmonitor/at:a	Lcom/antispycell/connmonitor/IPDetails;
    //   4: invokevirtual 46	com/antispycell/connmonitor/IPDetails:getResources	()Landroid/content/res/Resources;
    //   7: invokevirtual 52	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   10: astore_1
    //   11: aload_0
    //   12: aload_1
    //   13: getfield 58	android/util/DisplayMetrics:density	F
    //   16: f2i
    //   17: putfield 35	com/antispycell/connmonitor/at:g	I
    //   20: aload_0
    //   21: aload_1
    //   22: getfield 61	android/util/DisplayMetrics:heightPixels	I
    //   25: iconst_4
    //   26: idiv
    //   27: invokestatic 67	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   30: putfield 31	com/antispycell/connmonitor/at:e	Ljava/lang/Integer;
    //   33: aload_0
    //   34: getfield 31	com/antispycell/connmonitor/at:e	Ljava/lang/Integer;
    //   37: invokevirtual 71	java/lang/Integer:intValue	()I
    //   40: sipush 200
    //   43: if_icmpge +13 -> 56
    //   46: aload_0
    //   47: sipush 200
    //   50: invokestatic 67	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   53: putfield 31	com/antispycell/connmonitor/at:e	Ljava/lang/Integer;
    //   56: aload_0
    //   57: aload_0
    //   58: getfield 20	com/antispycell/connmonitor/at:a	Lcom/antispycell/connmonitor/IPDetails;
    //   61: invokestatic 74	com/antispycell/connmonitor/IPDetails:a	(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;
    //   64: invokevirtual 79	android/widget/ImageView:getWidth	()I
    //   67: aload_0
    //   68: getfield 35	com/antispycell/connmonitor/at:g	I
    //   71: imul
    //   72: invokestatic 67	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   75: putfield 33	com/antispycell/connmonitor/at:f	Ljava/lang/Integer;
    //   78: aconst_null
    //   79: astore_2
    //   80: aload_0
    //   81: getfield 25	com/antispycell/connmonitor/at:b	Ljava/lang/Double;
    //   84: ifnonnull +19 -> 103
    //   87: aload_0
    //   88: getfield 27	com/antispycell/connmonitor/at:c	Ljava/lang/Double;
    //   91: ifnonnull +12 -> 103
    //   94: iconst_0
    //   95: invokestatic 84	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   98: astore 6
    //   100: aload 6
    //   102: areturn
    //   103: aload_0
    //   104: iconst_2
    //   105: putfield 35	com/antispycell/connmonitor/at:g	I
    //   108: new 86	java/net/URL
    //   111: dup
    //   112: new 88	java/lang/StringBuilder
    //   115: dup
    //   116: ldc 90
    //   118: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   121: aload_0
    //   122: getfield 25	com/antispycell/connmonitor/at:b	Ljava/lang/Double;
    //   125: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   128: ldc 99
    //   130: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_0
    //   134: getfield 27	com/antispycell/connmonitor/at:c	Ljava/lang/Double;
    //   137: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   140: ldc 104
    //   142: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_0
    //   146: getfield 33	com/antispycell/connmonitor/at:f	Ljava/lang/Integer;
    //   149: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   152: ldc 106
    //   154: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload_0
    //   158: getfield 31	com/antispycell/connmonitor/at:e	Ljava/lang/Integer;
    //   161: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   164: ldc 108
    //   166: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: aload_0
    //   170: getfield 25	com/antispycell/connmonitor/at:b	Ljava/lang/Double;
    //   173: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   176: ldc 99
    //   178: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload_0
    //   182: getfield 27	com/antispycell/connmonitor/at:c	Ljava/lang/Double;
    //   185: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   188: ldc 110
    //   190: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: aload_0
    //   194: getfield 35	com/antispycell/connmonitor/at:g	I
    //   197: invokevirtual 113	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   200: ldc 115
    //   202: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: invokespecial 120	java/net/URL:<init>	(Ljava/lang/String;)V
    //   211: astore_3
    //   212: aload_3
    //   213: invokevirtual 124	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   216: checkcast 126	java/net/HttpURLConnection
    //   219: astore 8
    //   221: aload 8
    //   223: invokevirtual 129	java/net/HttpURLConnection:connect	()V
    //   226: aload 8
    //   228: astore_2
    //   229: aload_2
    //   230: invokevirtual 133	java/net/HttpURLConnection:getContent	()Ljava/lang/Object;
    //   233: astore 7
    //   235: aload_0
    //   236: aload 7
    //   238: checkcast 135	java/io/InputStream
    //   241: ldc 137
    //   243: invokestatic 143	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   246: putfield 29	com/antispycell/connmonitor/at:d	Landroid/graphics/drawable/Drawable;
    //   249: aload_2
    //   250: invokevirtual 146	java/net/HttpURLConnection:disconnect	()V
    //   253: iconst_1
    //   254: invokestatic 84	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   257: astore 6
    //   259: goto -159 -> 100
    //   262: astore 10
    //   264: aload 10
    //   266: invokevirtual 149	java/net/MalformedURLException:printStackTrace	()V
    //   269: iconst_0
    //   270: invokestatic 84	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   273: astore 6
    //   275: goto -175 -> 100
    //   278: astore 4
    //   280: aload 4
    //   282: invokevirtual 150	java/io/IOException:printStackTrace	()V
    //   285: goto -56 -> 229
    //   288: astore 5
    //   290: aload 5
    //   292: invokevirtual 150	java/io/IOException:printStackTrace	()V
    //   295: iconst_0
    //   296: invokestatic 84	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   299: astore 6
    //   301: goto -201 -> 100
    //   304: astore 9
    //   306: aload 8
    //   308: astore_2
    //   309: aload 9
    //   311: astore 4
    //   313: goto -33 -> 280
    //
    // Exception table:
    //   from	to	target	type
    //   108	212	262	java/net/MalformedURLException
    //   212	221	278	java/io/IOException
    //   229	235	288	java/io/IOException
    //   221	226	304	java/io/IOException
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.at
 * JD-Core Version:    0.6.0
 */