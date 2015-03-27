.class public final Lcom/google/analytics/a/a/n;
.super Lcom/google/tagmanager/a/u;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/a/a/o;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2557
    invoke-direct {p0}, Lcom/google/tagmanager/a/u;-><init>()V

    .line 2558
    return-void
.end method

.method static synthetic a()Lcom/google/analytics/a/a/n;
    .registers 1

    .prologue
    .line 2550
    new-instance v0, Lcom/google/analytics/a/a/n;

    invoke-direct {v0}, Lcom/google/analytics/a/a/n;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/n;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2636
    const/4 v2, 0x0

    .line 2638
    :try_start_1
    sget-object v0, Lcom/google/analytics/a/a/l;->a:Lcom/google/tagmanager/a/ao;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/l;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lcom/google/tagmanager/a/ae; {:try_start_1 .. :try_end_9} :catch_f

    .line 2643
    if-eqz v0, :cond_e

    .line 2644
    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/n;->a(Lcom/google/analytics/a/a/l;)Lcom/google/analytics/a/a/n;

    .line 2647
    :cond_e
    return-object p0

    .line 2639
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 2640
    :try_start_11
    invoke-virtual {v1}, Lcom/google/tagmanager/a/ae;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/l;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 2641
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 2643
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 2644
    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/n;->a(Lcom/google/analytics/a/a/l;)Lcom/google/analytics/a/a/n;

    :cond_21
    throw v0

    .line 2643
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method private f()Lcom/google/analytics/a/a/n;
    .registers 3

    .prologue
    .line 2577
    new-instance v0, Lcom/google/analytics/a/a/n;

    invoke-direct {v0}, Lcom/google/analytics/a/a/n;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/a/a/n;->g()Lcom/google/analytics/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/n;->a(Lcom/google/analytics/a/a/l;)Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/analytics/a/a/l;
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2593
    new-instance v2, Lcom/google/analytics/a/a/l;

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/a/a/l;-><init>(Lcom/google/tagmanager/a/u;B)V

    .line 2594
    iget v3, p0, Lcom/google/analytics/a/a/n;->a:I

    .line 2596
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_22

    .line 2599
    :goto_d
    iget v1, p0, Lcom/google/analytics/a/a/n;->b:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/l;->a(Lcom/google/analytics/a/a/l;I)I

    .line 2600
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    .line 2601
    or-int/lit8 v0, v0, 0x2

    .line 2603
    :cond_19
    iget v1, p0, Lcom/google/analytics/a/a/n;->c:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/l;->b(Lcom/google/analytics/a/a/l;I)I

    .line 2604
    invoke-static {v2, v0}, Lcom/google/analytics/a/a/l;->c(Lcom/google/analytics/a/a/l;I)I

    .line 2605
    return-object v2

    :cond_22
    move v0, v1

    goto :goto_d
.end method


# virtual methods
.method public final a(Lcom/google/analytics/a/a/l;)Lcom/google/analytics/a/a/n;
    .registers 4
    .parameter

    .prologue
    .line 2609
    invoke-static {}, Lcom/google/analytics/a/a/l;->a()Lcom/google/analytics/a/a/l;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2617
    :goto_6
    return-object p0

    .line 2610
    :cond_7
    invoke-virtual {p1}, Lcom/google/analytics/a/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2611
    invoke-virtual {p1}, Lcom/google/analytics/a/a/l;->d()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/n;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/analytics/a/a/n;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/n;->b:I

    .line 2613
    :cond_19
    invoke-virtual {p1}, Lcom/google/analytics/a/a/l;->e()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2614
    invoke-virtual {p1}, Lcom/google/analytics/a/a/l;->f()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/n;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/analytics/a/a/n;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/n;->c:I

    .line 2616
    :cond_2b
    invoke-virtual {p0}, Lcom/google/analytics/a/a/n;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/l;->a(Lcom/google/analytics/a/a/l;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/g;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/n;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/u;

    goto :goto_6
.end method

.method public final synthetic a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2550
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/n;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;
    .registers 3
    .parameter

    .prologue
    .line 2550
    check-cast p1, Lcom/google/analytics/a/a/l;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/n;->a(Lcom/google/analytics/a/a/l;)Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2550
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/n;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/tagmanager/a/s;
    .registers 2

    .prologue
    .line 2550
    invoke-static {}, Lcom/google/analytics/a/a/l;->a()Lcom/google/analytics/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/tagmanager/a/u;
    .registers 2

    .prologue
    .line 2550
    invoke-direct {p0}, Lcom/google/analytics/a/a/n;->f()Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2550
    invoke-direct {p0}, Lcom/google/analytics/a/a/n;->f()Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 2550
    invoke-direct {p0}, Lcom/google/analytics/a/a/n;->f()Lcom/google/analytics/a/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/google/tagmanager/a/ak;
    .registers 3

    .prologue
    .line 2550
    invoke-direct {p0}, Lcom/google/analytics/a/a/n;->g()Lcom/google/analytics/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/l;->i()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Lcom/google/tagmanager/a/bc;

    invoke-direct {v0}, Lcom/google/tagmanager/a/bc;-><init>()V

    throw v0

    :cond_10
    return-object v0
.end method

.method public final i()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2621
    iget v2, p0, Lcom/google/analytics/a/a/n;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_c

    move v2, v1

    :goto_9
    if-nez v2, :cond_e

    .line 2629
    :cond_b
    :goto_b
    return v0

    :cond_c
    move v2, v0

    .line 2621
    goto :goto_9

    .line 2625
    :cond_e
    iget v2, p0, Lcom/google/analytics/a/a/n;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    move v2, v1

    :goto_16
    if-eqz v2, :cond_b

    move v0, v1

    .line 2629
    goto :goto_b

    :cond_1a
    move v2, v0

    .line 2625
    goto :goto_16
.end method

.method public final synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 2550
    invoke-static {}, Lcom/google/analytics/a/a/l;->a()Lcom/google/analytics/a/a/l;

    move-result-object v0

    return-object v0
.end method
