package com.google.analytics.tracking.android;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

final class ay extends SQLiteOpenHelper
{
  private boolean b;
  private long c = 0L;

  ay(aw paramaw, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
  }

  // ERROR //
  private static boolean a(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_1
    //   3: anewarray 24	java/lang/String
    //   6: astore 8
    //   8: aload 8
    //   10: iconst_0
    //   11: ldc 26
    //   13: aastore
    //   14: iconst_1
    //   15: anewarray 24	java/lang/String
    //   18: astore 9
    //   20: aload 9
    //   22: iconst_0
    //   23: aload_0
    //   24: aastore
    //   25: aload_1
    //   26: ldc 28
    //   28: aload 8
    //   30: ldc 30
    //   32: aload 9
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: invokevirtual 36	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   40: astore 10
    //   42: aload 10
    //   44: invokeinterface 42 1 0
    //   49: istore 12
    //   51: iload 12
    //   53: istore 7
    //   55: aload 10
    //   57: ifnull +10 -> 67
    //   60: aload 10
    //   62: invokeinterface 46 1 0
    //   67: iload 7
    //   69: ireturn
    //   70: astore 4
    //   72: aconst_null
    //   73: astore 5
    //   75: new 48	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 50
    //   81: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload_0
    //   85: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokestatic 66	com/google/analytics/tracking/android/aq:d	(Ljava/lang/String;)V
    //   94: aload 5
    //   96: ifnull +10 -> 106
    //   99: aload 5
    //   101: invokeinterface 46 1 0
    //   106: iconst_0
    //   107: istore 7
    //   109: goto -42 -> 67
    //   112: astore_3
    //   113: aload_2
    //   114: ifnull +9 -> 123
    //   117: aload_2
    //   118: invokeinterface 46 1 0
    //   123: aload_3
    //   124: athrow
    //   125: astore_3
    //   126: aload 10
    //   128: astore_2
    //   129: goto -16 -> 113
    //   132: astore 6
    //   134: aload 5
    //   136: astore_2
    //   137: aload 6
    //   139: astore_3
    //   140: goto -27 -> 113
    //   143: astore 11
    //   145: aload 10
    //   147: astore 5
    //   149: goto -74 -> 75
    //
    // Exception table:
    //   from	to	target	type
    //   2	42	70	android/database/sqlite/SQLiteException
    //   2	42	112	finally
    //   42	51	125	finally
    //   75	94	132	finally
    //   42	51	143	android/database/sqlite/SQLiteException
  }

  public final SQLiteDatabase getWritableDatabase()
  {
    if ((this.b) && (3600000L + this.c > aw.a(this.a).a()))
      throw new SQLiteException("Database creation failed");
    Object localObject = null;
    this.b = true;
    this.c = aw.a(this.a).a();
    try
    {
      SQLiteDatabase localSQLiteDatabase = super.getWritableDatabase();
      localObject = localSQLiteDatabase;
      if (localObject == null)
        localObject = super.getWritableDatabase();
      this.b = false;
      return localObject;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
        aw.c(this.a).getDatabasePath(aw.b(this.a)).delete();
    }
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    String str = paramSQLiteDatabase.getPath();
    if (t.a() >= 9)
    {
      File localFile = new File(str);
      localFile.setReadable(false, false);
      localFile.setWritable(false, false);
      localFile.setReadable(true, true);
      localFile.setWritable(true, true);
    }
  }

  public final void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    int i = 0;
    Cursor localCursor2;
    if (Build.VERSION.SDK_INT < 15)
      localCursor2 = paramSQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
    while (true)
    {
      try
      {
        localCursor2.moveToFirst();
        localCursor2.close();
        if (!a("hits2", paramSQLiteDatabase))
        {
          paramSQLiteDatabase.execSQL(aw.d());
          return;
        }
      }
      finally
      {
        localCursor2.close();
      }
      Cursor localCursor1 = paramSQLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", null);
      HashSet localHashSet = new HashSet();
      try
      {
        String[] arrayOfString = localCursor1.getColumnNames();
        for (int j = 0; j < arrayOfString.length; j++)
          localHashSet.add(arrayOfString[j]);
        localCursor1.close();
        if ((!localHashSet.remove("hit_id")) || (!localHashSet.remove("hit_url")) || (!localHashSet.remove("hit_string")) || (!localHashSet.remove("hit_time")))
          throw new SQLiteException("Database column missing");
      }
      finally
      {
        localCursor1.close();
      }
      if (!localHashSet.remove("hit_app_id"))
        i = 1;
      if (!localHashSet.isEmpty())
        throw new SQLiteException("Database has extra columns");
      if (i == 0)
        continue;
      paramSQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
    }
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ay
 * JD-Core Version:    0.6.0
 */