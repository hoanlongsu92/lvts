package com.antispycell.connmonitor;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class bi extends SQLiteOpenHelper
{
  public bi(Context paramContext)
  {
    super(paramContext, "connections.db", null, 2);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table connections (_id integer primary key autoincrement,lip text not null,lport integer not null,rip text not null,rport integer not null,pack text not null,lastSeen integer not null,counter integer not null);");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("CREATE INDEX unique_connection ON connections (rip, rport, pack);");
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bi
 * JD-Core Version:    0.6.0
 */