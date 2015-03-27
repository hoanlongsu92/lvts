.class final Lcom/google/tagmanager/a/bb;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# instance fields
.field final synthetic a:Lcom/google/tagmanager/a/au;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/au;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/tagmanager/a/bb;->a:Lcom/google/tagmanager/a/au;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/au;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/bb;-><init>(Lcom/google/tagmanager/a/au;)V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 442
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/bb;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/google/tagmanager/a/bb;->a:Lcom/google/tagmanager/a/au;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/tagmanager/a/bb;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->clear()V

    .line 497
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 462
    check-cast p1, Ljava/util/Map$Entry;

    .line 463
    iget-object v0, p0, Lcom/google/tagmanager/a/bb;->a:Lcom/google/tagmanager/a/au;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 465
    if-eq v0, v1, :cond_1a

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 446
    new-instance v0, Lcom/google/tagmanager/a/ba;

    iget-object v1, p0, Lcom/google/tagmanager/a/bb;->a:Lcom/google/tagmanager/a/au;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/a/ba;-><init>(Lcom/google/tagmanager/a/au;B)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 486
    check-cast p1, Ljava/util/Map$Entry;

    .line 487
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/bb;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 488
    iget-object v0, p0, Lcom/google/tagmanager/a/bb;->a:Lcom/google/tagmanager/a/au;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/au;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/tagmanager/a/bb;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->size()I

    move-result v0

    return v0
.end method
