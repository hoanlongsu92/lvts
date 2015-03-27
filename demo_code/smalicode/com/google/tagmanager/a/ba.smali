.class final Lcom/google/tagmanager/a/ba;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/tagmanager/a/au;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/au;)V
    .registers 3
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/a/ba;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/au;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/ba;-><init>(Lcom/google/tagmanager/a/au;)V

    return-void
.end method

.method private a()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/tagmanager/a/ba;->d:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 550
    iget-object v0, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    invoke-static {v0}, Lcom/google/tagmanager/a/au;->c(Lcom/google/tagmanager/a/au;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/ba;->d:Ljava/util/Iterator;

    .line 552
    :cond_14
    iget-object v0, p0, Lcom/google/tagmanager/a/ba;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 512
    iget v0, p0, Lcom/google/tagmanager/a/ba;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    invoke-static {v1}, Lcom/google/tagmanager/a/au;->b(Lcom/google/tagmanager/a/au;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/google/tagmanager/a/ba;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/ba;->c:Z

    iget v0, p0, Lcom/google/tagmanager/a/ba;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/ba;->b:I

    iget-object v1, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    invoke-static {v1}, Lcom/google/tagmanager/a/au;->b(Lcom/google/tagmanager/a/au;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    invoke-static {v0}, Lcom/google/tagmanager/a/au;->b(Lcom/google/tagmanager/a/au;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/tagmanager/a/ba;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_23
    return-object v0

    :cond_24
    invoke-direct {p0}, Lcom/google/tagmanager/a/ba;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_23
.end method

.method public final remove()V
    .registers 4

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/google/tagmanager/a/ba;->c:Z

    if-nez v0, :cond_c

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/a/ba;->c:Z

    .line 533
    iget-object v0, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    invoke-static {v0}, Lcom/google/tagmanager/a/au;->a(Lcom/google/tagmanager/a/au;)V

    .line 535
    iget v0, p0, Lcom/google/tagmanager/a/ba;->b:I

    iget-object v1, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    invoke-static {v1}, Lcom/google/tagmanager/a/au;->b(Lcom/google/tagmanager/a/au;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 536
    iget-object v0, p0, Lcom/google/tagmanager/a/ba;->a:Lcom/google/tagmanager/a/au;

    iget v1, p0, Lcom/google/tagmanager/a/ba;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/tagmanager/a/ba;->b:I

    invoke-static {v0, v1}, Lcom/google/tagmanager/a/au;->a(Lcom/google/tagmanager/a/au;I)Ljava/lang/Object;

    .line 540
    :goto_2d
    return-void

    .line 538
    :cond_2e
    invoke-direct {p0}, Lcom/google/tagmanager/a/ba;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2d
.end method
