.class public final Lcom/antispycell/connmonitor/bi;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySQLiteHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 30
    const-string v0, "connections.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    const-string v0, "create table connections (_id integer primary key autoincrement,lip text not null,lport integer not null,rip text not null,rport integer not null,pack text not null,lastSeen integer not null,counter integer not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "CREATE INDEX unique_connection ON connections (rip, rport, pack);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method
