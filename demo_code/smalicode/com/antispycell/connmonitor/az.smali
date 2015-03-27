.class final Lcom/antispycell/connmonitor/az;
.super Ljava/lang/Object;
.source "IPDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/ay;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/ay;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/az;->a:Lcom/antispycell/connmonitor/ay;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 1024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.uceprotect.net/en/rblcheck.php?ipr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/antispycell/connmonitor/az;->a:Lcom/antispycell/connmonitor/ay;

    invoke-static {v3}, Lcom/antispycell/connmonitor/ay;->a(Lcom/antispycell/connmonitor/ay;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1024
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1026
    iget-object v1, p0, Lcom/antispycell/connmonitor/az;->a:Lcom/antispycell/connmonitor/ay;

    invoke-static {v1}, Lcom/antispycell/connmonitor/ay;->b(Lcom/antispycell/connmonitor/ay;)Lcom/antispycell/connmonitor/IPDetails;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/IPDetails;->startActivity(Landroid/content/Intent;)V

    .line 1027
    return-void
.end method
