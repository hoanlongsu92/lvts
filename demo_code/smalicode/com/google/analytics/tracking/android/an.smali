.class public Lcom/google/analytics/tracking/android/an;
.super Lcom/google/analytics/tracking/android/bf;
.source "GoogleAnalytics.java"


# static fields
.field private static g:Lcom/google/analytics/tracking/android/an;


# instance fields
.field private a:Z

.field private b:Lcom/google/analytics/tracking/android/h;

.field private c:Landroid/content/Context;

.field private volatile d:Ljava/lang/Boolean;

.field private final e:Ljava/util/Map;

.field private f:Lcom/google/analytics/tracking/android/ar;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/analytics/tracking/android/ah;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/an;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/bf;-><init>()V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->d:Ljava/lang/Boolean;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->e:Ljava/util/Map;

    .line 52
    if-nez p1, :cond_1b

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/google/analytics/tracking/android/an;->b:Lcom/google/analytics/tracking/android/h;

    .line 58
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/i;->a(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/az;->a(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/j;->a(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/google/analytics/tracking/android/m;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/m;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/an;->f:Lcom/google/analytics/tracking/android/ar;

    .line 63
    return-void
.end method

.method static a()Lcom/google/analytics/tracking/android/an;
    .registers 2

    .prologue
    .line 86
    const-class v1, Lcom/google/analytics/tracking/android/an;

    monitor-enter v1

    .line 87
    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    .line 88
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/an;
    .registers 3
    .parameter

    .prologue
    .line 71
    const-class v1, Lcom/google/analytics/tracking/android/an;

    monitor-enter v1

    .line 72
    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    if-nez v0, :cond_e

    .line 73
    new-instance v0, Lcom/google/analytics/tracking/android/an;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/an;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    .line 75
    :cond_e
    sget-object v0, Lcom/google/analytics/tracking/android/an;->g:Lcom/google/analytics/tracking/android/an;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    .line 76
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    if-nez p1, :cond_e

    .line 238
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 248
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :cond_e
    :try_start_e
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "&sr"

    invoke-static {}, Lcom/google/analytics/tracking/android/az;->a()Lcom/google/analytics/tracking/android/az;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "&_u"

    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/al;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/al;->b()Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->b:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/h;->a(Ljava/util/Map;)V

    .line 248
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_b

    return-void
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->ac:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 136
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/an;->a:Z

    .line 137
    return-void
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 143
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->ad:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 144
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/an;->a:Z

    return v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 274
    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/am;->R:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    .line 275
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/analytics/tracking/android/ar;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/analytics/tracking/android/an;->f:Lcom/google/analytics/tracking/android/ar;

    return-object v0
.end method
