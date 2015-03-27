.class public final Lcom/google/analytics/b/a/a/d;
.super Lcom/google/tagmanager/a/v;
.source "TypeSystem.java"

# interfaces
.implements Lcom/google/analytics/b/a/a/i;


# instance fields
.field private a:I

.field private b:Lcom/google/analytics/b/a/a/g;

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:J

.field private j:Z

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/google/tagmanager/a/v;-><init>()V

    .line 1678
    sget-object v0, Lcom/google/analytics/b/a/a/g;->a:Lcom/google/analytics/b/a/a/g;

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->b:Lcom/google/analytics/b/a/a/g;

    .line 1713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->c:Ljava/lang/Object;

    .line 1789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    .line 1914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    .line 2039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    .line 2164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->g:Ljava/lang/Object;

    .line 2240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->h:Ljava/lang/Object;

    .line 2380
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    .line 2505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    .line 1424
    return-void
.end method

.method private c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/b/a/a/d;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1663
    const/4 v2, 0x0

    .line 1665
    :try_start_1
    sget-object v0, Lcom/google/analytics/b/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lcom/google/tagmanager/a/ae; {:try_start_1 .. :try_end_9} :catch_f

    .line 1670
    if-eqz v0, :cond_e

    .line 1671
    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    .line 1674
    :cond_e
    return-object p0

    .line 1666
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 1667
    :try_start_11
    invoke-virtual {v1}, Lcom/google/tagmanager/a/ae;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 1668
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 1670
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 1671
    invoke-virtual {p0, v1}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    :cond_21
    throw v0

    .line 1670
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method static synthetic g()Lcom/google/analytics/b/a/a/d;
    .registers 1

    .prologue
    .line 1417
    new-instance v0, Lcom/google/analytics/b/a/a/d;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/d;-><init>()V

    return-object v0
.end method

