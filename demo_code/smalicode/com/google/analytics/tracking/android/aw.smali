.class final Lcom/google/analytics/tracking/android/aw;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/f;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/analytics/tracking/android/ay;

.field private volatile c:Lcom/google/analytics/tracking/android/o;

.field private final d:Lcom/google/analytics/tracking/android/g;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/google/analytics/tracking/android/l;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 60
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hits2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/aw;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/g;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    const-string v0, "google_analytics_v2.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/aw;-><init>(Lcom/google/analytics/tracking/android/g;Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private constructor <init>(Lcom/google/analytics/tracking/android/g;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/aw;->e:Landroid/content/Context;

    .line 110
    iput-object p3, p0, Lcom/google/analytics/tracking/android/aw;->f:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/google/analytics/tracking/android/aw;->d:Lcom/google/analytics/tracking/android/g;

    .line 112
    new-instance v0, Lcom/google/analytics/tracking/android/ax;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/ax;-><init>(Lcom/google/analytics/tracking/android/aw;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/aw;->h:Lcom/google/analytics/tracking/android/l;

    .line 118
    new-instance v0, Lcom/google/analytics/tracking/android/ay;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/aw;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/aw;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/ay;-><init>(Lcom/google/analytics/tracking/android/aw;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/aw;->b:Lcom/google/analytics/tracking/android/ay;

    .line 119
    new-instance v0, Lcom/google/analytics/tracking/android/bc;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/aw;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/bc;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/aw;->c:Lcom/google/analytics/tracking/android/o;

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/aw;->g:J

    .line 123
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->b:Lcom/google/analytics/tracking/android/ay;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ay;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 570
    :goto_6
    return-object v0

    .line 567
    :catch_7
    move-exception v0

    invoke-static {p1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/aw;)Lcom/google/analytics/tracking/android/l;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->h:Lcom/google/analytics/tracking/android/l;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 261
    :cond_4c
    const-string v0, "&"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .registers 15
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 272
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 273
    if-gtz p1, :cond_f

    .line 274
    const-string v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    move-object v0, v9

    .line 304
    :goto_e
    return-object v0

    .line 277
    :cond_f
    const-string v0, "Error opening database for peekHitIds."

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 278
    if-nez v0, :cond_19

    move-object v0, v9

    .line 279
    goto :goto_e

    .line 284
    :cond_19
    :try_start_19
    const-string v1, "hits2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "hit_id"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3c} :catch_5c

    move-result-object v1

    .line 292
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 294
    :cond_43
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_52} :catch_84

    move-result v0

    if-nez v0, :cond_43

    .line 300
    :cond_55
    if-eqz v1, :cond_5a

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5a
    :goto_5a
    move-object v0, v9

    .line 304
    goto :goto_e

    .line 297
    :catch_5c
    move-exception v0

    move-object v1, v10

    .line 298
    :goto_5e
    :try_start_5e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5e .. :try_end_74} :catchall_82

    .line 300
    if-eqz v1, :cond_5a

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    .line 300
    :catchall_7a
    move-exception v0

    move-object v1, v10

    :goto_7c
    if-eqz v1, :cond_81

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v0

    .line 300
    :catchall_82
    move-exception v0

    goto :goto_7c

    .line 297
    :catch_84
    move-exception v0

    goto :goto_5e
.end method

