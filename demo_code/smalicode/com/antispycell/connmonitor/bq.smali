.class final Lcom/antispycell/connmonitor/bq;
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
    iput-object p1, p0, Lcom/antispycell/connmonitor/bq;->a:Lcom/antispycell/connmonitor/bj;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bq;->a:Lcom/antispycell/connmonitor/bj;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    const-string v1, "Clear database"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    const-string v1, "Are you sure you want to clear all captured connections?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    const-string v1, "Yes"

    new-instance v2, Lcom/antispycell/connmonitor/br;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/br;-><init>(Lcom/antispycell/connmonitor/bq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    const-string v1, "No"

    new-instance v2, Lcom/antispycell/connmonitor/bs;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bs;-><init>(Lcom/antispycell/connmonitor/bq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 265
    return-void
.end method
