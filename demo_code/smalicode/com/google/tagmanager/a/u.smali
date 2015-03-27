.class public abstract Lcom/google/tagmanager/a/u;
.super Lcom/google/tagmanager/a/b;
.source "GeneratedMessageLite.java"


# instance fields
.field private a:Lcom/google/tagmanager/a/g;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/tagmanager/a/b;-><init>()V

    .line 103
    sget-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    iput-object v0, p0, Lcom/google/tagmanager/a/u;->a:Lcom/google/tagmanager/a/g;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/u;
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/tagmanager/a/u;->a:Lcom/google/tagmanager/a/g;

    .line 100
    return-object p0
.end method

.method public abstract a(Lcom/google/tagmanager/a/s;)Lcom/google/tagmanager/a/u;
.end method

.method public abstract b()Lcom/google/tagmanager/a/s;
.end method

.method public c()Lcom/google/tagmanager/a/u;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/a/u;->c()Lcom/google/tagmanager/a/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/tagmanager/a/b;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/a/u;->c()Lcom/google/tagmanager/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/tagmanager/a/g;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/tagmanager/a/u;->a:Lcom/google/tagmanager/a/g;

    return-object v0
.end method

.method public synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/a/u;->b()Lcom/google/tagmanager/a/s;

    move-result-object v0

    return-object v0
.end method
