.class final Lcom/antispycell/connmonitor/m;
.super Ljava/lang/Object;
.source "ConnectionAppLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/h;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/h;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/m;->a:Lcom/antispycell/connmonitor/h;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 152
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v1, "market://details?id=com.antispycell.free"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/antispycell/connmonitor/m;->a:Lcom/antispycell/connmonitor/h;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/h;->startActivity(Landroid/content/Intent;)V

    .line 157
    iget-object v0, p0, Lcom/antispycell/connmonitor/m;->a:Lcom/antispycell/connmonitor/h;

    sget-object v1, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/h;->f:Lcom/google/analytics/tracking/android/p;

    .line 158
    iget-object v0, p0, Lcom/antispycell/connmonitor/m;->a:Lcom/antispycell/connmonitor/h;

    iget-object v0, v0, Lcom/antispycell/connmonitor/h;->f:Lcom/google/analytics/tracking/android/p;

    .line 159
    const-string v1, "ui_action"

    .line 160
    const-string v2, "button_press"

    .line 161
    const-string v3, "ANTISPY BANNER CLICK"

    .line 162
    const/4 v4, 0x0

    .line 158
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 168
    :goto_36
    return-void

    :catch_37
    move-exception v0

    goto :goto_36
.end method
