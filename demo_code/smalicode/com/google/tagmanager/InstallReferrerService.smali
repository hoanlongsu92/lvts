.class public final Lcom/google/tagmanager/InstallReferrerService;
.super Landroid/app/IntentService;
.source "InstallReferrerService.java"


# instance fields
.field a:Lcom/google/analytics/tracking/android/CampaignTrackingService;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "InstallReferrerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v0, p0, Lcom/google/tagmanager/InstallReferrerService;->b:Landroid/content/Context;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/tagmanager/InstallReferrerService;->b:Landroid/content/Context;

    .line 35
    :goto_c
    invoke-static {v0, v1}, Lcom/google/tagmanager/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/google/tagmanager/InstallReferrerService;->a:Lcom/google/analytics/tracking/android/CampaignTrackingService;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/google/analytics/tracking/android/CampaignTrackingService;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/CampaignTrackingService;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/InstallReferrerService;->a:Lcom/google/analytics/tracking/android/CampaignTrackingService;

    :cond_1a
    iget-object v1, p0, Lcom/google/tagmanager/InstallReferrerService;->a:Lcom/google/analytics/tracking/android/CampaignTrackingService;

    invoke-static {v0, p1}, Lcom/google/analytics/tracking/android/CampaignTrackingService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    return-void

    .line 34
    :cond_20
    invoke-virtual {p0}, Lcom/google/tagmanager/InstallReferrerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c
.end method
