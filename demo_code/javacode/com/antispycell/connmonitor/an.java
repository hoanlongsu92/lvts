package com.antispycell.connmonitor;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class an
{
  private SQLiteDatabase a;
  private bi b;
  private String[] c;

  public an(Context paramContext)
  {
    String[] arrayOfString = new String[8];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "lip";
    arrayOfString[2] = "lport";
    arrayOfString[3] = "rip";
    arrayOfString[4] = "rport";
    arrayOfString[5] = "pack";
    arrayOfString[6] = "lastSeen";
    arrayOfString[7] = "counter";
    this.c = arrayOfString;
    this.b = new bi(paramContext);
  }

  public final int a(String paramString1, int paramInt, String paramString2)
  {
    Cursor localCursor = this.a.rawQuery("select _id from connections where rip = '" + paramString1 + "' and rport = '" + paramInt + "' and pack = '" + paramString2 + "'", null);
    int i = 0;
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      i = localCursor.getInt(localCursor.getColumnIndex("_id"));
    }
    localCursor.close();
    return i;
  }

  public final File a(Context paramContext)
  {
    File localFile1 = Environment.getExternalStorageDirectory();
    Boolean localBoolean = Boolean.valueOf(by.a(paramContext));
    try
    {
      File localFile2 = new File(localFile1.getAbsolutePath() + "/NetworkConnections");
      localFile2.mkdirs();
      localFile4 = new File(localFile2, "NetworkConnections.csv");
    }
    catch (IOException localIOException2)
    {
      try
      {
        localBufferedWriter = new BufferedWriter(new FileWriter(localFile4));
        localCursor = this.a.query("connections", this.c, null, null, null, null, null);
        str1 = "";
        localCursor.moveToFirst();
        i = 0;
        if (localCursor.isAfterLast())
          localCursor.close();
      }
      catch (IOException localIOException2)
      {
        try
        {
          Cursor localCursor;
          int i;
          String str2;
          while (true)
          {
            File localFile4;
            BufferedWriter localBufferedWriter;
            localBufferedWriter.write("Record ID;Local IP;Local Port;Remote IP;Remote Port;Package:UID;Last Seen;Activity(sec.)\n");
            localBufferedWriter.write(str1);
            localBufferedWriter.close();
            localFile3 = localFile4;
            while (true)
            {
              return localFile3;
              localException = localException;
              localFile3 = null;
              continue;
              localIOException2 = localIOException2;
              localFile3 = null;
            }
            str2 = "";
            if (localCursor.getString(6) != null)
            {
              Date localDate = new Date(1000L * Long.valueOf(localCursor.getString(6)).longValue());
              java.text.DateFormat localDateFormat1 = android.text.format.DateFormat.getDateFormat(paramContext);
              java.text.DateFormat localDateFormat2 = android.text.format.DateFormat.getTimeFormat(paramContext);
              str2 = localDateFormat1.format(localDate) + " " + localDateFormat2.format(localDate);
            }
            if ((localBoolean.booleanValue()) || (i <= 9))
              break;
            str1 = str1 + "NOTE: This file is generated with the TRIAL version of NetworkConnections for Android. Therefore only the first 10 rows are exported.";
          }
          String str1 = str1 + localCursor.getLong(0) + ";" + localCursor.getString(1) + ";" + localCursor.getString(2) + ";" + localCursor.getString(3) + ";" + localCursor.getString(4) + ";" + localCursor.getString(5) + ";" + str2 + ";" + (localCursor.getInt(7) << 1) + ";\n";
          localCursor.moveToNext();
          i++;
        }
        catch (IOException localIOException1)
        {
          while (true)
          {
            localIOException1.printStackTrace();
            File localFile3 = null;
          }
        }
      }
    }
  }

  public final List a(Integer paramInteger, Boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    String str1;
    String str2;
    label69: Cursor localCursor;
    switch (paramInteger.intValue())
    {
    default:
      str1 = "counter";
      if (!paramBoolean.booleanValue())
        break;
      str2 = str1 + " desc";
      localCursor = this.a.query("connections", this.c, null, null, null, null, str2);
      localCursor.moveToFirst();
    case 1:
    case 2:
    }
    while (true)
    {
      if (localCursor.isAfterLast())
      {
        localCursor.close();
        return localArrayList;
        str1 = "lastSeen";
        break;
        str1 = "pack";
        break;
        str2 = str1 + " asc";
        break label69;
      }
      ao localao = new ao(this);
      localao.a(localCursor.getLong(0));
      localao.a(localCursor.getString(1));
      localao.b(localCursor.getString(2));
      localao.c(localCursor.getString(3));
      localao.d(localCursor.getString(4));
      localao.e(localCursor.getString(5));
      localao.f(localCursor.getString(6));
      localao.a(Integer.valueOf(localCursor.getInt(7)));
      localArrayList.add(localao);
      localCursor.moveToNext();
    }
  }

  public final List a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.a.rawQuery("select rip, rport, lastseen, counter from connections where pack='" + paramString + "' order by lastseen desc", null);
    localCursor.moveToFirst();
    while (true)
    {
      if (localCursor.isAfterLast())
      {
        localCursor.close();
        return localArrayList;
      }
      ao localao = new ao(this);
      localao.c(localCursor.getString(0));
      localao.d(localCursor.getString(1));
      localao.f(localCursor.getString(2));
      localao.a(Integer.valueOf(localCursor.getInt(3)));
      localArrayList.add(localao);
      localCursor.moveToNext();
    }
  }

  public final void a()
  {
    this.a = this.b.getWritableDatabase();
  }

  public final void a(int paramInt, long paramLong)
  {
    this.a.execSQL("update connections set lastSeen='" + paramLong + "', counter=counter+1 where _id='" + paramInt + "'");
  }

  public final void a(String paramString1, Integer paramInteger1, String paramString2, Integer paramInteger2, String paramString3, Integer paramInteger3)
  {
    this.a.execSQL("insert into connections values (NULL,'" + paramString1 + "','" + paramInteger1 + "', '" + paramString2 + "','" + paramInteger2 + "', '" + paramString3 + "', '" + paramInteger3 + "','1')");
  }

  public final List b(Integer paramInteger, Boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    String str1;
    String str2;
    label69: Cursor localCursor;
    switch (paramInteger.intValue())
    {
    default:
      str1 = "connections";
      if (!paramBoolean.booleanValue())
        break;
      str2 = str1 + " desc";
      localCursor = this.a.rawQuery("select count(_id) as num, pack, sum(counter) as connections from connections group by pack order by " + str2, null);
      localCursor.moveToFirst();
    case 1:
    case 2:
    }
    while (true)
    {
      if (localCursor.isAfterLast())
      {
        localCursor.close();
        return localArrayList;
        str1 = "num";
        break;
        str1 = "pack";
        break;
        str2 = str1 + " asc";
        break label69;
      }
      ao localao = new ao(this);
      localao.a(localCursor.getInt(0));
      localao.c(localCursor.getInt(0));
      localao.a(Integer.valueOf(localCursor.getInt(2)));
      localao.e(localCursor.getString(1));
      localArrayList.add(localao);
      localCursor.moveToNext();
    }
  }

  public final List b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.a.rawQuery("select pack, lastseen, rport from connections where rip='" + paramString + "' order by pack desc", null);
    localCursor.moveToFirst();
    while (true)
    {
      if (localCursor.isAfterLast())
      {
        localCursor.close();
        return localArrayList;
      }
      ao localao = new ao(this);
      localao.e(localCursor.getString(0));
      localao.f(localCursor.getString(1));
      localao.d(localCursor.getString(2));
      localArrayList.add(localao);
      localCursor.moveToNext();
    }
  }

  public final void b()
  {
    this.b.close();
  }

  public final void c()
  {
    this.a.execSQL("delete from connections");
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.an
 * JD-Core Version:    0.6.0
 */