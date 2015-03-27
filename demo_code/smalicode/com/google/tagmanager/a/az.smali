.class final Lcom/google/tagmanager/a/az;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# instance fields
.field final synthetic a:Lcom/google/tagmanager/a/au;

.field private final b:Ljava/lang/Comparable;

.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/a/au;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/tagmanager/a/az;->a:Lcom/google/tagmanager/a/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    .line 383
    iput-object p3, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    .line 384
    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/a/au;Ljava/util/Map$Entry;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/tagmanager/a/az;-><init>(Lcom/google/tagmanager/a/au;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 435
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public final a()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 372
    check-cast p1, Lcom/google/tagmanager/a/az;

    iget-object v0, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    if-ne p1, p0, :cond_5

    .line 419
    :cond_4
    :goto_4
    return v0

    .line 414
    :cond_5
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_b

    move v0, v1

    .line 415
    goto :goto_4

    .line 418
    :cond_b
    check-cast p1, Ljava/util/Map$Entry;

    .line 419
    iget-object v2, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/tagmanager/a/az;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/tagmanager/a/az;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public final bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    if-nez v2, :cond_13

    :goto_a
    xor-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/tagmanager/a/az;->a:Lcom/google/tagmanager/a/au;

    invoke-static {v0}, Lcom/google/tagmanager/a/au;->a(Lcom/google/tagmanager/a/au;)V

    .line 404
    iget-object v0, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    .line 405
    iput-object p1, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    .line 406
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/tagmanager/a/az;->b:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/a/az;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
