.class public final Lcom/google/tagmanager/a/bd;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Lcom/google/tagmanager/a/ah;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Lcom/google/tagmanager/a/ah;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/a/ah;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/tagmanager/a/bd;->a:Lcom/google/tagmanager/a/ah;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/bd;)Lcom/google/tagmanager/a/ah;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/tagmanager/a/bd;->a:Lcom/google/tagmanager/a/ah;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/tagmanager/a/bd;->a:Lcom/google/tagmanager/a/ah;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ah;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/tagmanager/a/g;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/tagmanager/a/bd;->a:Lcom/google/tagmanager/a/ah;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/a/ah;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 132
    new-instance v0, Lcom/google/tagmanager/a/bf;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/bf;-><init>(Lcom/google/tagmanager/a/bd;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/google/tagmanager/a/be;

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/a/be;-><init>(Lcom/google/tagmanager/a/bd;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/tagmanager/a/bd;->a:Lcom/google/tagmanager/a/ah;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ah;->size()I

    move-result v0

    return v0
.end method
