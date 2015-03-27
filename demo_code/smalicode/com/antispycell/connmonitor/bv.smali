.class final Lcom/antispycell/connmonitor/bv;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/bv;->a:Lcom/antispycell/connmonitor/bj;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    const-class v2, Lcom/antispycell/connmonitor/Legal;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    iget-object v1, p0, Lcom/antispycell/connmonitor/bv;->a:Lcom/antispycell/connmonitor/bj;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/bj;->startActivity(Landroid/content/Intent;)V

    .line 367
    return-void
.end method
