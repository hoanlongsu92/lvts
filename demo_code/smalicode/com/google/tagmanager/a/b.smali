.class public abstract Lcom/google/tagmanager/a/b;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/a/al;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;
.end method

.method public synthetic b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/a/b;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/tagmanager/a/b;->d()Lcom/google/tagmanager/a/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lcom/google/tagmanager/a/b;
.end method
