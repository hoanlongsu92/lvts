.class final Lcom/antispycell/connmonitor/q;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/q;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iput-object p2, p0, Lcom/antispycell/connmonitor/q;->b:Landroid/app/Dialog;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 91
    sget-object v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    const-string v1, "skipWelcome"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    iget-object v0, p0, Lcom/antispycell/connmonitor/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 96
    return-void
.end method