.method private a(Ljava/util/Collection;)V
    .registers 9
    .parameter

    .prologue
    .line 446
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 447
    :cond_8
    const-string v0, "Empty/Null collection passed to deleteHits."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 456
    :goto_d
    return-void

    .line 450
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 451
    const/4 v0, 0x0

    .line 452
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/ao;

    .line 453
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ao;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 454
    goto :goto_1a

    .line 455
    :cond_34
    invoke-direct {p0, v3}, Lcom/google/analytics/tracking/android/aw;->a([Ljava/lang/String;)V

    goto :goto_d
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 188
    const-string v0, "&_v"

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz p1, :cond_2c

    .line 190
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/Command;

    .line 191
    const-string v3, "appendVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2c
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 464
    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_d

    .line 465
    :cond_7
    const-string v0, "Empty hitIds passed to deleteHits."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 480
    :cond_c
    :goto_c
    return-void

    .line 468
    :cond_d
    const-string v2, "Error opening database for deleteHits."

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_c

    .line 472
    const-string v3, "HIT_ID in (%s)"

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, ","

    array-length v6, p1

    const-string v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 475
    :try_start_2c
    const-string v4, "hits2"

    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/google/analytics/tracking/android/aw;->d:Lcom/google/analytics/tracking/android/g;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/aw;->f()I

    move-result v3

    if-nez v3, :cond_51

    :goto_39
    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/g;->a(Z)V
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_3c} :catch_3d

    goto :goto_c

    .line 478
    :catch_3d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error deleting hits "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    goto :goto_c

    :cond_51
    move v0, v1

    .line 476
    goto :goto_39
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/aw;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/aw;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/analytics/tracking/android/aw;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/util/List;
    .registers 17

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    .line 315
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 316
    const-string v1, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 317
    if-nez v1, :cond_14

    move-object v1, v10

    .line 407
    :cond_13
    :goto_13
    return-object v1

    .line 329
    :cond_14
    :try_start_14
    const-string v2, "hits2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_time"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v15, "hit_id"

    aput-object v15, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x28

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_f9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_3e} :catch_d8

    move-result-object v12

    .line 338
    :try_start_3f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_44} :catch_177

    .line 339
    :try_start_44
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 341
    :cond_4a
    new-instance v2, Lcom/google/analytics/tracking/android/ao;

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/ao;-><init>(JJ)V

    .line 342
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_5f} :catch_17d

    move-result v2

    if-nez v2, :cond_4a

    .line 349
    :cond_62
    if-eqz v12, :cond_67

    .line 350
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_67
    :try_start_67
    const-string v2, "hits2"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_string"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "hit_url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v15, "hit_id"

    aput-object v15, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x28

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_96
    .catchall {:try_start_67 .. :try_end_96} :catchall_15d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_96} :catch_16f

    move-result-object v2

    .line 365
    :try_start_97
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d0

    move v3, v14

    .line 367
    :goto_9e
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    if-lez v1, :cond_100

    .line 372
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ao;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/analytics/tracking/android/ao;->a(Ljava/lang/String;)V

    .line 373
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ao;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/analytics/tracking/android/ao;->b(Ljava/lang/String;)V

    .line 378
    :goto_c8
    add-int/lit8 v1, v3, 0x1

    .line 379
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_cd
    .catchall {:try_start_97 .. :try_end_cd} :catchall_16c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_97 .. :try_end_cd} :catch_11e

    move-result v3

    if-nez v3, :cond_183

    .line 406
    :cond_d0
    if-eqz v2, :cond_d5

    .line 407
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d5
    move-object v1, v11

    goto/16 :goto_13

    .line 345
    :catch_d8
    move-exception v1

    move-object v2, v1

    move-object v3, v11

    move-object v1, v10

    .line 346
    :goto_dc
    :try_start_dc
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in peekHits fetching hitIds: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_dc .. :try_end_f2} :catchall_174

    .line 349
    if-eqz v3, :cond_13

    .line 350
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 349
    :catchall_f9
    move-exception v1

    :goto_fa
    if-eqz v11, :cond_ff

    .line 350
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_ff
    throw v1

    .line 375
    :cond_100
    :try_start_100
    const-string v4, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_100 .. :try_end_11d} :catchall_16c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_100 .. :try_end_11d} :catch_11e

    goto :goto_c8

    .line 382
    :catch_11e
    move-exception v1

    move-object v12, v2

    .line 383
    :goto_120
    :try_start_120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHits fetching hitString: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v14

    :goto_140
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_164

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ao;

    .line 395
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 396
    if-nez v3, :cond_164

    move v3, v13

    .line 402
    :cond_159
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15c
    .catchall {:try_start_120 .. :try_end_15c} :catchall_15d

    goto :goto_140

    .line 406
    :catchall_15d
    move-exception v1

    :goto_15e
    if-eqz v12, :cond_163

    .line 407
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_163
    throw v1

    .line 406
    :cond_164
    if-eqz v12, :cond_169

    .line 407
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_169
    move-object v1, v2

    goto/16 :goto_13

    .line 406
    :catchall_16c
    move-exception v1

    move-object v12, v2

    goto :goto_15e

    .line 382
    :catch_16f
    move-exception v1

    goto :goto_120

    .line 349
    :catchall_171
    move-exception v1

    move-object v11, v12

    goto :goto_fa

    :catchall_174
    move-exception v1

    move-object v11, v3

    goto :goto_fa

    .line 345
    :catch_177
    move-exception v1

    move-object v2, v1

    move-object v3, v12

    move-object v1, v10

    goto/16 :goto_dc

    :catch_17d
    move-exception v1

    move-object v2, v1

    move-object v3, v12

    move-object v1, v11

    goto/16 :goto_dc

    :cond_183
    move v3, v1

    goto/16 :goto_9e
.end method

