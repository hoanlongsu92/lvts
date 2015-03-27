.class public abstract Lcom/google/tagmanager/a/s;
.super Lcom/google/tagmanager/a/a;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/tagmanager/a/a;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/tagmanager/a/a;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1, p4, p2}, Lcom/google/tagmanager/a/j;->a(ILcom/google/tagmanager/a/l;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/google/tagmanager/a/ao;
    .registers 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected t()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method
