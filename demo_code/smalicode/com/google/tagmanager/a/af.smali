.class final Lcom/google/tagmanager/a/af;
.super Ljava/lang/Object;
.source "LazyField.java"


# instance fields
.field private final a:Lcom/google/tagmanager/a/ak;

.field private final b:Lcom/google/tagmanager/a/n;

.field private c:Lcom/google/tagmanager/a/g;

.field private volatile d:Lcom/google/tagmanager/a/ak;


# direct methods
.method private b()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->d:Lcom/google/tagmanager/a/ak;

    if-eqz v0, :cond_5

    .line 116
    :goto_4
    return-void

    .line 103
    :cond_5
    monitor-enter p0

    .line 104
    :try_start_6
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->d:Lcom/google/tagmanager/a/ak;

    if-eqz v0, :cond_f

    .line 105
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_4

    .line 116
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->c:Lcom/google/tagmanager/a/g;

    if-eqz v0, :cond_25

    .line 109
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->a:Lcom/google/tagmanager/a/ak;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ak;->b()Lcom/google/tagmanager/a/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/a/af;->c:Lcom/google/tagmanager/a/g;

    iget-object v2, p0, Lcom/google/tagmanager/a/af;->b:Lcom/google/tagmanager/a/n;

    invoke-interface {v0, v1, v2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ak;

    iput-object v0, p0, Lcom/google/tagmanager/a/af;->d:Lcom/google/tagmanager/a/ak;
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_25} :catch_27

    .line 116
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_c

    goto :goto_4

    :catch_27
    move-exception v0

    goto :goto_25
.end method


# virtual methods
.method public final a()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/tagmanager/a/af;->b()V

    .line 40
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->d:Lcom/google/tagmanager/a/ak;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/tagmanager/a/af;->b()V

    .line 90
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->d:Lcom/google/tagmanager/a/ak;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/tagmanager/a/af;->b()V

    .line 84
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->d:Lcom/google/tagmanager/a/ak;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/tagmanager/a/af;->b()V

    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/a/af;->d:Lcom/google/tagmanager/a/ak;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
