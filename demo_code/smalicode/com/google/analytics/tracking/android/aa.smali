.class final Lcom/google/analytics/tracking/android/aa;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/y;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/y;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/analytics/tracking/android/aa;->a:Lcom/google/analytics/tracking/android/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->a:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Lcom/google/analytics/tracking/android/y;)V

    .line 246
    return-void
.end method
