.class final Lcom/google/analytics/a/a/c;
.super Lcom/google/tagmanager/a/d;
.source "Serving.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5620
    invoke-direct {p0}, Lcom/google/tagmanager/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 5620
    new-instance v0, Lcom/google/analytics/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/analytics/a/a/b;-><init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;B)V

    return-object v0
.end method
