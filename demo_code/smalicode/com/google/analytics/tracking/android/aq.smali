.class public final Lcom/google/analytics/tracking/android/aq;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static a:Lcom/google/analytics/tracking/android/an;


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_9

    .line 31
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->d(Ljava/lang/String;)V

    .line 33
    :cond_9
    return-void
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_15

    .line 86
    sget-object v0, Lcom/google/analytics/tracking/android/as;->a:Lcom/google/analytics/tracking/android/as;

    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/ar;->a()Lcom/google/analytics/tracking/android/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/as;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static b()Lcom/google/analytics/tracking/android/ar;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;

    if-nez v0, :cond_a

    .line 93
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;

    .line 96
    :cond_a
    sget-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;

    if-eqz v0, :cond_15

    .line 97
    sget-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/an;->d()Lcom/google/analytics/tracking/android/ar;

    move-result-object v0

    .line 99
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_9

    .line 55
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->b(Ljava/lang/String;)V

    .line 57
    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_9

    .line 67
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;)V

    .line 69
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_9

    .line 79
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->c(Ljava/lang/String;)V

    .line 81
    :cond_9
    return-void
.end method
