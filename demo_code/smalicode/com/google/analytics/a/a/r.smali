.class public final Lcom/google/analytics/a/a/r;
.super Lcom/google/tagmanager/a/u;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/a/a/s;


# instance fields
.field private a:I

.field private b:Lcom/google/tagmanager/a/ah;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Lcom/google/analytics/a/a/b;

.field private n:F

.field private o:Z

.field private p:Lcom/google/tagmanager/a/ah;

.field private q:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7554
    invoke-direct {p0}, Lcom/google/tagmanager/a/u;-><init>()V

    .line 7870
    sget-object v0, Lcom/google/tagmanager/a/ag;->a:Lcom/google/tagmanager/a/ah;

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    .line 7963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    .line 8088
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    .line 8213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    .line 8338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    .line 8463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    .line 8588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    .line 8713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->i:Ljava/lang/Object;

    .line 8789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->j:Ljava/lang/Object;

    .line 8865
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->k:Ljava/lang/Object;

    .line 8941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->l:Ljava/lang/Object;

    .line 9017
    invoke-static {}, Lcom/google/analytics/a/a/b;->a()Lcom/google/analytics/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->m:Lcom/google/analytics/a/a/b;

    .line 9141
    sget-object v0, Lcom/google/tagmanager/a/ag;->a:Lcom/google/tagmanager/a/ah;

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    .line 7555
    return-void
.end method

