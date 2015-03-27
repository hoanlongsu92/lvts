.class public abstract Lcom/google/tagmanager/a/v;
.super Lcom/google/tagmanager/a/u;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/a/x;


# instance fields
.field private a:Lcom/google/tagmanager/a/p;

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/tagmanager/a/u;-><init>()V

    .line 359
    invoke-static {}, Lcom/google/tagmanager/a/p;->b()Lcom/google/tagmanager/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/p;

    .line 357
    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/v;)Lcom/google/tagmanager/a/p;
    .registers 2
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/p;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/p;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/a/v;->b:Z

    iget-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/p;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/tagmanager/a/w;)V
    .registers 4
    .parameter

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/google/tagmanager/a/v;->b:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/p;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/p;->d()Lcom/google/tagmanager/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/v;->b:Z

    .line 521
    :cond_f
    iget-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/p;

    invoke-static {p1}, Lcom/google/tagmanager/a/w;->a(Lcom/google/tagmanager/a/w;)Lcom/google/tagmanager/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/p;)V

    .line 522
    return-void
.end method

.method public synthetic c()Lcom/google/tagmanager/a/u;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/tagmanager/a/v;->f()Lcom/google/tagmanager/a/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/tagmanager/a/v;->f()Lcom/google/tagmanager/a/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/tagmanager/a/v;->f()Lcom/google/tagmanager/a/v;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/tagmanager/a/v;
    .registers 3

    .prologue
    .line 448
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final j()Z
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/p;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/p;->e()Z

    move-result v0

    return v0
.end method
