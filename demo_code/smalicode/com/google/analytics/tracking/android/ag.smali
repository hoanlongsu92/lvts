.class final Lcom/google/analytics/tracking/android/ag;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/y;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/y;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ag;->a:Lcom/google/analytics/tracking/android/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/y;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ag;-><init>(Lcom/google/analytics/tracking/android/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ag;->a:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->d(Lcom/google/analytics/tracking/android/y;)V

    .line 416
    return-void
.end method
