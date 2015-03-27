.class final Lcom/antispycell/connmonitor/s;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/s;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iput-object p2, p0, Lcom/antispycell/connmonitor/s;->b:Landroid/app/Dialog;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/antispycell/connmonitor/s;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v1, p0, Lcom/antispycell/connmonitor/s;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    .line 159
    iget-object v0, p0, Lcom/antispycell/connmonitor/s;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v0, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    .line 160
    const-string v1, "ui_action"

    .line 161
    const-string v2, "button_press"

    .line 162
    const-string v3, "REMIND ME LATER - 15 MINS"

    .line 163
    const/4 v4, 0x0

    .line 159
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 166
    iget-object v0, p0, Lcom/antispycell/connmonitor/s;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 167
    return-void
.end method
