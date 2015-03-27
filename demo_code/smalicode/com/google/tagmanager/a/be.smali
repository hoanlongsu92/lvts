.class final Lcom/google/tagmanager/a/be;
.super Ljava/lang/Object;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:Ljava/util/ListIterator;

.field final synthetic b:I

.field final synthetic c:Lcom/google/tagmanager/a/bd;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/a/bd;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/tagmanager/a/be;->c:Lcom/google/tagmanager/a/bd;

    iput p2, p0, Lcom/google/tagmanager/a/be;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/google/tagmanager/a/be;->c:Lcom/google/tagmanager/a/bd;

    invoke-static {v0}, Lcom/google/tagmanager/a/bd;->a(Lcom/google/tagmanager/a/bd;)Lcom/google/tagmanager/a/ah;

    move-result-object v0

    iget v1, p0, Lcom/google/tagmanager/a/be;->b:I

    invoke-interface {v0, v1}, Lcom/google/tagmanager/a/ah;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/be;->a:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/tagmanager/a/be;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/tagmanager/a/be;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/tagmanager/a/be;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/tagmanager/a/be;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/tagmanager/a/be;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/tagmanager/a/be;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
