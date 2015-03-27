.class public abstract Lcom/google/tagmanager/a/aa;
.super Lcom/google/tagmanager/a/c;
.source "GeneratedMutableMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected b:Lcom/google/tagmanager/a/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/tagmanager/a/c;-><init>()V

    .line 28
    sget-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    iput-object v0, p0, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/g;

    .line 492
    return-void
.end method


# virtual methods
.method public abstract c()Lcom/google/tagmanager/a/aa;
.end method
