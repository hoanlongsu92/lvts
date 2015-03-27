.class final Lcom/antispycell/connmonitor/bt;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/bt;->a:Lcom/antispycell/connmonitor/bj;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 285
    new-instance v0, Lcom/antispycell/connmonitor/an;

    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v1, Lcom/antispycell/connmonitor/bx;

    iget-object v2, p0, Lcom/antispycell/connmonitor/bt;->a:Lcom/antispycell/connmonitor/bj;

    sget-object v3, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lcom/antispycell/connmonitor/bx;-><init>(Lcom/antispycell/connmonitor/bj;Lcom/antispycell/connmonitor/an;Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/bx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    iget-object v0, p0, Lcom/antispycell/connmonitor/bt;->a:Lcom/antispycell/connmonitor/bj;

    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/bj;->d:Lcom/google/analytics/tracking/android/p;

    .line 290
    iget-object v0, p0, Lcom/antispycell/connmonitor/bt;->a:Lcom/antispycell/connmonitor/bj;

    iget-object v0, v0, Lcom/antispycell/connmonitor/bj;->d:Lcom/google/analytics/tracking/android/p;

    .line 291
    const-string v1, "ui_action"

    .line 292
    const-string v2, "button_press"

    .line 293
    const-string v3, "EXPORT DATABASE"

    .line 294
    const/4 v4, 0x0

    .line 290
    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 298
    return-void
.end method
