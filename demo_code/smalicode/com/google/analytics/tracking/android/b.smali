.class final Lcom/google/analytics/tracking/android/b;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/a;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private b:Lcom/google/analytics/tracking/android/d;

.field private c:Lcom/google/analytics/tracking/android/e;

.field private d:Landroid/content/Context;

.field private e:Lcom/google/android/gms/analytics/internal/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/d;Lcom/google/analytics/tracking/android/e;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;

    .line 59
    if-nez p2, :cond_f

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_f
    iput-object p2, p0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;

    .line 63
    if-nez p3, :cond_1b

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1b
    iput-object p3, p0, Lcom/google/analytics/tracking/android/b;->c:Lcom/google/analytics/tracking/android/e;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/b;Lcom/google/android/gms/analytics/internal/b;)Lcom/google/android/gms/analytics/internal/b;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/b;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/b;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/b;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/b;)Lcom/google/analytics/tracking/android/e;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->c:Lcom/google/analytics/tracking/android/e;

    return-object v0
.end method

.method private d()Lcom/google/android/gms/analytics/internal/b;
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/b;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 144
    :cond_11
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/b;)Lcom/google/analytics/tracking/android/d;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/b;->d()Lcom/google/android/gms/analytics/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/b;->a()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 141
    :goto_7
    return-void

    .line 138
    :catch_8
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear hits failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/b;->d()Lcom/google/android/gms/analytics/internal/b;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/b;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 132
    :goto_b
    return-void

    .line 129
    :catch_c
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHit failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1c

    .line 78
    const-string v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    .line 89
    :cond_1b
    :goto_1b
    return-void

    .line 81
    :cond_1c
    new-instance v1, Lcom/google/analytics/tracking/android/c;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/c;-><init>(Lcom/google/analytics/tracking/android/b;)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    .line 82
    iget-object v1, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect: bindService returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 85
    if-nez v1, :cond_1b

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    .line 87
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->c:Lcom/google/analytics/tracking/android/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/e;->a(I)V

    goto :goto_1b
.end method

.method public final c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 100
    iput-object v2, p0, Lcom/google/analytics/tracking/android/b;->e:Lcom/google/android/gms/analytics/internal/b;

    .line 101
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_15

    .line 110
    :try_start_7
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_e} :catch_16

    .line 119
    :goto_e
    iput-object v2, p0, Lcom/google/analytics/tracking/android/b;->a:Landroid/content/ServiceConnection;

    .line 120
    iget-object v0, p0, Lcom/google/analytics/tracking/android/b;->b:Lcom/google/analytics/tracking/android/d;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/d;->b()V

    .line 122
    :cond_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_e

    .line 118
    :catch_18
    move-exception v0

    goto :goto_e
.end method
