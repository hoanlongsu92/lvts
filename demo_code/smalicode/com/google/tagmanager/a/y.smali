.class final Lcom/google/tagmanager/a/y;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/a/r;


# instance fields
.field final a:Lcom/google/tagmanager/a/ad;

.field final b:I

.field final c:Lcom/google/tagmanager/a/bi;

.field final d:Z


# virtual methods
.method public final a(Lcom/google/tagmanager/a/al;Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 745
    check-cast p1, Lcom/google/tagmanager/a/u;

    check-cast p2, Lcom/google/tagmanager/a/s;

    invoke-virtual {p1, p2}, Lcom/google/tagmanager/a/u;->a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/tagmanager/a/an;)Lcom/google/tagmanager/a/an;
    .registers 3
    .parameter

    .prologue
    .line 751
    check-cast p1, Lcom/google/tagmanager/a/aa;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/aa;->c()Lcom/google/tagmanager/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/google/tagmanager/a/bi;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/tagmanager/a/y;->c:Lcom/google/tagmanager/a/bi;

    return-object v0
.end method

.method public final b()Lcom/google/tagmanager/a/bn;
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/tagmanager/a/y;->c:Lcom/google/tagmanager/a/bi;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/bi;->a()Lcom/google/tagmanager/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/google/tagmanager/a/y;->d:Z

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 696
    check-cast p1, Lcom/google/tagmanager/a/y;

    iget v0, p0, Lcom/google/tagmanager/a/y;->b:I

    iget v1, p1, Lcom/google/tagmanager/a/y;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 719
    iget v0, p0, Lcom/google/tagmanager/a/y;->b:I

    return v0
.end method

.method public final e()Lcom/google/tagmanager/a/ad;
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/tagmanager/a/y;->a:Lcom/google/tagmanager/a/ad;

    return-object v0
.end method