.method static synthetic a()Lcom/google/analytics/a/a/r;
    .registers 1

    .prologue
    .line 7547
    new-instance v0, Lcom/google/analytics/a/a/r;

    invoke-direct {v0}, Lcom/google/analytics/a/a/r;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/r;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 7855
    const/4 v2, 0x0

    .line 7857
    :try_start_1
    sget-object v0, Lcom/google/analytics/a/a/p;->a:Lcom/google/tagmanager/a/ao;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/p;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lcom/google/tagmanager/a/ae; {:try_start_1 .. :try_end_9} :catch_f

    .line 7862
    if-eqz v0, :cond_e

    .line 7863
    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/r;->a(Lcom/google/analytics/a/a/p;)Lcom/google/analytics/a/a/r;

    .line 7866
    :cond_e
    return-object p0

    .line 7858
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 7859
    :try_start_11
    invoke-virtual {v1}, Lcom/google/tagmanager/a/ae;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/p;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 7860
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 7862
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 7863
    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/r;->a(Lcom/google/analytics/a/a/p;)Lcom/google/analytics/a/a/r;

    :cond_21
    throw v0

    .line 7862
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method private f()Lcom/google/analytics/a/a/r;
    .registers 3

    .prologue
    .line 7602
    new-instance v0, Lcom/google/analytics/a/a/r;

    invoke-direct {v0}, Lcom/google/analytics/a/a/r;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/a/a/r;->g()Lcom/google/analytics/a/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/r;->a(Lcom/google/analytics/a/a/p;)Lcom/google/analytics/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/analytics/a/a/p;
    .registers 8

    .prologue
    const v6, 0x8000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7618
    new-instance v2, Lcom/google/analytics/a/a/p;

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/a/a/p;-><init>(Lcom/google/tagmanager/a/u;B)V

    .line 7619
    iget v3, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7621
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_21

    .line 7622
    new-instance v4, Lcom/google/tagmanager/a/bd;

    iget-object v5, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    invoke-direct {v4, v5}, Lcom/google/tagmanager/a/bd;-><init>(Lcom/google/tagmanager/a/ah;)V

    iput-object v4, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    .line 7624
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7626
    :cond_21
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;Lcom/google/tagmanager/a/ah;)Lcom/google/tagmanager/a/ah;

    .line 7627
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    .line 7628
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    .line 7629
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7631
    :cond_3b
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;Ljava/util/List;)Ljava/util/List;

    .line 7632
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_55

    .line 7633
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    .line 7634
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7636
    :cond_55
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/p;->b(Lcom/google/analytics/a/a/p;Ljava/util/List;)Ljava/util/List;

    .line 7637
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_70

    .line 7638
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    .line 7639
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7641
    :cond_70
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/p;->c(Lcom/google/analytics/a/a/p;Ljava/util/List;)Ljava/util/List;

    .line 7642
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_8b

    .line 7643
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    .line 7644
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7646
    :cond_8b
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/p;->d(Lcom/google/analytics/a/a/p;Ljava/util/List;)Ljava/util/List;

    .line 7647
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a6

    .line 7648
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    .line 7649
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7651
    :cond_a6
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/p;->e(Lcom/google/analytics/a/a/p;Ljava/util/List;)Ljava/util/List;

    .line 7652
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_c1

    .line 7653
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    .line 7654
    iget v4, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v4, v4, -0x41

    iput v4, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7656
    :cond_c1
    iget-object v4, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/p;->f(Lcom/google/analytics/a/a/p;Ljava/util/List;)Ljava/util/List;

    .line 7657
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_14a

    .line 7660
    :goto_cc
    iget-object v1, p0, Lcom/google/analytics/a/a/r;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7661
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_d9

    .line 7662
    or-int/lit8 v0, v0, 0x2

    .line 7664
    :cond_d9
    iget-object v1, p0, Lcom/google/analytics/a/a/r;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->b(Lcom/google/analytics/a/a/p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7665
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_e6

    .line 7666
    or-int/lit8 v0, v0, 0x4

    .line 7668
    :cond_e6
    iget-object v1, p0, Lcom/google/analytics/a/a/r;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->c(Lcom/google/analytics/a/a/p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7669
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_f3

    .line 7670
    or-int/lit8 v0, v0, 0x8

    .line 7672
    :cond_f3
    iget-object v1, p0, Lcom/google/analytics/a/a/r;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->d(Lcom/google/analytics/a/a/p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7673
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_100

    .line 7674
    or-int/lit8 v0, v0, 0x10

    .line 7676
    :cond_100
    iget-object v1, p0, Lcom/google/analytics/a/a/r;->m:Lcom/google/analytics/a/a/b;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/b;

    .line 7677
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_10d

    .line 7678
    or-int/lit8 v0, v0, 0x20

    .line 7680
    :cond_10d
    iget v1, p0, Lcom/google/analytics/a/a/r;->n:F

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;F)F

    .line 7681
    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_11a

    .line 7682
    or-int/lit8 v0, v0, 0x40

    .line 7684
    :cond_11a
    iget-boolean v1, p0, Lcom/google/analytics/a/a/r;->o:Z

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;Z)Z

    .line 7685
    iget v1, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_136

    .line 7686
    new-instance v1, Lcom/google/tagmanager/a/bd;

    iget-object v4, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    invoke-direct {v1, v4}, Lcom/google/tagmanager/a/bd;-><init>(Lcom/google/tagmanager/a/ah;)V

    iput-object v1, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    .line 7688
    iget v1, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7690
    :cond_136
    iget-object v1, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->b(Lcom/google/analytics/a/a/p;Lcom/google/tagmanager/a/ah;)Lcom/google/tagmanager/a/ah;

    .line 7691
    and-int v1, v3, v6

    if-ne v1, v6, :cond_141

    .line 7692
    or-int/lit16 v0, v0, 0x80

    .line 7694
    :cond_141
    iget v1, p0, Lcom/google/analytics/a/a/r;->q:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;I)I

    .line 7695
    invoke-static {v2, v0}, Lcom/google/analytics/a/a/p;->b(Lcom/google/analytics/a/a/p;I)I

    .line 7696
    return-object v2

    :cond_14a
    move v0, v1

    goto :goto_cc
.end method


