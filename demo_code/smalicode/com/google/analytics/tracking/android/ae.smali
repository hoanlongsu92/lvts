.class final Lcom/google/analytics/tracking/android/ae;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/y;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/y;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/y;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/y;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ae;-><init>(Lcom/google/analytics/tracking/android/y;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->b(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/ac;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ac;->a:Lcom/google/analytics/tracking/android/ac;

    if-ne v0, v1, :cond_f

    .line 406
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->a:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->c(Lcom/google/analytics/tracking/android/y;)V

    .line 409
    :cond_f
    return-void
.end method
