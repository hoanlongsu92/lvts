.class public abstract Lcom/google/tagmanager/a/c;
.super Ljava/lang/Object;
.source "AbstractMutableMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/a/an;


# instance fields
.field protected a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/c;->b:Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/a/c;->a:I

    return-void
.end method

.method static a()Lcom/google/tagmanager/a/bc;
    .registers 1

    .prologue
    .line 113
    new-instance v0, Lcom/google/tagmanager/a/bc;

    invoke-direct {v0}, Lcom/google/tagmanager/a/bc;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