# virtual methods
.method public final a(Lcom/google/analytics/a/a/p;)Lcom/google/analytics/a/a/r;
    .registers 5
    .parameter

    .prologue
    .line 7700
    invoke-static {}, Lcom/google/analytics/a/a/p;->a()Lcom/google/analytics/a/a/p;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7814
    :goto_6
    return-object p0

    .line 7701
    :cond_7
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;)Lcom/google/tagmanager/a/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/a/ah;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 7702
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ah;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 7703
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;)Lcom/google/tagmanager/a/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    .line 7704
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7711
    :cond_25
    :goto_25
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->b(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 7712
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 7713
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->b(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    .line 7714
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7721
    :cond_43
    :goto_43
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->c(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 7722
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 7723
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->c(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    .line 7724
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7731
    :cond_61
    :goto_61
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->d(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 7732
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 7733
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->d(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    .line 7734
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7741
    :cond_7f
    :goto_7f
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->e(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 7742
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 7743
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->e(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    .line 7744
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7751
    :cond_9d
    :goto_9d
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->f(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 7752
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 7753
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->f(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    .line 7754
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7761
    :cond_bb
    :goto_bb
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->g(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 7762
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_281

    .line 7763
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->g(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    .line 7764
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7771
    :cond_d9
    :goto_d9
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->c()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 7772
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7773
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->h(Lcom/google/analytics/a/a/p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->i:Ljava/lang/Object;

    .line 7776
    :cond_eb
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->d()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 7777
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7778
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->i(Lcom/google/analytics/a/a/p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->j:Ljava/lang/Object;

    .line 7781
    :cond_fd
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->e()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 7782
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7783
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->j(Lcom/google/analytics/a/a/p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->k:Ljava/lang/Object;

    .line 7786
    :cond_10f
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->f()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 7787
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7788
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->k(Lcom/google/analytics/a/a/p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->l:Ljava/lang/Object;

    .line 7791
    :cond_121
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->h()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 7792
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->j()Lcom/google/analytics/a/a/b;

    move-result-object v0

    iget v1, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_2a3

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->m:Lcom/google/analytics/a/a/b;

    invoke-static {}, Lcom/google/analytics/a/a/b;->a()Lcom/google/analytics/a/a/b;

    move-result-object v2

    if-eq v1, v2, :cond_2a3

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->m:Lcom/google/analytics/a/a/b;

    invoke-static {v1}, Lcom/google/analytics/a/a/b;->a(Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/analytics/a/a/d;->a(Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/d;->a()Lcom/google/analytics/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->m:Lcom/google/analytics/a/a/b;

    :goto_14b
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7794
    :cond_151
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->n()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 7795
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->o()F

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/analytics/a/a/r;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/r;->n:F

    .line 7797
    :cond_163
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->p()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 7798
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->q()Z

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/analytics/a/a/r;->a:I

    iput-boolean v0, p0, Lcom/google/analytics/a/a/r;->o:Z

    .line 7800
    :cond_175
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->l(Lcom/google/analytics/a/a/p;)Lcom/google/tagmanager/a/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/a/ah;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_193

    .line 7801
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ah;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a7

    .line 7802
    invoke-static {p1}, Lcom/google/analytics/a/a/p;->l(Lcom/google/analytics/a/a/p;)Lcom/google/tagmanager/a/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    .line 7803
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7810
    :cond_193
    :goto_193
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->r()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 7811
    invoke-virtual {p1}, Lcom/google/analytics/a/a/p;->s()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/r;->a:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/analytics/a/a/r;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/r;->q:I

    .line 7813
    :cond_1a7
    invoke-virtual {p0}, Lcom/google/analytics/a/a/r;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->m(Lcom/google/analytics/a/a/p;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/g;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/r;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/u;

    goto/16 :goto_6

    .line 7706
    :cond_1b8
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1ce

    new-instance v0, Lcom/google/tagmanager/a/ag;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ag;-><init>(Lcom/google/tagmanager/a/ah;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7707
    :cond_1ce
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->b:Lcom/google/tagmanager/a/ah;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->a(Lcom/google/analytics/a/a/p;)Lcom/google/tagmanager/a/ah;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/a/ah;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 7716
    :cond_1d9
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1ef

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7717
    :cond_1ef
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->b(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_43

    .line 7726
    :cond_1fa
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_210

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7727
    :cond_210
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->c(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_61

    .line 7736
    :cond_21b
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_232

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7737
    :cond_232
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->d(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7f

    .line 7746
    :cond_23d
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_254

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7747
    :cond_254
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->e(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9d

    .line 7756
    :cond_25f
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_276

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7757
    :cond_276
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->f(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_bb

    .line 7766
    :cond_281
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_298

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7767
    :cond_298
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->g(Lcom/google/analytics/a/a/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d9

    .line 7792
    :cond_2a3
    iput-object v0, p0, Lcom/google/analytics/a/a/r;->m:Lcom/google/analytics/a/a/b;

    goto/16 :goto_14b

    .line 7805
    :cond_2a7
    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_2be

    new-instance v0, Lcom/google/tagmanager/a/ag;

    iget-object v1, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ag;-><init>(Lcom/google/tagmanager/a/ah;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    iget v0, p0, Lcom/google/analytics/a/a/r;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/analytics/a/a/r;->a:I

    .line 7806
    :cond_2be
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->p:Lcom/google/tagmanager/a/ah;

    invoke-static {p1}, Lcom/google/analytics/a/a/p;->l(Lcom/google/analytics/a/a/p;)Lcom/google/tagmanager/a/ah;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/a/ah;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_193
.end method

.method public final synthetic a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 7547
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/r;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;
    .registers 3
    .parameter

    .prologue
    .line 7547
    check-cast p1, Lcom/google/analytics/a/a/p;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/r;->a(Lcom/google/analytics/a/a/p;)Lcom/google/analytics/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 7547
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/r;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/tagmanager/a/s;
    .registers 2

    .prologue
    .line 7547
    invoke-static {}, Lcom/google/analytics/a/a/p;->a()Lcom/google/analytics/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/tagmanager/a/u;
    .registers 2

    .prologue
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/a/a/r;->f()Lcom/google/analytics/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/a/a/r;->f()Lcom/google/analytics/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/a/a/r;->f()Lcom/google/analytics/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/google/tagmanager/a/ak;
    .registers 3

    .prologue
    .line 7547
    invoke-direct {p0}, Lcom/google/analytics/a/a/r;->g()Lcom/google/analytics/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/p;->i()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Lcom/google/tagmanager/a/bc;

    invoke-direct {v0}, Lcom/google/tagmanager/a/bc;-><init>()V

    throw v0

    :cond_10
    return-object v0
.end method

.method public final i()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 7818
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 7819
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_19

    .line 7848
    :cond_18
    :goto_18
    return v2

    .line 7818
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1d
    move v1, v2

    .line 7824
    :goto_1e
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_38

    .line 7825
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/l;

    invoke-virtual {v0}, Lcom/google/analytics/a/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7824
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_38
    move v1, v2

    .line 7830
    :goto_39
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 7831
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/h;

    invoke-virtual {v0}, Lcom/google/analytics/a/a/h;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7830
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    :cond_53
    move v1, v2

    .line 7836
    :goto_54
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6e

    .line 7837
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/h;

    invoke-virtual {v0}, Lcom/google/analytics/a/a/h;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7836
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_54

    :cond_6e
    move v1, v2

    .line 7842
    :goto_6f
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_89

    .line 7843
    iget-object v0, p0, Lcom/google/analytics/a/a/r;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/h;

    invoke-virtual {v0}, Lcom/google/analytics/a/a/h;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7842
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f

    .line 7848
    :cond_89
    const/4 v2, 0x1

    goto :goto_18
.end method

.method public final synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 7547
    invoke-static {}, Lcom/google/analytics/a/a/p;->a()Lcom/google/analytics/a/a/p;

    move-result-object v0

    return-object v0
.end method
