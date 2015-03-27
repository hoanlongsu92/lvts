.class public final Lcom/google/analytics/a/a/d;
.super Lcom/google/tagmanager/a/u;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/a/a/g;


# instance fields
.field private a:I

.field private b:Lcom/google/analytics/a/a/e;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5944
    invoke-direct {p0}, Lcom/google/tagmanager/a/u;-><init>()V

    .line 6039
    sget-object v0, Lcom/google/analytics/a/a/e;->a:Lcom/google/analytics/a/a/e;

    iput-object v0, p0, Lcom/google/analytics/a/a/d;->b:Lcom/google/analytics/a/a/e;

    .line 5945
    return-void
.end method

.method private c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/d;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 6024
    const/4 v2, 0x0

    .line 6026
    :try_start_1
    sget-object v0, Lcom/google/analytics/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/b;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lcom/google/tagmanager/a/ae; {:try_start_1 .. :try_end_9} :catch_f

    .line 6031
    if-eqz v0, :cond_e

    .line 6032
    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/d;->a(Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/d;

    .line 6035
    :cond_e
    return-object p0

    .line 6027
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 6028
    :try_start_11
    invoke-virtual {v1}, Lcom/google/tagmanager/a/ae;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/b;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 6029
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 6031
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 6032
    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/d;->a(Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/d;

    :cond_21
    throw v0

    .line 6031
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method static synthetic f()Lcom/google/analytics/a/a/d;
    .registers 1

    .prologue
    .line 5937
    new-instance v0, Lcom/google/analytics/a/a/d;

    invoke-direct {v0}, Lcom/google/analytics/a/a/d;-><init>()V

    return-object v0
.end method

.method private g()Lcom/google/analytics/a/a/d;
    .registers 3

    .prologue
    .line 5966
    new-instance v0, Lcom/google/analytics/a/a/d;

    invoke-direct {v0}, Lcom/google/analytics/a/a/d;-><init>()V

    invoke-virtual {p0}, Lcom/google/analytics/a/a/d;->a()Lcom/google/analytics/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/d;->a(Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/analytics/a/a/b;
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5982
    new-instance v2, Lcom/google/analytics/a/a/b;

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/a/a/b;-><init>(Lcom/google/tagmanager/a/u;B)V

    .line 5983
    iget v3, p0, Lcom/google/analytics/a/a/d;->a:I

    .line 5985
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2e

    .line 5988
    :goto_d
    iget-object v1, p0, Lcom/google/analytics/a/a/d;->b:Lcom/google/analytics/a/a/e;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/b;->a(Lcom/google/analytics/a/a/b;Lcom/google/analytics/a/a/e;)Lcom/google/analytics/a/a/e;

    .line 5989
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_19

    .line 5990
    or-int/lit8 v0, v0, 0x2

    .line 5992
    :cond_19
    iget v1, p0, Lcom/google/analytics/a/a/d;->c:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/b;->a(Lcom/google/analytics/a/a/b;I)I

    .line 5993
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_25

    .line 5994
    or-int/lit8 v0, v0, 0x4

    .line 5996
    :cond_25
    iget v1, p0, Lcom/google/analytics/a/a/d;->d:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/b;->b(Lcom/google/analytics/a/a/b;I)I

    .line 5997
    invoke-static {v2, v0}, Lcom/google/analytics/a/a/b;->c(Lcom/google/analytics/a/a/b;I)I

    .line 5998
    return-object v2

    :cond_2e
    move v0, v1

    goto :goto_d
.end method

.method public final a(Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/d;
    .registers 4
    .parameter

    .prologue
    .line 6002
    invoke-static {}, Lcom/google/analytics/a/a/b;->a()Lcom/google/analytics/a/a/b;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6013
    :goto_6
    return-object p0

    .line 6003
    :cond_7
    invoke-virtual {p1}, Lcom/google/analytics/a/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6004
    invoke-virtual {p1}, Lcom/google/analytics/a/a/b;->d()Lcom/google/analytics/a/a/e;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_19
    iget v1, p0, Lcom/google/analytics/a/a/d;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/analytics/a/a/d;->a:I

    iput-object v0, p0, Lcom/google/analytics/a/a/d;->b:Lcom/google/analytics/a/a/e;

    .line 6006
    :cond_21
    invoke-virtual {p1}, Lcom/google/analytics/a/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6007
    invoke-virtual {p1}, Lcom/google/analytics/a/a/b;->f()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/d;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/analytics/a/a/d;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/d;->c:I

    .line 6009
    :cond_33
    invoke-virtual {p1}, Lcom/google/analytics/a/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 6010
    invoke-virtual {p1}, Lcom/google/analytics/a/a/b;->h()I

    move-result v0

    iget v1, p0, Lcom/google/analytics/a/a/d;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/analytics/a/a/d;->a:I

    iput v0, p0, Lcom/google/analytics/a/a/d;->d:I

    .line 6012
    :cond_45
    invoke-virtual {p0}, Lcom/google/analytics/a/a/d;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/b;->b(Lcom/google/analytics/a/a/b;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/g;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/d;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/u;

    goto :goto_6
.end method

.method public final synthetic a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 5937
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/d;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;
    .registers 3
    .parameter

    .prologue
    .line 5937
    check-cast p1, Lcom/google/analytics/a/a/b;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/d;->a(Lcom/google/analytics/a/a/b;)Lcom/google/analytics/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 5937
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/d;->c(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/analytics/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/tagmanager/a/s;
    .registers 2

    .prologue
    .line 5937
    invoke-static {}, Lcom/google/analytics/a/a/b;->a()Lcom/google/analytics/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/tagmanager/a/u;
    .registers 2

    .prologue
    .line 5937
    invoke-direct {p0}, Lcom/google/analytics/a/a/d;->g()Lcom/google/analytics/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 5937
    invoke-direct {p0}, Lcom/google/analytics/a/a/d;->g()Lcom/google/analytics/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 5937
    invoke-direct {p0}, Lcom/google/analytics/a/a/d;->g()Lcom/google/analytics/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/google/tagmanager/a/ak;
    .registers 3

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/analytics/a/a/d;->a()Lcom/google/analytics/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/b;->i()Z

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
    .line 6017
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 5937
    invoke-static {}, Lcom/google/analytics/a/a/b;->a()Lcom/google/analytics/a/a/b;

    move-result-object v0

    return-object v0
.end method
