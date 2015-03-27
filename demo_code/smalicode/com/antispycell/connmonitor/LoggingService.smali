.class public Lcom/antispycell/connmonitor/LoggingService;
.super Landroid/app/Service;
.source "LoggingService.java"


# static fields
.field static a:Lcom/antispycell/connmonitor/JNI;

.field static b:Landroid/content/SharedPreferences;

.field static m:Ljava/lang/String;

.field static n:Ljava/lang/String;

.field static o:Ljava/lang/String;

.field static p:I

.field static q:I

.field static r:Landroid/util/SparseArray;

.field static s:Ljava/lang/String;


# instance fields
.field c:Ljava/lang/Boolean;

.field d:Lcom/antispycell/connmonitor/an;

.field e:Landroid/app/NotificationManager;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Ljava/util/Set;

.field l:Ljava/util/Set;

.field private final t:Landroid/os/IBinder;

.field private u:Landroid/os/Handler;

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    invoke-static {}, Lcom/antispycell/connmonitor/JNI;->a()Lcom/antispycell/connmonitor/JNI;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->m:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->r:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/antispycell/connmonitor/bh;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/bh;-><init>(Lcom/antispycell/connmonitor/LoggingService;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->t:Landroid/os/IBinder;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->u:Landroid/os/Handler;

    .line 43
    iput-object v2, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    .line 44
    iput-object v2, p0, Lcom/antispycell/connmonitor/LoggingService;->e:Landroid/app/NotificationManager;

    .line 45
    iput-boolean v1, p0, Lcom/antispycell/connmonitor/LoggingService;->f:Z

    .line 46
    iput-boolean v1, p0, Lcom/antispycell/connmonitor/LoggingService;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/antispycell/connmonitor/LoggingService;->h:Z

    .line 48
    iput-boolean v1, p0, Lcom/antispycell/connmonitor/LoggingService;->i:Z

    .line 49
    iput-boolean v1, p0, Lcom/antispycell/connmonitor/LoggingService;->j:Z

    .line 50
    iput-object v2, p0, Lcom/antispycell/connmonitor/LoggingService;->k:Ljava/util/Set;

    .line 51
    iput-object v2, p0, Lcom/antispycell/connmonitor/LoggingService;->l:Ljava/util/Set;

    .line 198
    new-instance v0, Lcom/antispycell/connmonitor/bf;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/bf;-><init>(Lcom/antispycell/connmonitor/LoggingService;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->v:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/LoggingService;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->u:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 437
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 438
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/LoggingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 440
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-nez p2, :cond_17

    .line 441
    const-string v0, "Android System"

    .line 488
    :goto_16
    return-object v0

    .line 444
    :cond_17
    const/4 v1, 0x0

    .line 445
    if-eqz p1, :cond_90

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_90

    .line 448
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 450
    :goto_2d
    const/4 v5, 0x1

    :try_start_2e
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_31} :catch_4f

    move-result-object v1

    .line 460
    :goto_32
    if-nez v1, :cond_42

    if-lez p2, :cond_42

    .line 462
    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 464
    if-eqz v5, :cond_42

    array-length v6, v5

    if-le v6, v7, :cond_42

    .line 465
    :goto_3f
    array-length v6, v5

    if-lt v0, v6, :cond_55

    .line 478
    :cond_42
    if-eqz v1, :cond_64

    .line 479
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 456
    :catch_4f
    move-exception v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_32

    .line 467
    :cond_55
    aget-object v6, v5, v0

    if-eqz v6, :cond_61

    .line 468
    :try_start_59
    aget-object v6, v5, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 472
    array-length v0, v5
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_61} :catch_8e

    .line 465
    :cond_61
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 481
    :cond_64
    if-nez p2, :cond_69

    .line 482
    const-string v0, "Android System"

    goto :goto_16

    .line 484
    :cond_69
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 485
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [noinfo]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_89
    const-string v0, "[removed]"

    goto :goto_16

    :cond_8c
    move-object v0, v2

    .line 488
    goto :goto_16

    :catch_8e
    move-exception v6

    goto :goto_61

    :cond_90
    move-object v2, p1

    goto :goto_2d
.end method

