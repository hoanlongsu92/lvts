.class final Lcom/antispycell/connmonitor/bu;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/bu;->a:Lcom/antispycell/connmonitor/bj;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/antispycell/connmonitor/bu;->a:Lcom/antispycell/connmonitor/bj;

    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/bj;->d:Lcom/google/analytics/tracking/android/p;

    .line 330
    iget-object v0, p0, Lcom/antispycell/connmonitor/bu;->a:Lcom/antispycell/connmonitor/bj;

    iget-object v0, v0, Lcom/antispycell/connmonitor/bj;->d:Lcom/google/analytics/tracking/android/p;

    .line 331
    const-string v1, "ui_action"

    .line 332
    const-string v2, "button_press"

    .line 333
    const-string v3, "DOWNLOAD UNLOCK KEY"

    .line 334
    const/4 v4, 0x0

    .line 330
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.antispycell.connmonitor.unlock"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/antispycell/connmonitor/bu;->a:Lcom/antispycell/connmonitor/bj;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/bj;->startActivity(Landroid/content/Intent;)V

    .line 340
    iget-object v0, p0, Lcom/antispycell/connmonitor/bu;->a:Lcom/antispycell/connmonitor/bj;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 343
    :goto_3f
    return-void

    :catch_40
    move-exception v0

    goto :goto_3f
.end method
