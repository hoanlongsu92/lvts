.class final Lcom/antispycell/connmonitor/bo;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/bo;->a:Lcom/antispycell/connmonitor/bj;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bo;->a:Lcom/antispycell/connmonitor/bj;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    const-string v1, "Live Capture"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    const-string v1, "The Live Capture is currently running. This setting will be applied on the next launch of the capture."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 204
    const-string v1, "OK"

    new-instance v2, Lcom/antispycell/connmonitor/bp;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bp;-><init>(Lcom/antispycell/connmonitor/bo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 209
    return-void
.end method
