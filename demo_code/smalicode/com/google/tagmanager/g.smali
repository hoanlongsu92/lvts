.class final Lcom/google/tagmanager/g;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lcom/google/tagmanager/j;


# instance fields
.field private a:Lcom/google/tagmanager/k;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/google/tagmanager/k;->d:Lcom/google/tagmanager/k;

    iput-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->e:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_13

    .line 14
    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_13
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->d:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_13

    .line 28
    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_13
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->c:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_13

    .line 42
    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_13
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_13

    .line 70
    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_13
    return-void
.end method
