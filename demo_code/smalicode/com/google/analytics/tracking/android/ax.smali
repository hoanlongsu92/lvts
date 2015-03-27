.class final Lcom/google/analytics/tracking/android/ax;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/l;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/aw;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/aw;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ax;->a:Lcom/google/analytics/tracking/android/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
