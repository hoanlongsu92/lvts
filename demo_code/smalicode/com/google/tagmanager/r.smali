.class public Lcom/google/tagmanager/r;
.super Ljava/lang/Object;
.source "TagManager.java"


# static fields
.field private static f:Lcom/google/tagmanager/r;


# instance fields
.field private final a:Lcom/google/tagmanager/v;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/tagmanager/e;

.field private volatile d:Lcom/google/tagmanager/w;

.field private final e:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/v;Lcom/google/tagmanager/e;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-nez p1, :cond_d

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/r;->b:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/google/tagmanager/r;->a:Lcom/google/tagmanager/v;

    .line 144
    sget-object v0, Lcom/google/tagmanager/w;->a:Lcom/google/tagmanager/w;

    iput-object v0, p0, Lcom/google/tagmanager/r;->d:Lcom/google/tagmanager/w;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/r;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    iput-object p3, p0, Lcom/google/tagmanager/r;->c:Lcom/google/tagmanager/e;

    .line 147
    iget-object v0, p0, Lcom/google/tagmanager/r;->c:Lcom/google/tagmanager/e;

    new-instance v1, Lcom/google/tagmanager/s;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/s;-><init>(Lcom/google/tagmanager/r;)V

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/e;->a(Lcom/google/tagmanager/f;)V

    .line 157
    iget-object v0, p0, Lcom/google/tagmanager/r;->c:Lcom/google/tagmanager/e;

    new-instance v1, Lcom/google/tagmanager/a;

    iget-object v2, p0, Lcom/google/tagmanager/r;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/tagmanager/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/e;->a(Lcom/google/tagmanager/f;)V

    .line 158
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/tagmanager/r;
    .registers 5
    .parameter

    .prologue
    .line 166
    const-class v1, Lcom/google/tagmanager/r;

    monitor-enter v1

    .line 167
    :try_start_3
    sget-object v0, Lcom/google/tagmanager/r;->f:Lcom/google/tagmanager/r;

    if-nez v0, :cond_18

    .line 168
    new-instance v0, Lcom/google/tagmanager/t;

    invoke-direct {v0}, Lcom/google/tagmanager/t;-><init>()V

    .line 175
    new-instance v2, Lcom/google/tagmanager/r;

    new-instance v3, Lcom/google/tagmanager/e;

    invoke-direct {v3}, Lcom/google/tagmanager/e;-><init>()V

    invoke-direct {v2, p0, v0, v3}, Lcom/google/tagmanager/r;-><init>(Landroid/content/Context;Lcom/google/tagmanager/v;Lcom/google/tagmanager/e;)V

    sput-object v2, Lcom/google/tagmanager/r;->f:Lcom/google/tagmanager/r;

    .line 177
    :cond_18
    sget-object v0, Lcom/google/tagmanager/r;->f:Lcom/google/tagmanager/r;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return-object v0

    .line 178
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/tagmanager/w;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/tagmanager/r;->d:Lcom/google/tagmanager/w;

    return-object v0
.end method

.method final declared-synchronized a(Landroid/net/Uri;)Z
    .registers 7
    .parameter

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/tagmanager/m;->a()Lcom/google/tagmanager/m;

    move-result-object v2

    .line 259
    invoke-virtual {v2, p1}, Lcom/google/tagmanager/m;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 260
    invoke-virtual {v2}, Lcom/google/tagmanager/m;->d()Ljava/lang/String;

    move-result-object v3

    .line 261
    sget-object v0, Lcom/google/tagmanager/u;->a:[I

    invoke-virtual {v2}, Lcom/google/tagmanager/m;->b()Lcom/google/tagmanager/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/n;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_33

    packed-switch v0, :pswitch_data_7a

    .line 284
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 286
    :goto_1f
    monitor-exit p0

    return v0

    .line 263
    :pswitch_21
    :try_start_21
    iget-object v0, p0, Lcom/google/tagmanager/r;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/c;

    .line 264
    if-eqz v0, :cond_1e

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/c;->a(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lcom/google/tagmanager/c;->a()V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_33

    goto :goto_1e

    .line 258
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :pswitch_36
    :try_start_36
    iget-object v0, p0, Lcom/google/tagmanager/r;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/c;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 274
    invoke-virtual {v2}, Lcom/google/tagmanager/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/c;->a(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Lcom/google/tagmanager/c;->a()V

    goto :goto_40

    .line 276
    :cond_69
    invoke-virtual {v1}, Lcom/google/tagmanager/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 278
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/c;->a(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Lcom/google/tagmanager/c;->a()V
    :try_end_76
    .catchall {:try_start_36 .. :try_end_76} :catchall_33

    goto :goto_40

    .line 286
    :cond_77
    const/4 v0, 0x0

    goto :goto_1f

    .line 261
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method
