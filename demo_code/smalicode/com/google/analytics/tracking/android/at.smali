.class public final Lcom/google/analytics/tracking/android/at;
.super Ljava/lang/Object;
.source "MapBuilder.java"


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/at;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->Y:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 100
    new-instance v1, Lcom/google/analytics/tracking/android/at;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/at;-><init>()V

    .line 101
    const-string v0, "&t"

    const-string v2, "event"

    invoke-virtual {v1, v0, v2}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    .line 102
    const-string v0, "&ec"

    invoke-virtual {v1, v0, p0}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    .line 103
    const-string v0, "&ea"

    invoke-virtual {v1, v0, p1}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    .line 104
    const-string v0, "&el"

    invoke-virtual {v1, v0, p2}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    .line 105
    const-string v2, "&ev"

    if-nez p3, :cond_2d

    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    .line 106
    return-object v1

    .line 105
    :cond_2d
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public static b()Lcom/google/analytics/tracking/android/at;
    .registers 3

    .prologue
    .line 88
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->ak:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 89
    new-instance v0, Lcom/google/analytics/tracking/android/at;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/at;-><init>()V

    .line 90
    const-string v1, "&t"

    const-string v2, "appview"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    .line 91
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->a:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 58
    if-eqz p1, :cond_11

    .line 59
    iget-object v0, p0, Lcom/google/analytics/tracking/android/at;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_10
    return-object p0

    .line 61
    :cond_11
    const-string v0, " MapBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public final a()Ljava/util/Map;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/at;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
