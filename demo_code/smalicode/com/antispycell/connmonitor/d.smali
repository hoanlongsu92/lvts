.class final Lcom/antispycell/connmonitor/d;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/d;->a:Lcom/antispycell/connmonitor/AppDetails;

    iput-wide p2, p0, Lcom/antispycell/connmonitor/d;->b:J

    iput-object p4, p0, Lcom/antispycell/connmonitor/d;->c:Landroid/app/Dialog;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/antispycell/connmonitor/d;->a:Lcom/antispycell/connmonitor/AppDetails;

    iget-object v1, p0, Lcom/antispycell/connmonitor/d;->a:Lcom/antispycell/connmonitor/AppDetails;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/AppDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    .line 219
    iget-object v0, p0, Lcom/antispycell/connmonitor/d;->a:Lcom/antispycell/connmonitor/AppDetails;

    iget-object v0, v0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    .line 220
    const-string v1, "ui_action"

    .line 221
    const-string v2, "button_press"

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "REMIND ME LATER ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/antispycell/connmonitor/d;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    iget-wide v4, p0, Lcom/antispycell/connmonitor/d;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 219
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 226
    iget-object v0, p0, Lcom/antispycell/connmonitor/d;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 227
    return-void
.end method
