.class final Lcom/google/tagmanager/l;
.super Ljava/lang/Object;
.source "ObjectAndStatic.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/tagmanager/l;->a:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/l;->b:Z

    .line 17
    return-void
.end method
