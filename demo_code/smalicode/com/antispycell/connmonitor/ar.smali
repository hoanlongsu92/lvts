.class final Lcom/antispycell/connmonitor/ar;
.super Ljava/lang/Object;
.source "IPDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private final synthetic b:J

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/IPDetails;JLandroid/app/Dialog;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/ar;->a:Lcom/antispycell/connmonitor/IPDetails;

    iput-wide p2, p0, Lcom/antispycell/connmonitor/ar;->b:J

    iput-object p4, p0, Lcom/antispycell/connmonitor/ar;->c:Landroid/app/Dialog;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 183
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.antispycell.connmonitor.unlock"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/antispycell/connmonitor/ar;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/IPDetails;->startActivity(Landroid/content/Intent;)V

    .line 186
    iget-object v0, p0, Lcom/antispycell/connmonitor/ar;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ar;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/IPDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/IPDetails;->c:Lcom/google/analytics/tracking/android/p;

    .line 187
    iget-object v0, p0, Lcom/antispycell/connmonitor/ar;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v0, v0, Lcom/antispycell/connmonitor/IPDetails;->c:Lcom/google/analytics/tracking/android/p;

    .line 188
    const-string v1, "ui_action"

    .line 189
    const-string v2, "button_press"

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DOWNLOAD ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/antispycell/connmonitor/ar;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    iget-wide v4, p0, Lcom/antispycell/connmonitor/ar;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 187
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 195
    iget-object v0, p0, Lcom/antispycell/connmonitor/ar;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/antispycell/connmonitor/ar;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/IPDetails;->finish()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 199
    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    goto :goto_5e
.end method
