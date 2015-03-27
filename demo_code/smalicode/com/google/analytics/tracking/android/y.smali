.class final Lcom/google/analytics/tracking/android/y;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/bb;
.implements Lcom/google/analytics/tracking/android/d;
.implements Lcom/google/analytics/tracking/android/e;


# instance fields
.field private volatile a:J

.field private volatile b:Lcom/google/analytics/tracking/android/ac;

.field private volatile c:Lcom/google/analytics/tracking/android/a;

.field private d:Lcom/google/analytics/tracking/android/f;

.field private e:Lcom/google/analytics/tracking/android/f;

.field private final f:Lcom/google/analytics/tracking/android/an;

.field private final g:Lcom/google/analytics/tracking/android/h;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Queue;

.field private volatile j:I

.field private volatile k:Ljava/util/Timer;

.field private volatile l:Ljava/util/Timer;

.field private volatile m:Ljava/util/Timer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/analytics/tracking/android/l;

.field private s:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/analytics/tracking/android/an;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/y;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;Lcom/google/analytics/tracking/android/an;)V

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;Lcom/google/analytics/tracking/android/an;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    .line 69
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/y;->s:J

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Lcom/google/analytics/tracking/android/f;

    .line 76
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y;->h:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/h;

    .line 78
    iput-object p3, p0, Lcom/google/analytics/tracking/android/y;->f:Lcom/google/analytics/tracking/android/an;

    .line 79
    new-instance v0, Lcom/google/analytics/tracking/android/z;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/z;-><init>(Lcom/google/analytics/tracking/android/y;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->r:Lcom/google/analytics/tracking/android/l;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/y;->j:I

    .line 86
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->g:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    .line 87
    return-void
.end method

.method private static a(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter

    .prologue
    .line 188
    if-eqz p0, :cond_5

    .line 189
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    .line 191
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/y;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/ac;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/y;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->i()V

    return-void
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/y;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->j()V

    return-void
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/y;)Ljava/util/Queue;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(Lcom/google/analytics/tracking/android/y;)J
    .registers 3
    .parameter

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/y;->a:J

    return-wide v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->k:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->k:Ljava/util/Timer;

    .line 196
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->l:Ljava/util/Timer;

    .line 197
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->m:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->m:Ljava/util/Timer;

    .line 198
    return-void
.end method

.method static synthetic g(Lcom/google/analytics/tracking/android/y;)J
    .registers 3
    .parameter

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/y;->s:J

    return-wide v0
.end method

.method private declared-synchronized g()V
    .registers 8

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/h;->d()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 242
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/h;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/aa;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/aa;-><init>(Lcom/google/analytics/tracking/android/y;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_87

    .line 290
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 250
    :cond_21
    :try_start_21
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->o:Z

    if-eqz v1, :cond_3f

    .line 251
    const-string v1, "clearHits called"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_10e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->o:Z

    .line 253
    :cond_3f
    :goto_3f
    sget-object v1, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_116

    :pswitch_4c
    goto :goto_1f

    .line 255
    :goto_4d
    :pswitch_4d
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 256
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/af;

    move-object v6, v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending hit to store  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/f;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/f;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_86
    .catchall {:try_start_21 .. :try_end_86} :catchall_87

    goto :goto_4d

    .line 241
    :catchall_87
    move-exception v1

    monitor-exit p0

    throw v1

    .line 251
    :pswitch_8a
    :try_start_8a
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/f;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->o:Z

    goto :goto_3f

    :pswitch_93
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/a;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->o:Z

    goto :goto_3f

    .line 262
    :cond_9c
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->n:Z

    if-eqz v1, :cond_1f

    .line 263
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->h()V

    goto/16 :goto_1f

    .line 267
    :goto_a5
    :pswitch_a5
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f2

    .line 268
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/af;

    move-object v6, v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending hit to service   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->f:Lcom/google/analytics/tracking/android/an;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/an;->b()Z

    move-result v1

    if-nez v1, :cond_ec

    .line 271
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/af;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/a;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 276
    :goto_e6
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_a5

    .line 274
    :cond_ec
    const-string v1, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    goto :goto_e6

    .line 278
    :cond_f2
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->r:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/l;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/y;->a:J

    goto/16 :goto_1f

    .line 281
    :pswitch_fc
    const-string v1, "Need to reconnect"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 283
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->j()V
    :try_end_10c
    .catchall {:try_start_8a .. :try_end_10c} :catchall_87

    goto/16 :goto_1f

    .line 251
    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_93
    .end packed-switch

    .line 253
    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_a5
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_fc
    .end packed-switch
.end method

.method static synthetic h(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/l;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->r:Lcom/google/analytics/tracking/android/l;

    return-object v0
.end method

.method private h()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/f;->b()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->n:Z

    .line 298
    return-void
.end method

.method private declared-synchronized i()V
    .registers 4

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->c:Lcom/google/analytics/tracking/android/ac;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-ne v0, v1, :cond_9

    .line 319
    :goto_7
    monitor-exit p0

    return-void

    .line 308
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->f()V

    .line 309
    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Lcom/google/analytics/tracking/android/f;

    if-eqz v0, :cond_24

    .line 311
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Lcom/google/analytics/tracking/android/f;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/f;

    .line 317
    :goto_19
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->c:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    .line 318
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->g()V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    goto :goto_7

    .line 304
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/google/analytics/tracking/android/v;->a()Lcom/google/analytics/tracking/android/v;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->g:Lcom/google/analytics/tracking/android/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/v;->a(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V

    .line 315
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/v;->b()Lcom/google/analytics/tracking/android/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/f;
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_21

    goto :goto_19
.end method

.method static synthetic i(Lcom/google/analytics/tracking/android/y;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->k()V

    return-void
.end method

.method static synthetic j(Lcom/google/analytics/tracking/android/y;)Ljava/util/Timer;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->m:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized j()V
    .registers 5

    .prologue
    .line 322
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->q:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->c:Lcom/google/analytics/tracking/android/ac;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4a

    if-eq v0, v1, :cond_4d

    .line 324
    :try_start_f
    iget v0, p0, Lcom/google/analytics/tracking/android/y;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/y;->j:I

    .line 325
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    .line 326
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->a:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    .line 327
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->l:Ljava/util/Timer;

    .line 328
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->l:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/ae;-><init>(Lcom/google/analytics/tracking/android/y;B)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 329
    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/a;->b()V
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_4a
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_3e} :catch_40

    .line 339
    :goto_3e
    monitor-exit p0

    return-void

    .line 332
    :catch_40
    move-exception v0

    :try_start_41
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->i()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4a

    goto :goto_3e

    .line 322
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 336
    :cond_4d
    :try_start_4d
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->i()V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_4a

    goto :goto_3e
.end method

.method private declared-synchronized k()V
    .registers 3

    .prologue
    .line 342
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->b:Lcom/google/analytics/tracking/android/ac;

    if-ne v0, v1, :cond_14

    .line 343
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->f:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    .line 344
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/a;->c()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 346
    :cond_14
    monitor-exit p0

    return-void

    .line 342
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .registers 5

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->k:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->k:Ljava/util/Timer;

    .line 398
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->k:Ljava/util/Timer;

    .line 399
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->k:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ag;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/ag;-><init>(Lcom/google/analytics/tracking/android/y;B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 400
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 5

    .prologue
    .line 350
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->l:Ljava/util/Timer;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/y;->j:I

    .line 352
    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->b:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    .line 355
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->p:Z

    if-eqz v0, :cond_21

    .line 356
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->k()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->p:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_43

    .line 365
    :goto_1f
    monitor-exit p0

    return-void

    .line 361
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->g()V

    .line 362
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->m:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->m:Ljava/util/Timer;

    .line 363
    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->m:Ljava/util/Timer;

    .line 364
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->m:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/ad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/ad;-><init>(Lcom/google/analytics/tracking/android/y;B)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/y;->s:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_43

    goto :goto_1f

    .line 350
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 4
    .parameter

    .prologue
    .line 386
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->e:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    .line 387
    iget v0, p0, Lcom/google/analytics/tracking/android/y;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_27

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->l()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_43

    .line 394
    :goto_25
    monitor-exit p0

    return-void

    .line 391
    :cond_27
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->i()V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_43

    goto :goto_25

    .line 386
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/google/analytics/tracking/android/y;->i:Ljava/util/Queue;

    new-instance v0, Lcom/google/analytics/tracking/android/af;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/af;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->g()V

    .line 107
    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 369
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->f:Lcom/google/analytics/tracking/android/ac;

    if-ne v0, v1, :cond_15

    .line 370
    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->f()V

    .line 372
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->g:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_27

    .line 382
    :goto_13
    monitor-exit p0

    return-void

    .line 374
    :cond_15
    :try_start_15
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/google/analytics/tracking/android/ac;->e:Lcom/google/analytics/tracking/android/ac;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    .line 376
    iget v0, p0, Lcom/google/analytics/tracking/android/y;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2a

    .line 377
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->l()V
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_27

    goto :goto_13

    .line 369
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->i()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    goto :goto_13
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->n:Z

    .line 121
    :goto_10
    :pswitch_10
    return-void

    .line 113
    :pswitch_11
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->h()V

    goto :goto_10

    .line 111
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final declared-synchronized d()V
    .registers 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->q:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    .line 166
    :goto_5
    :pswitch_5
    monitor-exit p0

    return-void

    .line 148
    :cond_7
    :try_start_7
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->q:Z

    .line 155
    sget-object v0, Lcom/google/analytics/tracking/android/ab;->a:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->b:Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_5

    .line 160
    :pswitch_1d
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->k()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_5

    .line 144
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :pswitch_24
    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->p:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_21

    goto :goto_5

    .line 155
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1d
        :pswitch_24
    .end packed-switch
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_5

    .line 211
    :goto_4
    return-void

    .line 209
    :cond_5
    new-instance v0, Lcom/google/analytics/tracking/android/b;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/b;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/d;Lcom/google/analytics/tracking/android/e;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/a;

    .line 210
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->j()V

    goto :goto_4
.end method
