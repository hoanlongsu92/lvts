.class final Lcom/google/tagmanager/a/av;
.super Lcom/google/tagmanager/a/au;
.source "SmallSortedMap.java"


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/tagmanager/a/au;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/tagmanager/a/av;->b()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/tagmanager/a/av;->c()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 78
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/a/av;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/r;

    invoke-interface {v0}, Lcom/google/tagmanager/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 81
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 86
    :cond_2f
    invoke-virtual {p0}, Lcom/google/tagmanager/a/av;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/a/r;

    invoke-interface {v1}, Lcom/google/tagmanager/a/r;->c()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 89
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 93
    :cond_5d
    invoke-super {p0}, Lcom/google/tagmanager/a/au;->a()V

    .line 94
    return-void
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    check-cast p1, Lcom/google/tagmanager/a/r;

    invoke-super {p0, p1, p2}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