.method private k()Lcom/google/analytics/b/a/a/d;
    .registers 3

    .prologue
    .line 1463
    new-instance v0, Lcom/google/analytics/b/a/a/d;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/d;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->l()Lcom/google/analytics/b/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/google/analytics/b/a/a/b;
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1479
    new-instance v2, Lcom/google/analytics/b/a/a/b;

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/b/a/a/b;-><init>(Lcom/google/tagmanager/a/v;B)V

    .line 1480
    iget v3, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1482
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e9

    .line 1485
    :goto_d
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->b:Lcom/google/analytics/b/a/a/g;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/analytics/b/a/a/b;Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/g;

    .line 1486
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_19

    .line 1487
    or-int/lit8 v0, v0, 0x2

    .line 1489
    :cond_19
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/analytics/b/a/a/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_33

    .line 1491
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    .line 1492
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1494
    :cond_33
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;

    .line 1495
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_4e

    .line 1496
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    .line 1497
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1499
    :cond_4e
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->b(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;

    .line 1500
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_69

    .line 1501
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    .line 1502
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1504
    :cond_69
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->c(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;

    .line 1505
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_76

    .line 1506
    or-int/lit8 v0, v0, 0x4

    .line 1508
    :cond_76
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->b(Lcom/google/analytics/b/a/a/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_83

    .line 1510
    or-int/lit8 v0, v0, 0x8

    .line 1512
    :cond_83
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->c(Lcom/google/analytics/b/a/a/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_90

    .line 1514
    or-int/lit8 v0, v0, 0x10

    .line 1516
    :cond_90
    iget-wide v4, p0, Lcom/google/analytics/b/a/a/d;->i:J

    invoke-static {v2, v4, v5}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/analytics/b/a/a/b;J)J

    .line 1517
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_9d

    .line 1518
    or-int/lit8 v0, v0, 0x20

    .line 1520
    :cond_9d
    iget-boolean v1, p0, Lcom/google/analytics/b/a/a/d;->j:Z

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/analytics/b/a/a/b;Z)Z

    .line 1521
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v1, v1, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_b8

    .line 1522
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    .line 1523
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1525
    :cond_b8
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->d(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;

    .line 1526
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v1, v1, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_d3

    .line 1527
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    .line 1528
    iget v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1530
    :cond_d3
    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->e(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;

    .line 1531
    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_e0

    .line 1532
    or-int/lit8 v0, v0, 0x40

    .line 1534
    :cond_e0
    iget-boolean v1, p0, Lcom/google/analytics/b/a/a/d;->m:Z

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/b;->b(Lcom/google/analytics/b/a/a/b;Z)Z

    .line 1535
    invoke-static {v2, v0}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/analytics/b/a/a/b;I)I

    .line 1536
    return-object v2

    :cond_e9
    move v0, v1

    goto/16 :goto_d
.end method

.method private n()V
    .registers 3

    .prologue
    .line 1792
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1793
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    .line 1794
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1796
    :cond_16
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 1917
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 1918
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    .line 1919
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1921
    :cond_17
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 2042
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    .line 2044
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 2046
    :cond_17
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/analytics/b/a/a/b;
    .registers 3

    .prologue
    .line 1471
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->l()Lcom/google/analytics/b/a/a/b;

    move-result-object v0

    .line 1472
    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1473
    new-instance v0, Lcom/google/tagmanager/a/bc;

    invoke-direct {v0}, Lcom/google/tagmanager/a/bc;-><init>()V

    throw v0

    .line 1475
    :cond_10
    return-object v0
.end method

.method public final a(J)Lcom/google/analytics/b/a/a/d;
    .registers 4
    .parameter

    .prologue
    .line 2333
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 2334
    iput-wide p1, p0, Lcom/google/analytics/b/a/a/d;->i:J

    .line 2336
    return-object p0
.end method

.method public final a(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;
    .registers 4
    .parameter

    .prologue
    .line 1540
    invoke-static {}, Lcom/google/analytics/b/a/a/b;->a()Lcom/google/analytics/b/a/a/b;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1620
    :goto_6
    return-object p0

    .line 1541
    :cond_7
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1542
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->d()Lcom/google/analytics/b/a/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;

    .line 1544
    :cond_14
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1545
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1546
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/analytics/b/a/a/b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->c:Ljava/lang/Object;

    .line 1549
    :cond_26
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->b(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1550
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 1551
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->b(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    .line 1552
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1559
    :cond_44
    :goto_44
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->c(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 1560
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1561
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->c(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    .line 1562
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1569
    :cond_62
    :goto_62
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->d(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1570
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 1571
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->d(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    .line 1572
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1579
    :cond_80
    :goto_80
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1580
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1581
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->e(Lcom/google/analytics/b/a/a/b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->g:Ljava/lang/Object;

    .line 1584
    :cond_92
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1585
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1586
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->f(Lcom/google/analytics/b/a/a/b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->h:Ljava/lang/Object;

    .line 1589
    :cond_a4
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1590
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/analytics/b/a/a/d;->a(J)Lcom/google/analytics/b/a/a/d;

    .line 1592
    :cond_b1
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->n()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1593
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/d;->a(Z)Lcom/google/analytics/b/a/a/d;

    .line 1595
    :cond_be
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->g(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1596
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 1597
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->g(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    .line 1598
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1605
    :cond_dc
    :goto_dc
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->h(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fa

    .line 1606
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 1607
    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->h(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    .line 1608
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1615
    :cond_fa
    :goto_fa
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->p()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1616
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/d;->b(Z)Lcom/google/analytics/b/a/a/d;

    .line 1618
    :cond_107
    invoke-virtual {p0, p1}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/tagmanager/a/w;)V

    .line 1619
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/d;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->i(Lcom/google/analytics/b/a/a/b;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/g;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/u;

    goto/16 :goto_6

    .line 1554
    :cond_11b
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->n()V

    .line 1555
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->b(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_44

    .line 1564
    :cond_129
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->o()V

    .line 1565
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->c(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_62

    .line 1574
    :cond_137
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->p()V

    .line 1575
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->d(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_80

    .line 1600
    :cond_145
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_15c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1601
    :cond_15c
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->g(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_dc

    .line 1610
    :cond_167
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_17e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1611
    :cond_17e
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->l:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/b;->h(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_fa
.end method

.method public final a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;
    .registers 3
    .parameter

    .prologue
    .line 1695
    if-nez p1, :cond_8

    .line 1696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1698
    :cond_8
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1699
    iput-object p1, p0, Lcom/google/analytics/b/a/a/d;->b:Lcom/google/analytics/b/a/a/g;

    .line 1701
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/analytics/b/a/a/d;
    .registers 3
    .parameter

    .prologue
    .line 1758
    if-nez p1, :cond_8

    .line 1759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1761
    :cond_8
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 1762
    iput-object p1, p0, Lcom/google/analytics/b/a/a/d;->c:Ljava/lang/Object;

    .line 1764
    return-object p0
.end method

.method public final a(Z)Lcom/google/analytics/b/a/a/d;
    .registers 3
    .parameter

    .prologue
    .line 2365
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 2366
    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/d;->j:Z

    .line 2368
    return-object p0
.end method

.method public final synthetic a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1417
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/b/a/a/d;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;
    .registers 3
    .parameter

    .prologue
    .line 1417
    check-cast p1, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {p0, p1}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;
    .registers 3
    .parameter

    .prologue
    .line 1843
    if-nez p1, :cond_8

    .line 1844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1846
    :cond_8
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->n()V

    .line 1847
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    return-object p0
.end method

.method public final b(Z)Lcom/google/analytics/b/a/a/d;
    .registers 3
    .parameter

    .prologue
    .line 2594
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    .line 2595
    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/d;->m:Z

    .line 2597
    return-object p0
.end method

.method public final synthetic b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1417
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/b/a/a/d;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/tagmanager/a/s;
    .registers 2

    .prologue
    .line 1417
    invoke-static {}, Lcom/google/analytics/b/a/a/b;->a()Lcom/google/analytics/b/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;
    .registers 3
    .parameter

    .prologue
    .line 1968
    if-nez p1, :cond_8

    .line 1969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1971
    :cond_8
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->o()V

    .line 1972
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1974
    return-object p0
.end method

.method public final synthetic c()Lcom/google/tagmanager/a/u;
    .registers 2

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->k()Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->k()Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;
    .registers 3
    .parameter

    .prologue
    .line 2093
    if-nez p1, :cond_8

    .line 2094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2096
    :cond_8
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->p()V

    .line 2097
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    return-object p0
.end method

.method public final synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->k()Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/d;->a()Lcom/google/analytics/b/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/google/tagmanager/a/v;
    .registers 2

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/d;->k()Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1624
    iget v0, p0, Lcom/google/analytics/b/a/a/d;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_c

    move v0, v3

    :goto_9
    if-nez v0, :cond_e

    .line 1656
    :cond_b
    :goto_b
    return v2

    :cond_c
    move v0, v2

    .line 1624
    goto :goto_9

    :cond_e
    move v1, v2

    .line 1628
    :goto_f
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 1629
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1628
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_29
    move v1, v2

    .line 1634
    :goto_2a
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_44

    .line 1635
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1634
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_44
    move v1, v2

    .line 1640
    :goto_45
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5f

    .line 1641
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1640
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_45

    :cond_5f
    move v1, v2

    .line 1646
    :goto_60
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7a

    .line 1647
    iget-object v0, p0, Lcom/google/analytics/b/a/a/d;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60

    .line 1652
    :cond_7a
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v3

    .line 1656
    goto :goto_b
.end method

.method public final synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 1417
    invoke-static {}, Lcom/google/analytics/b/a/a/b;->a()Lcom/google/analytics/b/a/a/b;

    move-result-object v0

    return-object v0
.end method