.method private static a(Landroid/content/Context;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    const/16 v4, 0xc

    .line 329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 331
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 332
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 334
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 335
    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 336
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 337
    invoke-virtual {v1, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/antispycell/connmonitor/StopLoggerAlarm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const/high16 v2, 0x800

    invoke-static {p0, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 343
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 345
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 347
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    const-string v2, "nextAlarm"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    return-void
.end method

.method private static a(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 297
    .line 299
    const/4 v3, 0x0

    .line 302
    :try_start_3
    sget-object v2, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_f

    move-result-object v2

    .line 306
    :goto_9
    if-eqz v2, :cond_e

    .line 307
    packed-switch p0, :pswitch_data_32

    .line 323
    :cond_e
    :goto_e
    return v0

    .line 304
    :catch_f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    goto :goto_9

    .line 309
    :pswitch_15
    const-string v1, "logger"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_e

    .line 314
    :pswitch_1e
    const-string v0, "logger"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    .line 317
    goto :goto_e

    .line 319
    :pswitch_28
    sget-object v1, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v2, "logger"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_e

    .line 307
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 15

    .prologue
    const v13, 0x7f020010

    const/4 v8, 0x0

    .line 220
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    if-nez v0, :cond_14

    .line 221
    new-instance v0, Lcom/antispycell/connmonitor/an;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    .line 222
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->a()V

    .line 226
    :cond_14
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->GetCounts()I

    move-result v9

    .line 228
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    move v7, v8

    .line 230
    :goto_20
    if-lt v7, v9, :cond_23

    .line 293
    return-void

    .line 232
    :cond_23
    const/4 v0, 0x0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->m:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0, v7}, Lcom/antispycell/connmonitor/JNI;->GetStatus(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->n:Ljava/lang/String;

    .line 234
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0, v7}, Lcom/antispycell/connmonitor/JNI;->GetRemoteIP(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->o:Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0, v7}, Lcom/antispycell/connmonitor/JNI;->GetUID(I)I

    move-result v0

    sput v0, Lcom/antispycell/connmonitor/LoggingService;->q:I

    .line 236
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0, v7}, Lcom/antispycell/connmonitor/JNI;->GetRemotePort(I)I

    move-result v0

    sput v0, Lcom/antispycell/connmonitor/LoggingService;->p:I

    .line 239
    iget-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->g:Z

    if-eqz v0, :cond_4e

    sget v0, Lcom/antispycell/connmonitor/LoggingService;->q:I

    if-eqz v0, :cond_1f9

    .line 241
    :cond_4e
    iget-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->h:Z

    if-eqz v0, :cond_66

    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->n:Ljava/lang/String;

    const-string v1, "ESTABLISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->n:Ljava/lang/String;

    const-string v1, "FIN_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 243
    :cond_66
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->o:Ljava/lang/String;

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 245
    iget-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->f:Z

    if-eqz v0, :cond_88

    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->o:Ljava/lang/String;

    const-string v1, "127."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f9

    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->o:Ljava/lang/String;

    const-string v1, "10.0.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 246
    :cond_88
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->r:Landroid/util/SparseArray;

    if-eqz v0, :cond_98

    .line 255
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->r:Landroid/util/SparseArray;

    sget v1, Lcom/antispycell/connmonitor/LoggingService;->q:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->s:Ljava/lang/String;

    .line 258
    :cond_98
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->s:Ljava/lang/String;

    if-nez v0, :cond_b1

    .line 259
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/LoggingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget v1, Lcom/antispycell/connmonitor/LoggingService;->q:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->s:Ljava/lang/String;

    .line 260
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->r:Landroid/util/SparseArray;

    sget v1, Lcom/antispycell/connmonitor/LoggingService;->q:I

    sget-object v2, Lcom/antispycell/connmonitor/LoggingService;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/antispycell/connmonitor/LoggingService;->s:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/antispycell/connmonitor/LoggingService;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->m:Ljava/lang/String;

    .line 265
    iget-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->i:Z

    if-eqz v0, :cond_1d7

    .line 266
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d7

    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->k:Ljava/util/Set;

    sget v1, Lcom/antispycell/connmonitor/LoggingService;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 267
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_102

    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->l:Ljava/util/Set;

    sget v1, Lcom/antispycell/connmonitor/LoggingService;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->j:Z

    if-nez v0, :cond_1d7

    .line 270
    :cond_102
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->m:Ljava/lang/String;

    sget v1, Lcom/antispycell/connmonitor/LoggingService;->q:I

    sget-object v2, Lcom/antispycell/connmonitor/LoggingService;->o:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/antispycell/connmonitor/IPDetails;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "IP"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {p0, v8, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v0, :cond_12e

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_12e

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_12e
    invoke-direct {p0, v0, v1}, Lcom/antispycell/connmonitor/LoggingService;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/LoggingService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {v5, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v5, "Network Connections Alert"

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v5, "Network Connections Alert"

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ") is connecting to IP: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v5, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Application: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Package: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Remote IP: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v2, p0, Lcom/antispycell/connmonitor/LoggingService;->e:Landroid/app/NotificationManager;

    const v3, 0x31bac

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 275
    :cond_1d7
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 277
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    sget-object v1, Lcom/antispycell/connmonitor/LoggingService;->o:Ljava/lang/String;

    sget v2, Lcom/antispycell/connmonitor/LoggingService;->p:I

    sget-object v3, Lcom/antispycell/connmonitor/LoggingService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/antispycell/connmonitor/an;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 279
    if-lez v0, :cond_1fe

    .line 280
    iget-object v1, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/antispycell/connmonitor/an;->a(IJ)V

    .line 230
    :cond_1f9
    :goto_1f9
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_20

    .line 283
    :cond_1fe
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    .line 284
    sget-object v1, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v1, v7}, Lcom/antispycell/connmonitor/JNI;->GetLocalIP(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    sget-object v2, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v2, v7}, Lcom/antispycell/connmonitor/JNI;->GetLocalPort(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 286
    sget-object v3, Lcom/antispycell/connmonitor/LoggingService;->o:Ljava/lang/String;

    .line 287
    sget v4, Lcom/antispycell/connmonitor/LoggingService;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 288
    sget-object v5, Lcom/antispycell/connmonitor/LoggingService;->m:Ljava/lang/String;

    .line 289
    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 283
    invoke-virtual/range {v0 .. v6}, Lcom/antispycell/connmonitor/an;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1f9
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->t:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {v0}, Lcom/antispycell/connmonitor/LoggingService;->a(I)Z

    .line 183
    :try_start_4
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/LoggingService;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->ncStop()I

    .line 185
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    if-eqz v0, :cond_19

    .line 186
    iget-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->d:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 189
    :cond_19
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    const-string v1, "nextAlarm"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    const-string v0, "Live Capture Stopped"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_34

    .line 196
    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 68
    const-string v0, "ui"

    invoke-virtual {p0, v0, v9}, Lcom/antispycell/connmonitor/LoggingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    .line 70
    invoke-static {v11}, Lcom/antispycell/connmonitor/LoggingService;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->c:Ljava/lang/Boolean;

    .line 72
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v1, "value2"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->f:Z

    .line 73
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v1, "value3"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->g:Z

    .line 74
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v1, "value4"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->h:Z

    .line 75
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v1, "value5"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->i:Z

    .line 76
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v1, "value6"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antispycell/connmonitor/LoggingService;->j:Z

    .line 78
    const-string v0, "notification"

    .line 79
    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/LoggingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/antispycell/connmonitor/LoggingService;->e:Landroid/app/NotificationManager;

    .line 81
    const-string v1, "Network Connections Live Capture is active."

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/LoggingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 86
    const-string v5, "Network Connections"

    .line 87
    const-string v6, "Live capture is active."

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const/high16 v7, 0x400

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const/high16 v7, 0x1000

    invoke-static {p0, v9, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 92
    new-instance v0, Landroid/app/Notification;

    const v8, 0x7f02000f

    invoke-direct {v0, v8, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 94
    const/16 v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 95
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 100
    iget-boolean v1, p0, Lcom/antispycell/connmonitor/LoggingService;->i:Z

    if-eqz v1, :cond_a2

    .line 102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/antispycell/connmonitor/LoggingService;->k:Ljava/util/Set;

    .line 103
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/antispycell/connmonitor/LoggingService;->l:Ljava/util/Set;

    .line 105
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/antispycell/connmonitor/bg;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bg;-><init>(Lcom/antispycell/connmonitor/LoggingService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 145
    :cond_a2
    invoke-static {v10}, Lcom/antispycell/connmonitor/LoggingService;->a(I)Z

    .line 147
    invoke-static {}, Lcom/antispycell/connmonitor/JNI;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b9

    .line 148
    sget-object v1, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v1, v11}, Lcom/antispycell/connmonitor/JNI;->ncDataTime(I)I

    .line 149
    sget-object v1, Lcom/antispycell/connmonitor/LoggingService;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/JNI;->ncStart()I

    .line 152
    :cond_b9
    iget-object v1, p0, Lcom/antispycell/connmonitor/LoggingService;->u:Landroid/os/Handler;

    iget-object v2, p0, Lcom/antispycell/connmonitor/LoggingService;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    sget-object v1, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v2, "value1"

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 157
    new-instance v0, Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 158
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 161
    :cond_da
    const v1, 0xc3776

    invoke-virtual {p0, v1, v0}, Lcom/antispycell/connmonitor/LoggingService;->startForeground(ILandroid/app/Notification;)V

    .line 163
    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 164
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/LoggingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/LoggingService;->a(Landroid/content/Context;I)V

    .line 173
    :cond_ef
    :goto_ef
    return v10

    .line 168
    :cond_f0
    sget-object v0, Lcom/antispycell/connmonitor/LoggingService;->b:Landroid/content/SharedPreferences;

    const-string v1, "value0"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 169
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/LoggingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x5a0

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/LoggingService;->a(Landroid/content/Context;I)V

    goto :goto_ef
.end method
