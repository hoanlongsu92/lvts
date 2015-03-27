.class final Lcom/google/analytics/tracking/android/ao;
.super Ljava/lang/Object;
.source "Hit.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(JJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "https:"

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ao;->d:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ao;->a:Ljava/lang/String;

    .line 37
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/ao;->b:J

    .line 38
    iput-wide p3, p0, Lcom/google/analytics/tracking/android/ao;->c:J

    .line 39
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ao;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method final b()J
    .registers 3

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/ao;->b:J

    return-wide v0
.end method

.method final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    :cond_c
    :goto_c
    return-void

    .line 61
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    const-string v0, "http:"

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ao;->d:Ljava/lang/String;

    goto :goto_c
.end method

.method final c()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/ao;->c:J

    return-wide v0
.end method

.method final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->d:Ljava/lang/String;

    return-object v0
.end method
