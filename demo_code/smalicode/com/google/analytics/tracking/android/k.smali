.class final Lcom/google/analytics/tracking/android/k;
.super Ljava/lang/Thread;
.source "ClientIdDefaultProvider.java"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/j;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/j;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/analytics/tracking/android/k;->a:Lcom/google/analytics/tracking/android/j;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/analytics/tracking/android/k;->a:Lcom/google/analytics/tracking/android/j;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/j;->a(Lcom/google/analytics/tracking/android/j;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_7
    iget-object v0, p0, Lcom/google/analytics/tracking/android/k;->a:Lcom/google/analytics/tracking/android/j;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/k;->a:Lcom/google/analytics/tracking/android/j;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/j;->a(Lcom/google/analytics/tracking/android/j;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/google/analytics/tracking/android/k;->a:Lcom/google/analytics/tracking/android/j;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/j;->b(Lcom/google/analytics/tracking/android/j;)Z

    .line 136
    iget-object v0, p0, Lcom/google/analytics/tracking/android/k;->a:Lcom/google/analytics/tracking/android/j;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/j;->a(Lcom/google/analytics/tracking/android/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method
