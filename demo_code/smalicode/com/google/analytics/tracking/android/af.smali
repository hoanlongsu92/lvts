.class final Lcom/google/analytics/tracking/android/af;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/google/analytics/tracking/android/af;->a:Ljava/util/Map;

    .line 445
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/af;->b:J

    .line 446
    iput-object p4, p0, Lcom/google/analytics/tracking/android/af;->c:Ljava/lang/String;

    .line 447
    iput-object p5, p0, Lcom/google/analytics/tracking/android/af;->d:Ljava/util/List;

    .line 448
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/af;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->d:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    const-string v0, "PATH: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->a:Ljava/util/Map;

    if-eqz v0, :cond_4b

    .line 472
    const-string v0, "  PARAMS: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v0, ",  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 480
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
