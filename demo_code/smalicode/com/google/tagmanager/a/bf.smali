.class final Lcom/google/tagmanager/a/bf;
.super Ljava/lang/Object;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/tagmanager/a/bd;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/a/bd;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/tagmanager/a/bf;->b:Lcom/google/tagmanager/a/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/google/tagmanager/a/bf;->b:Lcom/google/tagmanager/a/bd;

    invoke-static {v0}, Lcom/google/tagmanager/a/bd;->a(Lcom/google/tagmanager/a/bd;)Lcom/google/tagmanager/a/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/a/ah;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/bf;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/tagmanager/a/bf;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/tagmanager/a/bf;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
