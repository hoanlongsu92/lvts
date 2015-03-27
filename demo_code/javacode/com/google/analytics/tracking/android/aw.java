package com.google.analytics.tracking.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.Command;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

final class aw
  implements f
{
  private static final String a;
  private final ay b;
  private volatile o c;
  private final g d;
  private final Context e;
  private final String f;
  private long g;
  private l h;

  static
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = "hits2";
    arrayOfObject[1] = "hit_id";
    arrayOfObject[2] = "hit_time";
    arrayOfObject[3] = "hit_url";
    arrayOfObject[4] = "hit_string";
    arrayOfObject[5] = "hit_app_id";
    a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", arrayOfObject);
  }

  aw(g paramg, Context paramContext)
  {
    this(paramg, paramContext, "google_analytics_v2.db");
  }

  private aw(g paramg, Context paramContext, String paramString)
  {
    this.e = paramContext.getApplicationContext();
    this.f = paramString;
    this.d = paramg;
    this.h = new ax(this);
    this.b = new ay(this, this.e, this.f);
    this.c = new bc(new DefaultHttpClient(), this.e);
    this.g = 0L;
  }

  private SQLiteDatabase a(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase2 = this.b.getWritableDatabase();
      localSQLiteDatabase1 = localSQLiteDatabase2;
      return localSQLiteDatabase1;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        aq.d(paramString);
        SQLiteDatabase localSQLiteDatabase1 = null;
      }
    }
  }

  private static String a(Map paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.size());
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localArrayList.add(ap.a((String)localEntry.getKey()) + "=" + ap.a((String)localEntry.getValue()));
    }
    return TextUtils.join("&", localArrayList);
  }

  // ERROR //
  private List a(int paramInt)
  {
    // Byte code:
    //   0: new 108	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 179	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iload_1
    //   9: ifgt +14 -> 23
    //   12: ldc 181
    //   14: invokestatic 104	com/google/analytics/tracking/android/aq:d	(Ljava/lang/String;)V
    //   17: aload_2
    //   18: astore 7
    //   20: aload 7
    //   22: areturn
    //   23: aload_0
    //   24: ldc 183
    //   26: invokespecial 185	com/google/analytics/tracking/android/aw:a	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore_3
    //   30: aload_3
    //   31: ifnonnull +9 -> 40
    //   34: aload_2
    //   35: astore 7
    //   37: goto -17 -> 20
    //   40: iconst_1
    //   41: anewarray 39	java/lang/String
    //   44: astore 8
    //   46: aload 8
    //   48: iconst_0
    //   49: ldc 27
    //   51: aastore
    //   52: iconst_1
    //   53: anewarray 4	java/lang/Object
    //   56: astore 9
    //   58: aload 9
    //   60: iconst_0
    //   61: ldc 27
    //   63: aastore
    //   64: aload_3
    //   65: ldc 25
    //   67: aload 8
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: aconst_null
    //   73: ldc 187
    //   75: aload 9
    //   77: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   80: iload_1
    //   81: invokestatic 192	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   84: invokevirtual 198	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   87: astore 10
    //   89: aload 10
    //   91: astore 5
    //   93: aload 5
    //   95: invokeinterface 203 1 0
    //   100: ifeq +35 -> 135
    //   103: aload_2
    //   104: aload 5
    //   106: iconst_0
    //   107: invokeinterface 207 2 0
    //   112: invokestatic 211	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   115: invokeinterface 169 2 0
    //   120: pop
    //   121: aload 5
    //   123: invokeinterface 214 1 0
    //   128: istore 12
    //   130: iload 12
    //   132: ifne -29 -> 103
    //   135: aload 5
    //   137: ifnull +10 -> 147
    //   140: aload 5
    //   142: invokeinterface 217 1 0
    //   147: aload_2
    //   148: astore 7
    //   150: goto -130 -> 20
    //   153: astore 6
    //   155: aconst_null
    //   156: astore 5
    //   158: new 141	java/lang/StringBuilder
    //   161: dup
    //   162: ldc 219
    //   164: invokespecial 221	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   167: aload 6
    //   169: invokevirtual 224	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   172: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokestatic 104	com/google/analytics/tracking/android/aq:d	(Ljava/lang/String;)V
    //   181: aload 5
    //   183: ifnull -36 -> 147
    //   186: aload 5
    //   188: invokeinterface 217 1 0
    //   193: goto -46 -> 147
    //   196: astore 4
    //   198: aconst_null
    //   199: astore 5
    //   201: aload 5
    //   203: ifnull +10 -> 213
    //   206: aload 5
    //   208: invokeinterface 217 1 0
    //   213: aload 4
    //   215: athrow
    //   216: astore 4
    //   218: goto -17 -> 201
    //   221: astore 6
    //   223: goto -65 -> 158
    //
    // Exception table:
    //   from	to	target	type
    //   40	89	153	android/database/sqlite/SQLiteException
    //   40	89	196	finally
    //   93	130	216	finally
    //   158	181	216	finally
    //   93	130	221	android/database/sqlite/SQLiteException
  }

  private void a(Collection paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
      aq.d("Empty/Null collection passed to deleteHits.");
    while (true)
    {
      return;
      String[] arrayOfString = new String[paramCollection.size()];
      Iterator localIterator = paramCollection.iterator();
      int j;
      for (int i = 0; localIterator.hasNext(); i = j)
      {
        ao localao = (ao)localIterator.next();
        j = i + 1;
        arrayOfString[i] = String.valueOf(localao.b());
      }
      a(arrayOfString);
    }
  }

  private static void a(Map paramMap, Collection paramCollection)
  {
    String str = "&_v".substring(1);
    if (paramCollection != null)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        Command localCommand = (Command)localIterator.next();
        if (!"appendVersion".equals(localCommand.a()))
          continue;
        paramMap.put(str, localCommand.b());
      }
    }
  }

  private void a(String[] paramArrayOfString)
  {
    boolean bool = true;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      aq.d("Empty hitIds passed to deleteHits.");
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return;
      localSQLiteDatabase = a("Error opening database for deleteHits.");
    }
    while (localSQLiteDatabase == null);
    Object[] arrayOfObject = new Object[bool];
    arrayOfObject[0] = TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?"));
    String str = String.format("HIT_ID in (%s)", arrayOfObject);
    while (true)
    {
      try
      {
        localSQLiteDatabase.delete("hits2", str, paramArrayOfString);
        g localg = this.d;
        if (f() != 0)
          break label123;
        localg.a(bool);
      }
      catch (SQLiteException localSQLiteException)
      {
        aq.d("Error deleting hits " + paramArrayOfString);
      }
      break;
      label123: bool = false;
    }
  }

  // ERROR //
  private List e()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 108	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 179	java/util/ArrayList:<init>	()V
    //   9: astore_2
    //   10: aload_0
    //   11: ldc_w 300
    //   14: invokespecial 185	com/google/analytics/tracking/android/aw:a	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   17: astore_3
    //   18: aload_3
    //   19: ifnonnull +9 -> 28
    //   22: aload_2
    //   23: astore 8
    //   25: aload 8
    //   27: areturn
    //   28: iconst_2
    //   29: anewarray 39	java/lang/String
    //   32: astore 9
    //   34: aload 9
    //   36: iconst_0
    //   37: ldc 27
    //   39: aastore
    //   40: aload 9
    //   42: iconst_1
    //   43: ldc 29
    //   45: aastore
    //   46: iconst_1
    //   47: anewarray 4	java/lang/Object
    //   50: astore 10
    //   52: aload 10
    //   54: iconst_0
    //   55: ldc 27
    //   57: aastore
    //   58: aload_3
    //   59: ldc 25
    //   61: aload 9
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: ldc 187
    //   69: aload 10
    //   71: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   74: bipush 40
    //   76: invokestatic 192	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   79: invokevirtual 198	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   82: astore 11
    //   84: aload 11
    //   86: astore 12
    //   88: new 108	java/util/ArrayList
    //   91: dup
    //   92: invokespecial 179	java/util/ArrayList:<init>	()V
    //   95: astore 13
    //   97: aload 12
    //   99: invokeinterface 203 1 0
    //   104: ifeq +48 -> 152
    //   107: aload 13
    //   109: new 236	com/google/analytics/tracking/android/ao
    //   112: dup
    //   113: aload 12
    //   115: iconst_0
    //   116: invokeinterface 207 2 0
    //   121: aload 12
    //   123: iconst_1
    //   124: invokeinterface 207 2 0
    //   129: invokespecial 303	com/google/analytics/tracking/android/ao:<init>	(JJ)V
    //   132: invokeinterface 169 2 0
    //   137: pop
    //   138: aload 12
    //   140: invokeinterface 214 1 0
    //   145: istore 30
    //   147: iload 30
    //   149: ifne -42 -> 107
    //   152: aload 12
    //   154: ifnull +10 -> 164
    //   157: aload 12
    //   159: invokeinterface 217 1 0
    //   164: iconst_3
    //   165: anewarray 39	java/lang/String
    //   168: astore 22
    //   170: aload 22
    //   172: iconst_0
    //   173: ldc 27
    //   175: aastore
    //   176: aload 22
    //   178: iconst_1
    //   179: ldc 33
    //   181: aastore
    //   182: aload 22
    //   184: iconst_2
    //   185: ldc 31
    //   187: aastore
    //   188: iconst_1
    //   189: anewarray 4	java/lang/Object
    //   192: astore 23
    //   194: aload 23
    //   196: iconst_0
    //   197: ldc 27
    //   199: aastore
    //   200: aload_3
    //   201: ldc 25
    //   203: aload 22
    //   205: aconst_null
    //   206: aconst_null
    //   207: aconst_null
    //   208: aconst_null
    //   209: ldc 187
    //   211: aload 23
    //   213: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   216: bipush 40
    //   218: invokestatic 192	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   221: invokevirtual 198	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   224: astore 24
    //   226: aload 24
    //   228: invokeinterface 203 1 0
    //   233: ifeq +86 -> 319
    //   236: iconst_0
    //   237: istore 25
    //   239: aload 24
    //   241: checkcast 305	android/database/sqlite/SQLiteCursor
    //   244: invokevirtual 309	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   247: invokevirtual 314	android/database/CursorWindow:getNumRows	()I
    //   250: ifle +153 -> 403
    //   253: aload 13
    //   255: iload 25
    //   257: invokeinterface 318 2 0
    //   262: checkcast 236	com/google/analytics/tracking/android/ao
    //   265: aload 24
    //   267: iconst_1
    //   268: invokeinterface 321 2 0
    //   273: invokevirtual 323	com/google/analytics/tracking/android/ao:a	(Ljava/lang/String;)V
    //   276: aload 13
    //   278: iload 25
    //   280: invokeinterface 318 2 0
    //   285: checkcast 236	com/google/analytics/tracking/android/ao
    //   288: aload 24
    //   290: iconst_2
    //   291: invokeinterface 321 2 0
    //   296: invokevirtual 325	com/google/analytics/tracking/android/ao:b	(Ljava/lang/String;)V
    //   299: iload 25
    //   301: iconst_1
    //   302: iadd
    //   303: istore 27
    //   305: aload 24
    //   307: invokeinterface 214 1 0
    //   312: istore 28
    //   314: iload 28
    //   316: ifne +333 -> 649
    //   319: aload 24
    //   321: ifnull +10 -> 331
    //   324: aload 24
    //   326: invokeinterface 217 1 0
    //   331: aload 13
    //   333: astore 8
    //   335: goto -310 -> 25
    //   338: astore 5
    //   340: aload 5
    //   342: astore 6
    //   344: aconst_null
    //   345: astore 7
    //   347: aload_2
    //   348: astore 8
    //   350: new 141	java/lang/StringBuilder
    //   353: dup
    //   354: ldc 219
    //   356: invokespecial 221	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   359: aload 6
    //   361: invokevirtual 224	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   364: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   370: invokestatic 104	com/google/analytics/tracking/android/aq:d	(Ljava/lang/String;)V
    //   373: aload 7
    //   375: ifnull -350 -> 25
    //   378: aload 7
    //   380: invokeinterface 217 1 0
    //   385: goto -360 -> 25
    //   388: astore 4
    //   390: aload_1
    //   391: ifnull +9 -> 400
    //   394: aload_1
    //   395: invokeinterface 217 1 0
    //   400: aload 4
    //   402: athrow
    //   403: iconst_1
    //   404: anewarray 4	java/lang/Object
    //   407: astore 26
    //   409: aload 26
    //   411: iconst_0
    //   412: aload 13
    //   414: iload 25
    //   416: invokeinterface 318 2 0
    //   421: checkcast 236	com/google/analytics/tracking/android/ao
    //   424: invokevirtual 239	com/google/analytics/tracking/android/ao:b	()J
    //   427: invokestatic 330	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   430: aastore
    //   431: ldc_w 332
    //   434: aload 26
    //   436: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   439: invokestatic 104	com/google/analytics/tracking/android/aq:d	(Ljava/lang/String;)V
    //   442: goto -143 -> 299
    //   445: astore 15
    //   447: aload 24
    //   449: astore 12
    //   451: new 141	java/lang/StringBuilder
    //   454: dup
    //   455: ldc_w 334
    //   458: invokespecial 221	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   461: aload 15
    //   463: invokevirtual 224	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   466: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   472: invokestatic 104	com/google/analytics/tracking/android/aq:d	(Ljava/lang/String;)V
    //   475: new 108	java/util/ArrayList
    //   478: dup
    //   479: invokespecial 179	java/util/ArrayList:<init>	()V
    //   482: astore 17
    //   484: aload 13
    //   486: invokeinterface 335 1 0
    //   491: astore 18
    //   493: iconst_0
    //   494: istore 19
    //   496: aload 18
    //   498: invokeinterface 133 1 0
    //   503: ifeq +64 -> 567
    //   506: aload 18
    //   508: invokeinterface 137 1 0
    //   513: checkcast 236	com/google/analytics/tracking/android/ao
    //   516: astore 20
    //   518: aload 20
    //   520: invokevirtual 336	com/google/analytics/tracking/android/ao:a	()Ljava/lang/String;
    //   523: invokestatic 339	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   526: ifeq +11 -> 537
    //   529: iload 19
    //   531: ifne +36 -> 567
    //   534: iconst_1
    //   535: istore 19
    //   537: aload 17
    //   539: aload 20
    //   541: invokeinterface 169 2 0
    //   546: pop
    //   547: goto -51 -> 496
    //   550: astore 16
    //   552: aload 12
    //   554: ifnull +10 -> 564
    //   557: aload 12
    //   559: invokeinterface 217 1 0
    //   564: aload 16
    //   566: athrow
    //   567: aload 12
    //   569: ifnull +10 -> 579
    //   572: aload 12
    //   574: invokeinterface 217 1 0
    //   579: aload 17
    //   581: astore 8
    //   583: goto -558 -> 25
    //   586: astore 16
    //   588: aload 24
    //   590: astore 12
    //   592: goto -40 -> 552
    //   595: astore 15
    //   597: goto -146 -> 451
    //   600: astore 4
    //   602: aload 12
    //   604: astore_1
    //   605: goto -215 -> 390
    //   608: astore 4
    //   610: aload 7
    //   612: astore_1
    //   613: goto -223 -> 390
    //   616: astore 31
    //   618: aload 31
    //   620: astore 6
    //   622: aload 12
    //   624: astore 7
    //   626: aload_2
    //   627: astore 8
    //   629: goto -279 -> 350
    //   632: astore 14
    //   634: aload 14
    //   636: astore 6
    //   638: aload 12
    //   640: astore 7
    //   642: aload 13
    //   644: astore 8
    //   646: goto -296 -> 350
    //   649: iload 27
    //   651: istore 25
    //   653: goto -414 -> 239
    //
    // Exception table:
    //   from	to	target	type
    //   28	84	338	android/database/sqlite/SQLiteException
    //   28	84	388	finally
    //   226	314	445	android/database/sqlite/SQLiteException
    //   403	442	445	android/database/sqlite/SQLiteException
    //   164	226	550	finally
    //   451	547	550	finally
    //   226	314	586	finally
    //   403	442	586	finally
    //   164	226	595	android/database/sqlite/SQLiteException
    //   88	97	600	finally
    //   97	147	600	finally
    //   350	373	608	finally
    //   88	97	616	android/database/sqlite/SQLiteException
    //   97	147	632	android/database/sqlite/SQLiteException
  }

  private int f()
  {
    Cursor localCursor = null;
    int i = 0;
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for getNumStoredHits.");
    if (localSQLiteDatabase == null);
    while (true)
    {
      return i;
      try
      {
        localCursor = localSQLiteDatabase.rawQuery("SELECT COUNT(*) from hits2", null);
        if (localCursor.moveToFirst())
        {
          long l = localCursor.getLong(0);
          i = (int)l;
        }
        if (localCursor == null)
          continue;
        localCursor.close();
        continue;
      }
      catch (SQLiteException localSQLiteException)
      {
        aq.d("Error getting numStoredHits");
        if (localCursor == null)
          continue;
        localCursor.close();
        continue;
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
    }
    throw localObject;
  }

  public final void a()
  {
    boolean bool = true;
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for clearHits");
    g localg;
    if (localSQLiteDatabase != null)
    {
      if (0L != 0L)
        break label51;
      localSQLiteDatabase.delete("hits2", null, null);
      localg = this.d;
      if (f() != 0)
        break label80;
    }
    while (true)
    {
      localg.a(bool);
      return;
      label51: String[] arrayOfString = new String[bool];
      arrayOfString[0] = Long.valueOf(0L).toString();
      localSQLiteDatabase.delete("hits2", "hit_app_id = ?", arrayOfString);
      break;
      label80: bool = false;
    }
  }

  public final void a(Map paramMap, long paramLong, String paramString, Collection paramCollection)
  {
    boolean bool = true;
    long l1 = this.h.a();
    if (l1 > 86400000L + this.g)
    {
      this.g = l1;
      SQLiteDatabase localSQLiteDatabase2 = a("Error opening database for deleteStaleHits.");
      if (localSQLiteDatabase2 != null)
      {
        long l4 = this.h.a() - 2592000000L;
        String[] arrayOfString = new String[bool];
        arrayOfString[0] = Long.toString(l4);
        localSQLiteDatabase2.delete("hits2", "HIT_TIME < ?", arrayOfString);
        g localg = this.d;
        if (f() != 0)
          break label310;
        localg.a(bool);
      }
    }
    int i = 1 + (-2000 + f());
    if (i > 0)
    {
      List localList = a(i);
      aq.c("Store full, deleting " + localList.size() + " hits to make room.");
      a((String[])localList.toArray(new String[0]));
    }
    a(paramMap, paramCollection);
    SQLiteDatabase localSQLiteDatabase1 = a("Error opening database for putHit");
    ContentValues localContentValues;
    if (localSQLiteDatabase1 != null)
    {
      localContentValues = new ContentValues();
      localContentValues.put("hit_string", a(paramMap));
      localContentValues.put("hit_time", Long.valueOf(paramLong));
      if (!paramMap.containsKey("AppUID"))
        break label318;
    }
    while (true)
    {
      try
      {
        long l3 = Long.parseLong((String)paramMap.get("AppUID"));
        l2 = l3;
        localContentValues.put("hit_app_id", Long.valueOf(l2));
        if (paramString != null)
          continue;
        paramString = "http://www.google-analytics.com/collect";
        if (paramString.length() != 0)
          break label324;
        aq.d("Empty path: not sending hit");
        return;
        label310: bool = false;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
      label318: long l2 = 0L;
      continue;
      label324: localContentValues.put("hit_url", paramString);
      try
      {
        localSQLiteDatabase1.insert("hits2", null, localContentValues);
        this.d.a(false);
      }
      catch (SQLiteException localSQLiteException)
      {
        aq.d("Error storing hit");
      }
    }
  }

  public final void b()
  {
    aq.c("Dispatch running...");
    if (!this.c.a());
    while (true)
    {
      return;
      List localList = e();
      if (localList.isEmpty())
      {
        aq.c("...nothing to dispatch");
        this.d.a(true);
        continue;
      }
      int i = this.c.a(localList);
      aq.c("sent " + i + " of " + localList.size() + " hits");
      a(localList.subList(0, Math.min(i, localList.size())));
      if ((i != localList.size()) || (f() <= 0))
        continue;
      v.a().c();
    }
  }

  public final o c()
  {
    return this.c;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.aw
 * JD-Core Version:    0.6.0
 */