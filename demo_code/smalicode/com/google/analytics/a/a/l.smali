.class public final Lcom/google/analytics/a/a/l;
.super Lcom/google/tagmanager/a/s;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/a/a/o;


# static fields
.field public static a:Lcom/google/tagmanager/a/ao;

.field private static final c:Lcom/google/analytics/a/a/l;

.field private static volatile j:Lcom/google/tagmanager/a/an;


# instance fields
.field private final d:Lcom/google/tagmanager/a/g;

.field private e:I

.field private f:I

.field private g:I

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2324
    new-instance v0, Lcom/google/analytics/a/a/m;

    invoke-direct {v0}, Lcom/google/analytics/a/a/m;-><init>()V

    sput-object v0, Lcom/google/analytics/a/a/l;->a:Lcom/google/tagmanager/a/ao;

    .line 2478
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/a/a/l;->j:Lcom/google/tagmanager/a/an;

    .line 2719
    new-instance v0, Lcom/google/analytics/a/a/l;

    invoke-direct {v0}, Lcom/google/analytics/a/a/l;-><init>()V

    .line 2720
    sput-object v0, Lcom/google/analytics/a/a/l;->c:Lcom/google/analytics/a/a/l;

    invoke-direct {v0}, Lcom/google/analytics/a/a/l;->g()V

    .line 2721
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 2258
    invoke-direct {p0}, Lcom/google/tagmanager/a/s;-><init>()V

    .line 2378
    iput-byte v0, p0, Lcom/google/analytics/a/a/l;->h:B

    .line 2407
    iput v0, p0, Lcom/google/analytics/a/a/l;->i:I

    .line 2258
    sget-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    iput-object v0, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 2273
    invoke-direct {p0}, Lcom/google/tagmanager/a/s;-><init>()V

    .line 2378
    iput-byte v0, p0, Lcom/google/analytics/a/a/l;->h:B

    .line 2407
    iput v0, p0, Lcom/google/analytics/a/a/l;->i:I

    .line 2274
    invoke-direct {p0}, Lcom/google/analytics/a/a/l;->g()V

    .line 2275
    invoke-static {}, Lcom/google/tagmanager/a/g;->i()Lcom/google/tagmanager/a/i;

    move-result-object v2

    .line 2278
    invoke-static {v2}, Lcom/google/tagmanager/a/l;->a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;

    move-result-object v3

    .line 2282
    const/4 v0, 0x0

    .line 2283
    :cond_15
    :goto_15
    if-nez v0, :cond_65

    .line 2284
    :try_start_17
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->a()I

    move-result v4

    .line 2285
    sparse-switch v4, :sswitch_data_92

    .line 2290
    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/google/analytics/a/a/l;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z

    move-result v4

    if-nez v4, :cond_15

    move v0, v1

    .line 2292
    goto :goto_15

    :sswitch_26
    move v0, v1

    .line 2288
    goto :goto_15

    .line 2297
    :sswitch_28
    iget v4, p0, Lcom/google/analytics/a/a/l;->e:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/analytics/a/a/l;->e:I

    .line 2298
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->d()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/a/a/l;->f:I
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_3b
    .catch Lcom/google/tagmanager/a/ae; {:try_start_17 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_34} :catch_56

    goto :goto_15

    .line 2308
    :catch_35
    move-exception v0

    :try_start_36
    invoke-virtual {v0, p0}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3b

    .line 2314
    :catchall_3b
    move-exception v0

    .line 2315
    :try_start_3c
    invoke-virtual {v3}, Lcom/google/tagmanager/a/l;->a()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_8a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_82

    .line 2319
    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    .line 2321
    :goto_45
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->t()V

    throw v0

    .line 2302
    :sswitch_49
    :try_start_49
    iget v4, p0, Lcom/google/analytics/a/a/l;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/a/a/l;->e:I

    .line 2303
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->d()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/a/a/l;->g:I
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_3b
    .catch Lcom/google/tagmanager/a/ae; {:try_start_49 .. :try_end_55} :catch_35
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_55} :catch_56

    goto :goto_15

    .line 2310
    :catch_56
    move-exception v0

    .line 2311
    :try_start_57
    new-instance v1, Lcom/google/tagmanager/a/ae;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_3b

    .line 2315
    :cond_65
    :try_start_65
    invoke-virtual {v3}, Lcom/google/tagmanager/a/l;->a()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_72

    .line 2319
    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    .line 2321
    :goto_6e
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->t()V

    .line 2322
    return-void

    .line 2319
    :catch_72
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    goto :goto_6e

    :catchall_7a
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    throw v0

    :catch_82
    move-exception v1

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    goto :goto_45

    :catchall_8a
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    throw v0

    .line 2285
    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_26
        0x8 -> :sswitch_28
        0x10 -> :sswitch_49
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2249
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/l;-><init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/u;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 2255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/s;-><init>(B)V

    .line 2378
    iput-byte v1, p0, Lcom/google/analytics/a/a/l;->h:B

    .line 2407
    iput v1, p0, Lcom/google/analytics/a/a/l;->i:I

    .line 2256
    invoke-virtual {p1}, Lcom/google/tagmanager/a/u;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    .line 2257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/u;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2249
    invoke-direct {p0, p1}, Lcom/google/analytics/a/a/l;-><init>(Lcom/google/tagmanager/a/u;)V

    return-void
.end method

