.class public final Lcom/google/tagmanager/a/bc;
.super Ljava/lang/RuntimeException;
.source "UninitializedMessageException.java"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/a/bc;->a:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/tagmanager/a/ae;
    .registers 3

    .prologue
    .line 53
    new-instance v0, Lcom/google/tagmanager/a/ae;

    invoke-virtual {p0}, Lcom/google/tagmanager/a/bc;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
