.class final Lcom/antispycell/connmonitor/bw;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/bj;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/bw;->a:Lcom/antispycell/connmonitor/bj;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/antispycell/connmonitor/bw;->a:Lcom/antispycell/connmonitor/bj;

    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/bj;->d:Lcom/google/analytics/tracking/android/p;

    .line 393
    iget-object v0, p0, Lcom/antispycell/connmonitor/bw;->a:Lcom/antispycell/connmonitor/bj;

    iget-object v0, v0, Lcom/antispycell/connmonitor/bj;->d:Lcom/google/analytics/tracking/android/p;

    .line 394
    const-string v1, "ui_action"

    .line 395
    const-string v2, "button_press"

    .line 396
    const-string v3, "EXIT"

    .line 397
    const/4 v4, 0x0

    .line 393
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 402
    iget-object v0, p0, Lcom/antispycell/connmonitor/bw;->a:Lcom/antispycell/connmonitor/bj;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 405
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    goto :goto_29
.end method
