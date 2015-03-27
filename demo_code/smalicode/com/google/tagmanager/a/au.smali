.class Lcom/google/tagmanager/a/au;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# instance fields
.field private final a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/Map;

.field private d:Z

.field private volatile e:Lcom/google/tagmanager/a/bb;


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 126
    iput p1, p0, Lcom/google/tagmanager/a/au;->a:I

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/au;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Comparable;)I
    .registers 6
    .parameter

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 293
    if-ltz v1, :cond_4d

    .line 294
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/az;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/az;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 295
    if-lez v0, :cond_21

    .line 296
    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    .line 312
    :goto_20
    return v0

    .line 297
    :cond_21
    if-nez v0, :cond_4d

    move v0, v1

    .line 298
    goto :goto_20

    .line 302
    :goto_25
    if-gt v3, v2, :cond_49

    .line 303
    add-int v0, v3, v2

    div-int/lit8 v1, v0, 0x2

    .line 304
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/az;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/az;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 305
    if-gez v0, :cond_41

    .line 306
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto :goto_25

    .line 307
    :cond_41
    if-lez v0, :cond_47

    .line 308
    add-int/lit8 v0, v1, 0x1

    move v3, v0

    goto :goto_25

    :cond_47
    move v0, v1

    .line 310
    goto :goto_20

    .line 312
    :cond_49
    add-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    goto :goto_20

    :cond_4d
    move v3, v2

    move v2, v1

    goto :goto_25
.end method

.method static a(I)Lcom/google/tagmanager/a/au;
    .registers 2
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/google/tagmanager/a/av;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/av;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/tagmanager/a/au;I)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/au;->c(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/tagmanager/a/au;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/tagmanager/a/au;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    return-object v0
.end method

.method private c(I)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->e()V

    .line 269
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/az;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/az;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 270
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 273
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    new-instance v4, Lcom/google/tagmanager/a/az;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v4, p0, v0}, Lcom/google/tagmanager/a/az;-><init>(Lcom/google/tagmanager/a/au;Ljava/util/Map$Entry;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 278
    :cond_36
    return-object v1
.end method

.method static synthetic c(Lcom/google/tagmanager/a/au;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/tagmanager/a/au;->d:Z

    if-eqz v0, :cond_a

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 339
    :cond_a
    return-void
.end method

.method private f()Ljava/util/SortedMap;
    .registers 2

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->e()V

    .line 350
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_18

    .line 351
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    .line 353
    :cond_18
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->e()V

    .line 210
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 211
    if-ltz v0, :cond_16

    .line 213
    iget-object v1, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/az;

    invoke-virtual {v0, p2}, Lcom/google/tagmanager/a/az;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    :goto_15
    return-object v0

    .line 215
    :cond_16
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->e()V

    iget-object v1, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/tagmanager/a/au;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    .line 216
    :cond_30
    add-int/lit8 v0, v0, 0x1

    neg-int v1, v0

    .line 217
    iget v0, p0, Lcom/google/tagmanager/a/au;->a:I

    if-lt v1, v0, :cond_40

    .line 219
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    .line 222
    :cond_40
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/google/tagmanager/a/au;->a:I

    if-ne v0, v2, :cond_65

    .line 224
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    iget v2, p0, Lcom/google/tagmanager/a/au;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/az;

    .line 225
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->f()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/tagmanager/a/az;->a()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/tagmanager/a/az;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_65
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    new-instance v2, Lcom/google/tagmanager/a/az;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/tagmanager/a/az;-><init>(Lcom/google/tagmanager/a/au;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public a()V
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/tagmanager/a/au;->d:Z

    if-nez v0, :cond_15

    .line 138
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/au;->d:Z

    .line 143
    :cond_15
    return-void

    .line 138
    :cond_16
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_10
.end method

.method public final b(I)Ljava/util/Map$Entry;
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/tagmanager/a/au;->d:Z

    return v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->e()V

    .line 235
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 236
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    :cond_10
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 239
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Comparable;

    .line 187
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final d()Ljava/lang/Iterable;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/tagmanager/a/aw;->a()Ljava/lang/Iterable;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_c
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->e:Lcom/google/tagmanager/a/bb;

    if-nez v0, :cond_c

    .line 326
    new-instance v0, Lcom/google/tagmanager/a/bb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/a/bb;-><init>(Lcom/google/tagmanager/a/au;B)V

    iput-object v0, p0, Lcom/google/tagmanager/a/au;->e:Lcom/google/tagmanager/a/bb;

    .line 328
    :cond_c
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->e:Lcom/google/tagmanager/a/bb;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Comparable;

    .line 200
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 201
    if-ltz v0, :cond_15

    .line 202
    iget-object v1, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/az;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/az;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 204
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/tagmanager/a/au;->e()V

    .line 253
    check-cast p1, Ljava/lang/Comparable;

    .line 254
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;)I

    move-result v0

    .line 255
    if-ltz v0, :cond_10

    .line 256
    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/au;->c(I)Ljava/lang/Object;

    move-result-object v0

    .line 263
    :goto_f
    return-object v0

    .line 260
    :cond_10
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 261
    const/4 v0, 0x0

    goto :goto_f

    .line 263
    :cond_1a
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public size()I
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/tagmanager/a/au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/tagmanager/a/au;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
