.class final Lcom/google/tagmanager/o;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static final a:Lcom/google/tagmanager/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/google/tagmanager/l;

    invoke-static {}, Lcom/google/tagmanager/y;->a()Lcom/google/analytics/b/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/o;->a:Lcom/google/tagmanager/l;

    return-void
.end method
