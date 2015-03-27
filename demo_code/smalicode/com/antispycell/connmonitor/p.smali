.class final Lcom/antispycell/connmonitor/p;
.super Ljava/lang/Object;
.source "ConnectionMonitorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/p;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antispycell/connmonitor/p;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/antispycell/connmonitor/Legal;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v1, p0, Lcom/antispycell/connmonitor/p;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
