.class final Lcom/antispycell/connmonitor/c;
.super Ljava/lang/Object;
.source "AppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/AppDetails;

.field private final synthetic b:J

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/AppDetails;JLandroid/app/Dialog;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/c;->a:Lcom/antispycell/connmonitor/AppDetails;

    iput-wide p2, p0, Lcom/antispycell/connmonitor/c;->b:J

    iput-object p4, p0, Lcom/antispycell/connmonitor/c;->c:Landroid/app/Dialog;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 195
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.antispycell.connmonitor.unlock"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/antispycell/connmonitor/c;->a:Lcom/antispycell/connmonitor/AppDetails;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/AppDetails;->startActivity(Landroid/content/Intent;)V

    .line 197
    iget-object v0, p0, Lcom/antispycell/connmonitor/c;->a:Lcom/antispycell/connmonitor/AppDetails;

    iget-object v1, p0, Lcom/antispycell/connmonitor/c;->a:Lcom/antispycell/connmonitor/AppDetails;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/AppDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    .line 198
    iget-object v0, p0, Lcom/antispycell/connmonitor/c;->a:Lcom/antispycell/connmonitor/AppDetails;

    iget-object v0, v0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    .line 199
    const-string v1, "ui_action"

    .line 200
    const-string v2, "button_press"

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DOWNLOAD ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/antispycell/connmonitor/c;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    iget-wide v4, p0, Lcom/antispycell/connmonitor/c;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 198
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 205
    iget-object v0, p0, Lcom/antispycell/connmonitor/c;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 206
    iget-object v0, p0, Lcom/antispycell/connmonitor/c;->a:Lcom/antispycell/connmonitor/AppDetails;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/AppDetails;->finish()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 209
    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    goto :goto_5e
.end method
