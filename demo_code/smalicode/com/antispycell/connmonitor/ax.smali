.class final Lcom/antispycell/connmonitor/ax;
.super Ljava/lang/Object;
.source "IPDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/aw;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/aw;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/ax;->a:Lcom/antispycell/connmonitor/aw;

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 1057
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/antispycell/connmonitor/ax;->a:Lcom/antispycell/connmonitor/aw;

    invoke-static {v0}, Lcom/antispycell/connmonitor/aw;->a(Lcom/antispycell/connmonitor/aw;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/antispycell/connmonitor/AppDetails;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1058
    const-string v2, "packageName"

    sget-object v0, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/antispycell/connmonitor/ax;->a:Lcom/antispycell/connmonitor/aw;

    invoke-static {v3}, Lcom/antispycell/connmonitor/aw;->b(Lcom/antispycell/connmonitor/aw;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    iget-object v0, p0, Lcom/antispycell/connmonitor/ax;->a:Lcom/antispycell/connmonitor/aw;

    invoke-static {v0}, Lcom/antispycell/connmonitor/aw;->c(Lcom/antispycell/connmonitor/aw;)Lcom/antispycell/connmonitor/IPDetails;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/IPDetails;->startActivity(Landroid/content/Intent;)V

    .line 1060
    sget-object v0, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    .line 1061
    iget-object v0, p0, Lcom/antispycell/connmonitor/ax;->a:Lcom/antispycell/connmonitor/aw;

    invoke-static {v0}, Lcom/antispycell/connmonitor/aw;->c(Lcom/antispycell/connmonitor/aw;)Lcom/antispycell/connmonitor/IPDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/IPDetails;->finish()V

    .line 1063
    :cond_3f
    return-void
.end method
