.class final Lcom/antispycell/connmonitor/as;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/as;->a:Lcom/antispycell/connmonitor/IPDetails;

    iput-wide p2, p0, Lcom/antispycell/connmonitor/as;->b:J

    iput-object p4, p0, Lcom/antispycell/connmonitor/as;->c:Landroid/app/Dialog;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/antispycell/connmonitor/as;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v1, p0, Lcom/antispycell/connmonitor/as;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/IPDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/IPDetails;->c:Lcom/google/analytics/tracking/android/p;

    .line 209
    iget-object v0, p0, Lcom/antispycell/connmonitor/as;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v0, v0, Lcom/antispycell/connmonitor/IPDetails;->c:Lcom/google/analytics/tracking/android/p;

    .line 210
    const-string v1, "ui_action"

    .line 211
    const-string v2, "button_press"

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "REMIND ME LATER ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/antispycell/connmonitor/as;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    iget-wide v4, p0, Lcom/antispycell/connmonitor/as;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 209
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 216
    iget-object v0, p0, Lcom/antispycell/connmonitor/as;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 217
    return-void
.end method
