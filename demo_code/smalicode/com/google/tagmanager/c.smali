.class public final Lcom/google/tagmanager/c;
.super Ljava/lang/Object;
.source "Container.java"


# instance fields
.field private final a:Lcom/google/tagmanager/r;

.field private b:Lcom/google/tagmanager/d;

.field private c:Lcom/google/tagmanager/o;

.field private d:Lcom/google/tagmanager/b;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Lcom/google/analytics/a/a/p;

.field private volatile g:J

.field private volatile h:I


# direct methods
.method private declared-synchronized c()V
    .registers 2

    .prologue
    .line 603
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/google/tagmanager/c;->e()Z

    move-result v0

    if-nez v0, :cond_16

    .line 606
    iget-object v0, p0, Lcom/google/tagmanager/c;->f:Lcom/google/analytics/a/a/p;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/tagmanager/c;->f:Lcom/google/analytics/a/a/p;

    invoke-virtual {v0}, Lcom/google/analytics/a/a/p;->g()Ljava/lang/String;

    .line 608
    :cond_14
    iget-object v0, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 610
    :cond_16
    monitor-exit p0

    return-void

    .line 603
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/google/tagmanager/o;
    .registers 2

    .prologue
    .line 669
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/c;->c:Lcom/google/tagmanager/o;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/tagmanager/c;->a:Lcom/google/tagmanager/r;

    invoke-virtual {v0}, Lcom/google/tagmanager/r;->a()Lcom/google/tagmanager/w;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/w;->b:Lcom/google/tagmanager/w;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 9

    .prologue
    const/16 v7, 0x1e

    const/4 v0, 0x1

    .line 321
    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Lcom/google/tagmanager/c;->d()Lcom/google/tagmanager/o;

    move-result-object v1

    if-nez v1, :cond_11

    .line 322
    const-string v0, "refresh called for closed container"

    invoke-static {v0}, Lcom/google/tagmanager/i;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_35

    .line 342
    :goto_f
    monitor-exit p0

    return-void

    .line 326
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/google/tagmanager/c;->e()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 327
    const-string v0, "Container is in DEFAULT_CONTAINER mode. Refresh request is ignored."

    invoke-static {v0}, Lcom/google/tagmanager/i;->b(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_f

    .line 339
    :catch_1d
    move-exception v0

    .line 340
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling refresh() throws an exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i;->a(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_35

    goto :goto_f

    .line 321
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/google/tagmanager/c;->d:Lcom/google/tagmanager/b;

    invoke-interface {v1}, Lcom/google/tagmanager/b;->a()J

    move-result-wide v1

    .line 332
    iget-wide v3, p0, Lcom/google/tagmanager/c;->g:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_59

    iget v3, p0, Lcom/google/tagmanager/c;->h:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/tagmanager/c;->h:I

    :goto_4c
    if-eqz v0, :cond_89

    .line 333
    const-string v0, "Container refresh requested"

    invoke-static {v0}, Lcom/google/tagmanager/i;->d(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/google/tagmanager/c;->c()V

    .line 335
    iput-wide v1, p0, Lcom/google/tagmanager/c;->g:J

    goto :goto_f

    .line 332
    :cond_59
    iget-wide v3, p0, Lcom/google/tagmanager/c;->g:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v5, v3, v5

    if-ltz v5, :cond_87

    iget v5, p0, Lcom/google/tagmanager/c;->h:I

    if-ge v5, v7, :cond_7c

    const-wide/32 v5, 0xdbba0

    div-long/2addr v3, v5

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/16 v4, 0x1e

    iget v5, p0, Lcom/google/tagmanager/c;->h:I

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/tagmanager/c;->h:I

    :cond_7c
    iget v3, p0, Lcom/google/tagmanager/c;->h:I

    if-lez v3, :cond_87

    iget v3, p0, Lcom/google/tagmanager/c;->h:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/tagmanager/c;->h:I

    goto :goto_4c

    :cond_87
    const/4 v0, 0x0

    goto :goto_4c

    .line 337
    :cond_89
    const-string v0, "Container refresh was called too often. Ignored."

    invoke-static {v0}, Lcom/google/tagmanager/i;->d(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_38 .. :try_end_8e} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_8e} :catch_1d

    goto :goto_f
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 682
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/tagmanager/c;->e:Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;

    if-eqz v0, :cond_9

    .line 684
    iget-object v0, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 686
    :cond_9
    monitor-exit p0

    return-void

    .line 682
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/tagmanager/c;->e:Ljava/lang/String;

    return-object v0
.end method
