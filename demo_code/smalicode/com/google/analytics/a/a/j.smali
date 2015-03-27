.class public final Lcom/google/analytics/a/a/j;
.super Lcom/google/tagmanager/a/u;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/a/a/k;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3233
    invoke-direct {p0}, Lcom/google/tagmanager/a/u;-><init>()V

    .line 3358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    .line 3234
    return-void
.end method

.method static synthetic a()Lcom/google/analytics/a/a/j;
    .registers 1

    .prologue
    .line 3226
    new-instance v0, Lcom/google/analytics/a/a/j;

    invoke-direct {v0}, Lcom/google/analytics/a/a/j;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/j;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3343
    const/4 v2, 0x0

    .line 3345
    :try_start_1
    sget-object v0, Lcom/google/analytics/a/a/h;->a:Lcom/google/tagmanager/a/ao;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/h;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lcom/google/tagmanager/a/ae; {:try_start_1 .. :try_end_9} :catch_f

    .line 3350
    if-eqz v0, :cond_e

    .line 3351
    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/j;->a(Lcom/google/analytics/a/a/h;)Lcom/google/analytics/a/a/j;

    .line 3354
    :cond_e
    return-object p0

    .line 3346
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 3347
    :try_start_11
    invoke-virtual {v1}, Lcom/google/tagmanager/a/ae;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/h;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 3348
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 3350
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 3351
    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/j;->a(Lcom/google/analytics/a/a/h;)Lcom/google/analytics/a/a/j;

    :cond_21
    throw v0

    .line 3350
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method private f()Lcom/google/analytics/a/a/j;
    .registers 3

    .prologue
    .line 3259
    new-instance v0, Lcom/google/analytics/a/a/j;

    invoke-direct {v0}, Lcom/google/analytics/a/a/j;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/a/a/j;->g()Lcom/google/analytics/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/j;->a(Lcom/google/analytics/a/a/h;)Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/analytics/a/a/h;
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3275
    new-instance v2, Lcom/google/analytics/a/a/h;

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/a/a/h;-><init>(Lcom/google/tagmanager/a/u;B)V

    .line 3276
    iget v3, p0, Lcom/google/analytics/a/a/j;->a:I

    .line 3278
    iget v4, p0, Lcom/google/analytics/a/a/j;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_1d

    .line 3279
    iget-object v4, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    .line 3280
    iget v4, p0, Lcom/google/analytics/a/a/j;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/google/analytics/a/a/j;->a:I

    .line 3282
    :cond_1d
    iget-object v4, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/h;->a(Lcom/google/analytics/a/a/h;Ljava/util/List;)Ljava/util/List;

    .line 3283
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_56

    .line 3286
    :goto_27
    iget v1, p0, Lcom/google/analytics/a/a/j;->c:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/h;->a(Lcom/google/analytics/a/a/h;I)I

    .line 3287
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_33

    .line 3288
    or-int/lit8 v0, v0, 0x2

    .line 3290
    :cond_33
    iget v1, p0, Lcom/google/analytics/a/a/j;->d:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/h;->b(Lcom/google/analytics/a/a/h;I)I

    .line 3291
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_40

    .line 3292
    or-int/lit8 v0, v0, 0x4

    .line 3294
    :cond_40
    iget-boolean v1, p0, Lcom/google/analytics/a/a/j;->e:Z

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/h;->a(Lcom/google/analytics/a/a/h;Z)Z

    .line 3295
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4d

    .line 3296
    or-int/lit8 v0, v0, 0x8

    .line 3298
    :cond_4d
    iget-boolean v1, p0, Lcom/google/analytics/a/a/j;->f:Z

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/h;->b(Lcom/google/analytics/a/a/h;Z)Z

    .line 3299
    invoke-static {v2, v0}, Lcom/google/analytics/a/a/h;->c(Lcom/google/analytics/a/a/h;I)I

    .line 3300
    return-object v2

    :cond_56
    move v0, v1

    goto :goto_27
.end method


# virtual methods
.method public final a(Lcom/google/analytics/a/a/h;)Lcom/google/analytics/a/a/j;
    .registers 4
    .parameter

    .prologue
    .line 3304
    invoke-static {}, Lcom/google/analytics/a/a/h;->a()Lcom/google/analytics/a/a/h;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3328
    :goto_6
    return-object p0

    .line 3305
    :cond_7
    invoke-static {p1}, Lcom/google/analytics/a/a/h;->a(Lcom/google/analytics/a/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3306
    iget-object v0, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 3307
    invoke-static {p1}, Lcom/google/analytics/a/a/h;->a(Lcom/google/analytics/a/a/h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    .line 3308
    iget v0, p0, Lcom/google/analytics/a/a/j;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/a/a/j;->a:I

    .line 3315
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3316
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->d()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/j;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/analytics/a/a/j;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/j;->c:I

    .line 3318
    :cond_37
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->e()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3319
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->f()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/j;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/analytics/a/a/j;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/j;->d:I

    .line 3321
    :cond_49
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3322
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->h()Z

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/j;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/analytics/a/a/j;->a:I

    iput-boolean v0, p0, Lcom/google/analytics/a/a/j;->e:Z

    .line 3324
    :cond_5b
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->j()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3325
    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->n()Z

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/j;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/analytics/a/a/j;->a:I

    iput-boolean v0, p0, Lcom/google/analytics/a/a/j;->f:Z

    .line 3327
    :cond_6d
    invoke-virtual {p0}, Lcom/google/analytics/a/a/j;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/h;->b(Lcom/google/analytics/a/a/h;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/g;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/j;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/u;

    goto :goto_6

    .line 3310
    :cond_7d
    iget v0, p0, Lcom/google/analytics/a/a/j;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_93

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/j;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/a/a/j;->a:I

    .line 3311
    :cond_93
    iget-object v0, p0, Lcom/google/analytics/a/a/j;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/h;->a(Lcom/google/analytics/a/a/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public final synthetic a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3226
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/j;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;
    .registers 3
    .parameter

    .prologue
    .line 3226
    check-cast p1, Lcom/google/analytics/a/a/h;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/j;->a(Lcom/google/analytics/a/a/h;)Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3226
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/j;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/tagmanager/a/s;
    .registers 2

    .prologue
    .line 3226
    invoke-static {}, Lcom/google/analytics/a/a/h;->a()Lcom/google/analytics/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/tagmanager/a/u;
    .registers 2

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/a/a/j;->f()Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/a/a/j;->f()Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/a/a/j;->f()Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/google/tagmanager/a/ak;
    .registers 3

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/analytics/a/a/j;->g()Lcom/google/analytics/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/h;->i()Z

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

    .line 3332
    iget v2, p0, Lcom/google/analytics/a/a/j;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    move v2, v1

    :goto_a
    if-nez v2, :cond_f

    .line 3336
    :goto_c
    return v0

    :cond_d
    move v2, v0

    .line 3332
    goto :goto_a

    :cond_f
    move v0, v1

    .line 3336
    goto :goto_c
.end method

.method public final synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 3226
    invoke-static {}, Lcom/google/analytics/a/a/h;->a()Lcom/google/analytics/a/a/h;

    move-result-object v0

    return-object v0
.end method