.method static synthetic a(Lcom/google/analytics/a/a/l;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2249
    iput p1, p0, Lcom/google/analytics/a/a/l;->f:I

    return p1
.end method

.method public static a()Lcom/google/analytics/a/a/l;
    .registers 1

    .prologue
    .line 2262
    sget-object v0, Lcom/google/analytics/a/a/l;->c:Lcom/google/analytics/a/a/l;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/a/a/l;)Lcom/google/tagmanager/a/g;
    .registers 2
    .parameter

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/analytics/a/a/l;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2249
    iput p1, p0, Lcom/google/analytics/a/a/l;->g:I

    return p1
.end method

.method static synthetic c(Lcom/google/analytics/a/a/l;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2249
    iput p1, p0, Lcom/google/analytics/a/a/l;->e:I

    return p1
.end method

.method private g()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2375
    iput v0, p0, Lcom/google/analytics/a/a/l;->f:I

    .line 2376
    iput v0, p0, Lcom/google/analytics/a/a/l;->g:I

    .line 2377
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/tagmanager/a/ao;
    .registers 2

    .prologue
    .line 2336
    sget-object v0, Lcom/google/analytics/a/a/l;->a:Lcom/google/tagmanager/a/ao;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2348
    iget v1, p0, Lcom/google/analytics/a/a/l;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 2354
    iget v0, p0, Lcom/google/analytics/a/a/l;->f:I

    return v0
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 2365
    iget v0, p0, Lcom/google/analytics/a/a/l;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2435
    if-ne p1, p0, :cond_5

    .line 2454
    :cond_4
    :goto_4
    return v1

    .line 2438
    :cond_5
    instance-of v0, p1, Lcom/google/analytics/a/a/l;

    if-nez v0, :cond_e

    .line 2439
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 2441
    :cond_e
    check-cast p1, Lcom/google/analytics/a/a/l;

    .line 2443
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/l;->c()Z

    move-result v3

    if-ne v0, v3, :cond_47

    move v0, v1

    .line 2445
    :goto_1b
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->c()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2446
    if-eqz v0, :cond_49

    iget v0, p0, Lcom/google/analytics/a/a/l;->f:I

    iget v3, p1, Lcom/google/analytics/a/a/l;->f:I

    if-ne v0, v3, :cond_49

    move v0, v1

    .line 2449
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/l;->e()Z

    move-result v3

    if-ne v0, v3, :cond_4b

    move v0, v1

    .line 2450
    :goto_37
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->e()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2451
    if-eqz v0, :cond_45

    iget v0, p0, Lcom/google/analytics/a/a/l;->g:I

    iget v3, p1, Lcom/google/analytics/a/a/l;->g:I

    if-eq v0, v3, :cond_4

    :cond_45
    move v1, v2

    goto :goto_4

    :cond_47
    move v0, v2

    .line 2443
    goto :goto_1b

    :cond_49
    move v0, v2

    .line 2446
    goto :goto_2a

    :cond_4b
    move v0, v2

    .line 2449
    goto :goto_37

    :cond_4d
    move v1, v0

    goto :goto_4
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 2371
    iget v0, p0, Lcom/google/analytics/a/a/l;->g:I

    return v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 2459
    iget v0, p0, Lcom/google/analytics/a/a/l;->b:I

    if-eqz v0, :cond_7

    .line 2460
    iget v0, p0, Lcom/google/analytics/a/a/l;->b:I

    .line 2474
    :goto_6
    return v0

    .line 2462
    :cond_7
    const-class v0, Lcom/google/analytics/a/a/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 2464
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->c()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2465
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 2466
    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/google/analytics/a/a/l;->f:I

    add-int/2addr v0, v1

    .line 2468
    :cond_1e
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->e()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2469
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 2470
    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/google/analytics/a/a/l;->g:I

    add-int/2addr v0, v1

    .line 2472
    :cond_2d
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/analytics/a/a/l;->d:Lcom/google/tagmanager/a/g;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2473
    iput v0, p0, Lcom/google/analytics/a/a/l;->b:I

    goto :goto_6
.end method

.method public final i()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2380
    iget-byte v2, p0, Lcom/google/analytics/a/a/l;->h:B

    .line 2381
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 2392
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 2381
    goto :goto_9

    .line 2383
    :cond_c
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->c()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2384
    iput-byte v1, p0, Lcom/google/analytics/a/a/l;->h:B

    move v0, v1

    .line 2385
    goto :goto_9

    .line 2387
    :cond_16
    invoke-virtual {p0}, Lcom/google/analytics/a/a/l;->e()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2388
    iput-byte v1, p0, Lcom/google/analytics/a/a/l;->h:B

    move v0, v1

    .line 2389
    goto :goto_9

    .line 2391
    :cond_20
    iput-byte v0, p0, Lcom/google/analytics/a/a/l;->h:B

    goto :goto_9
.end method

.method public final synthetic k()Lcom/google/tagmanager/a/al;
    .registers 2

    .prologue
    .line 2249
    invoke-static {}, Lcom/google/analytics/a/a/n;->a()Lcom/google/analytics/a/a/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/a/a/n;->a(Lcom/google/analytics/a/a/l;)Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lcom/google/tagmanager/a/al;
    .registers 2

    .prologue
    .line 2249
    invoke-static {}, Lcom/google/analytics/a/a/n;->a()Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 2249
    sget-object v0, Lcom/google/analytics/a/a/l;->c:Lcom/google/analytics/a/a/l;

    return-object v0
.end method
