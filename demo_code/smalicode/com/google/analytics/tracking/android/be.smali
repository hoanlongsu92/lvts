.class public Lcom/google/analytics/tracking/android/be;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/analytics/tracking/android/bf;

.field private final c:Ljava/util/Map;

.field private d:J

.field private e:J

.field private final f:Lcom/google/analytics/tracking/android/j;

.field private final g:Lcom/google/analytics/tracking/android/az;

.field private final h:Lcom/google/analytics/tracking/android/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/bf;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {}, Lcom/google/analytics/tracking/android/j;->a()Lcom/google/analytics/tracking/android/j;

    move-result-object v3

    invoke-static {}, Lcom/google/analytics/tracking/android/az;->a()Lcom/google/analytics/tracking/android/az;

    move-result-object v4

    invoke-static {}, Lcom/google/analytics/tracking/android/i;->a()Lcom/google/analytics/tracking/android/i;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/be;-><init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/bf;Lcom/google/analytics/tracking/android/j;Lcom/google/analytics/tracking/android/az;Lcom/google/analytics/tracking/android/i;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/bf;Lcom/google/analytics/tracking/android/j;Lcom/google/analytics/tracking/android/az;Lcom/google/analytics/tracking/android/i;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/be;->c:Ljava/util/Map;

    .line 53
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/be;->d:J

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tracker name cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1d
    iput-object p1, p0, Lcom/google/analytics/tracking/android/be;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/google/analytics/tracking/android/be;->b:Lcom/google/analytics/tracking/android/bf;

    .line 75
    iget-object v0, p0, Lcom/google/analytics/tracking/android/be;->c:Ljava/util/Map;

    const-string v1, "&tid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/google/analytics/tracking/android/be;->c:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lcom/google/analytics/tracking/android/be;->f:Lcom/google/analytics/tracking/android/j;

    .line 81
    iput-object p4, p0, Lcom/google/analytics/tracking/android/be;->g:Lcom/google/analytics/tracking/android/az;

    .line 82
    iput-object p5, p0, Lcom/google/analytics/tracking/android/be;->h:Lcom/google/analytics/tracking/android/i;

    .line 83
    return-void
.end method

.method private declared-synchronized a()Z
    .registers 11

    .prologue
    const-wide/32 v4, 0x1d4c0

    const-wide/16 v8, 0x7d0

    .line 193
    monitor-enter p0

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    iget-wide v2, p0, Lcom/google/analytics/tracking/android/be;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_26

    .line 195
    iget-wide v2, p0, Lcom/google/analytics/tracking/android/be;->e:J

    sub-long v2, v0, v2

    .line 196
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_26

    .line 197
    const-wide/32 v4, 0x1d4c0

    iget-wide v6, p0, Lcom/google/analytics/tracking/android/be;->d:J

    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/be;->d:J

    .line 200
    :cond_26
    iput-wide v0, p0, Lcom/google/analytics/tracking/android/be;->e:J

    .line 201
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/be;->d:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_36

    .line 202
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/be;->d:J

    sub-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/be;->d:J
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_3d

    .line 203
    const/4 v0, 0x1

    .line 206
    :goto_34
    monitor-exit p0

    return v0

    .line 205
    :cond_36
    :try_start_36
    const-string v0, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3d

    .line 206
    const/4 v0, 0x0

    goto :goto_34

    .line 193
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->k:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 166
    if-nez p2, :cond_11

    .line 167
    iget-object v0, p0, Lcom/google/analytics/tracking/android/be;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_10
    return-void

    .line 169
    :cond_11
    iget-object v0, p0, Lcom/google/analytics/tracking/android/be;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method public a(Ljava/util/Map;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->l:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/google/analytics/tracking/android/be;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 107
    if-eqz p1, :cond_1a

    .line 108
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    :cond_1a
    const-string v0, "&tid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 112
    const-string v0, "Missing tracking id (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&tid"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 115
    :cond_37
    const-string v0, "&t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 117
    const-string v0, "Missing hit type (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&t"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 118
    const-string v0, ""

    .line 122
    :cond_56
    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/be;->a()Z

    move-result v0

    if-nez v0, :cond_72

    .line 125
    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 129
    :goto_71
    return-void

    .line 127
    :cond_72
    iget-object v0, p0, Lcom/google/analytics/tracking/android/be;->b:Lcom/google/analytics/tracking/android/bf;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/util/Map;)V

    goto :goto_71
.end method
