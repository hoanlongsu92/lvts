.class final Lcom/antispycell/connmonitor/r;
.super Ljava/lang/Object;
.source "ConnectionMonitorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;Landroid/app/Dialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/r;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iput-object p2, p0, Lcom/antispycell/connmonitor/r;->b:Landroid/app/Dialog;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/antispycell/connmonitor/r;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v1, p0, Lcom/antispycell/connmonitor/r;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    .line 137
    iget-object v0, p0, Lcom/antispycell/connmonitor/r;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v0, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    .line 138
    const-string v1, "ui_action"

    .line 139
    const-string v2, "button_press"

    .line 140
    const-string v3, "DOWNLOAD - 15 MINS"

    .line 141
    const/4 v4, 0x0

    .line 137
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.antispycell.connmonitor.unlock"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/antispycell/connmonitor/r;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    iget-object v0, p0, Lcom/antispycell/connmonitor/r;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 148
    iget-object v0, p0, Lcom/antispycell/connmonitor/r;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->finish()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    .line 152
    :goto_44
    return-void

    :catch_45
    move-exception v0

    goto :goto_44
.end method