.method private f()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 483
    .line 484
    const-string v2, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 485
    if-nez v2, :cond_b

    .line 501
    :cond_a
    :goto_a
    return v0

    .line 490
    :cond_b
    :try_start_b
    const-string v3, "SELECT COUNT(*) from hits2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 491
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 492
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_1c} :catch_24

    move-result-wide v2

    long-to-int v0, v2

    .line 497
    :cond_1e
    if-eqz v1, :cond_a

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 495
    :catch_24
    move-exception v2

    :try_start_25
    const-string v2, "Error getting numStoredHits"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_30

    .line 497
    if-eqz v1, :cond_a

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 497
    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 149
    const-string v2, "Error opening database for clearHits"

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 150
    if-eqz v2, :cond_21

    .line 151
    cmp-long v3, v4, v4

    if-nez v3, :cond_22

    .line 152
    const-string v3, "hits2"

    invoke-virtual {v2, v3, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    :goto_16
    iget-object v2, p0, Lcom/google/analytics/tracking/android/aw;->d:Lcom/google/analytics/tracking/android/g;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/aw;->f()I

    move-result v3

    if-nez v3, :cond_36

    :goto_1e
    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/g;->a(Z)V

    .line 160
    :cond_21
    return-void

    .line 154
    :cond_22
    new-array v3, v0, [Ljava/lang/String;

    .line 155
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 156
    const-string v4, "hits2"

    const-string v5, "hit_app_id = ?"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_16

    :cond_36
    move v0, v1

    .line 158
    goto :goto_1e
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lcom/google/analytics/tracking/android/aw;->h:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/l;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/aw;->g:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_42

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/aw;->g:J

    const-string v2, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_42

    iget-object v3, p0, Lcom/google/analytics/tracking/android/aw;->h:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v3}, Lcom/google/analytics/tracking/android/l;->a()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    sub-long/2addr v3, v5

    const-string v5, "hits2"

    const-string v6, "HIT_TIME < ?"

    new-array v7, v0, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/aw;->d:Lcom/google/analytics/tracking/android/g;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/aw;->f()I

    move-result v3

    if-nez v3, :cond_c8

    :goto_3f
    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/g;->a(Z)V

    .line 179
    :cond_42
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/aw;->f()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_77

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/aw;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Store full, deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/aw;->a([Ljava/lang/String;)V

    .line 180
    :cond_77
    invoke-static {p1, p5}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 181
    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_c7

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "hit_string"

    invoke-static {p1}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v1, 0x0

    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    :try_start_a3
    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_ae} :catch_cb

    move-result-wide v0

    :goto_af
    const-string v2, "hit_app_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p4, :cond_bc

    const-string p4, "http://www.google-analytics.com/collect"

    :cond_bc
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_ce

    const-string v0, "Empty path: not sending hit"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 182
    :cond_c7
    :goto_c7
    return-void

    :cond_c8
    move v0, v1

    .line 178
    goto/16 :goto_3f

    :catch_cb
    move-exception v0

    :cond_cc
    move-wide v0, v1

    goto :goto_af

    .line 181
    :cond_ce
    const-string v0, "hit_url"

    invoke-virtual {v4, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d3
    const-string v0, "hits2"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->d:Lcom/google/analytics/tracking/android/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/g;->a(Z)V
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d3 .. :try_end_df} :catch_e0

    goto :goto_c7

    :catch_e0
    move-exception v0

    const-string v0, "Error storing hit"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    goto :goto_c7
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 507
    const-string v0, "Dispatch running..."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->c:Lcom/google/analytics/tracking/android/o;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/o;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 532
    :cond_d
    :goto_d
    return-void

    .line 513
    :cond_e
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/aw;->e()Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 515
    const-string v0, "...nothing to dispatch"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->d:Lcom/google/analytics/tracking/android/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/g;->a(Z)V

    goto :goto_d

    .line 519
    :cond_24
    iget-object v1, p0, Lcom/google/analytics/tracking/android/aw;->c:Lcom/google/analytics/tracking/android/o;

    invoke-interface {v1, v0}, Lcom/google/analytics/tracking/android/o;->a(Ljava/util/List;)I

    move-result v1

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/aw;->a(Ljava/util/Collection;)V

    .line 529
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_d

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/aw;->f()I

    move-result v0

    if-lez v0, :cond_d

    .line 530
    invoke-static {}, Lcom/google/analytics/tracking/android/v;->a()Lcom/google/analytics/tracking/android/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/v;->c()V

    goto :goto_d
.end method

.method public final c()Lcom/google/analytics/tracking/android/o;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aw;->c:Lcom/google/analytics/tracking/android/o;

    return-object v0
.end method
