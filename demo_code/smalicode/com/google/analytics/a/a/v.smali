.class public final Lcom/google/analytics/a/a/v;
.super Lcom/google/tagmanager/a/u;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/a/a/w;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4591
    invoke-direct {p0}, Lcom/google/tagmanager/a/u;-><init>()V

    .line 4827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    .line 4893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    .line 4959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    .line 5025
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    .line 5091
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    .line 5157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    .line 5223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    .line 5289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    .line 5355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    .line 5421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    .line 4592
    return-void
.end method

.method static synthetic a()Lcom/google/analytics/a/a/v;
    .registers 1

    .prologue
    .line 4584
    new-instance v0, Lcom/google/analytics/a/a/v;

    invoke-direct {v0}, Lcom/google/analytics/a/a/v;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/v;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 4812
    const/4 v2, 0x0

    .line 4814
    :try_start_1
    sget-object v0, Lcom/google/analytics/a/a/t;->a:Lcom/google/tagmanager/a/ao;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/t;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lcom/google/tagmanager/a/ae; {:try_start_1 .. :try_end_9} :catch_f

    .line 4819
    if-eqz v0, :cond_e

    .line 4820
    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/v;->a(Lcom/google/analytics/a/a/t;)Lcom/google/analytics/a/a/v;

    .line 4823
    :cond_e
    return-object p0

    .line 4815
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 4816
    :try_start_11
    invoke-virtual {v1}, Lcom/google/tagmanager/a/ae;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/t;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 4817
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 4819
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 4820
    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/v;->a(Lcom/google/analytics/a/a/t;)Lcom/google/analytics/a/a/v;

    :cond_21
    throw v0

    .line 4819
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method private f()Lcom/google/analytics/a/a/v;
    .registers 3

    .prologue
    .line 4627
    new-instance v0, Lcom/google/analytics/a/a/v;

    invoke-direct {v0}, Lcom/google/analytics/a/a/v;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/a/a/v;->g()Lcom/google/analytics/a/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/v;->a(Lcom/google/analytics/a/a/t;)Lcom/google/analytics/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/analytics/a/a/t;
    .registers 4

    .prologue
    .line 4643
    new-instance v0, Lcom/google/analytics/a/a/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/a/a/t;-><init>(Lcom/google/tagmanager/a/u;B)V

    .line 4644
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4645
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 4646
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    .line 4647
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4649
    :cond_1d
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->a(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4650
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    .line 4651
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    .line 4652
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4654
    :cond_37
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->b(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4655
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_51

    .line 4656
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    .line 4657
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4659
    :cond_51
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->c(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4660
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6c

    .line 4661
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    .line 4662
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4664
    :cond_6c
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->d(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4665
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_87

    .line 4666
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    .line 4667
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4669
    :cond_87
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->e(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4670
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_a2

    .line 4671
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    .line 4672
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4674
    :cond_a2
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->f(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4675
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_bd

    .line 4676
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    .line 4677
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4679
    :cond_bd
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->g(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4680
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_d8

    .line 4681
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    .line 4682
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4684
    :cond_d8
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->h(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4685
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_f3

    .line 4686
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    .line 4687
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4689
    :cond_f3
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->i(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4690
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_10e

    .line 4691
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    .line 4692
    iget v1, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4694
    :cond_10e
    iget-object v1, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/t;->j(Lcom/google/analytics/a/a/t;Ljava/util/List;)Ljava/util/List;

    .line 4695
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/analytics/a/a/t;)Lcom/google/analytics/a/a/v;
    .registers 4
    .parameter

    .prologue
    .line 4699
    invoke-static {}, Lcom/google/analytics/a/a/t;->a()Lcom/google/analytics/a/a/t;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4801
    :goto_6
    return-object p0

    .line 4700
    :cond_7
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->a(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4701
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 4702
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->a(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    .line 4703
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4710
    :cond_25
    :goto_25
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->b(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 4711
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 4712
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->b(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    .line 4713
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4720
    :cond_43
    :goto_43
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->c(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 4721
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_186

    .line 4722
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->c(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    .line 4723
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4730
    :cond_61
    :goto_61
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->d(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 4731
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 4732
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->d(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    .line 4733
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4740
    :cond_7f
    :goto_7f
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->e(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 4741
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 4742
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->e(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    .line 4743
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4750
    :cond_9d
    :goto_9d
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->f(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 4751
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 4752
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->f(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    .line 4753
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4760
    :cond_bb
    :goto_bb
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->g(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 4761
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 4762
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->g(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    .line 4763
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4770
    :cond_d9
    :goto_d9
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->h(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 4771
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 4772
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->h(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    .line 4773
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4780
    :cond_f7
    :goto_f7
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->i(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_115

    .line 4781
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_251

    .line 4782
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->i(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    .line 4783
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4790
    :cond_115
    :goto_115
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->j(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_133

    .line 4791
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_273

    .line 4792
    invoke-static {p1}, Lcom/google/analytics/a/a/t;->j(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    .line 4793
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4800
    :cond_133
    :goto_133
    invoke-virtual {p0}, Lcom/google/analytics/a/a/v;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->k(Lcom/google/analytics/a/a/t;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/g;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/v;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/u;

    goto/16 :goto_6

    .line 4705
    :cond_144
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4706
    :cond_15a
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->a(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 4715
    :cond_165
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4716
    :cond_17b
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->b(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_43

    .line 4725
    :cond_186
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4726
    :cond_19c
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->c(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_61

    .line 4735
    :cond_1a7
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1be

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4736
    :cond_1be
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->d(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7f

    .line 4745
    :cond_1c9
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1e0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4746
    :cond_1e0
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->e(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9d

    .line 4755
    :cond_1eb
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_202

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4756
    :cond_202
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->f(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_bb

    .line 4765
    :cond_20d
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_224

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4766
    :cond_224
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->g(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d9

    .line 4775
    :cond_22f
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_246

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4776
    :cond_246
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->h(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_f7

    .line 4785
    :cond_251
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_268

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4786
    :cond_268
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->i(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_115

    .line 4795
    :cond_273
    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_28a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/v;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/a/a/v;->a:I

    .line 4796
    :cond_28a
    iget-object v0, p0, Lcom/google/analytics/a/a/v;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/t;->j(Lcom/google/analytics/a/a/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_133
.end method

.method public final synthetic a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4584
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/v;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;
    .registers 3
    .parameter

    .prologue
    .line 4584
    check-cast p1, Lcom/google/analytics/a/a/t;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/v;->a(Lcom/google/analytics/a/a/t;)Lcom/google/analytics/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4584
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/v;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/tagmanager/a/s;
    .registers 2

    .prologue
    .line 4584
    invoke-static {}, Lcom/google/analytics/a/a/t;->a()Lcom/google/analytics/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/tagmanager/a/u;
    .registers 2

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/a/a/v;->f()Lcom/google/analytics/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/a/a/v;->f()Lcom/google/analytics/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/a/a/v;->f()Lcom/google/analytics/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/google/tagmanager/a/ak;
    .registers 3

    .prologue
    .line 4584
    invoke-direct {p0}, Lcom/google/analytics/a/a/v;->g()Lcom/google/analytics/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/t;->i()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Lcom/google/tagmanager/a/bc;

    invoke-direct {v0}, Lcom/google/tagmanager/a/bc;-><init>()V

    throw v0

    :cond_10
    return-object v0
.end method

.method public final i()Z
    .registers 2

    .prologue
    .line 4805
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 4584
    invoke-static {}, Lcom/google/analytics/a/a/t;->a()Lcom/google/analytics/a/a/t;

    move-result-object v0

    return-object v0
.end method
