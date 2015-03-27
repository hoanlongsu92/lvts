.class public final Lcom/google/tagmanager/a/z;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# instance fields
.field final a:Lcom/google/tagmanager/a/ak;

.field final b:Lcom/google/tagmanager/a/y;


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/y;->b()Lcom/google/tagmanager/a/bn;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/a/bn;->h:Lcom/google/tagmanager/a/bn;

    if-ne v0, v1, :cond_14

    .line 917
    check-cast p1, Lcom/google/tagmanager/a/ac;

    invoke-interface {p1}, Lcom/google/tagmanager/a/ac;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 919
    :cond_14
    return-object p1
.end method
