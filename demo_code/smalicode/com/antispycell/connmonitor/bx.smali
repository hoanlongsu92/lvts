.class public final Lcom/antispycell/connmonitor/bx;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/bj;

.field private b:Lcom/antispycell/connmonitor/an;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/bj;Lcom/antispycell/connmonitor/an;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/antispycell/connmonitor/bx;->a:Lcom/antispycell/connmonitor/bj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/antispycell/connmonitor/bx;->b:Lcom/antispycell/connmonitor/an;

    .line 441
    iput-object p3, p0, Lcom/antispycell/connmonitor/bx;->c:Landroid/content/Context;

    .line 442
    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->b:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->a()V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->b:Lcom/antispycell/connmonitor/an;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/an;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/antispycell/connmonitor/bx;->b:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/an;->b()V

    if-eqz v0, :cond_69

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "[Network Connections] Exported Database"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exported Database from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "application/csv"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->a:Lcom/antispycell/connmonitor/bj;

    const-string v2, "Export connections:"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/bj;->startActivity(Landroid/content/Intent;)V

    const-string v0, "ok"

    :goto_68
    return-object v0

    :cond_69
    const-string v0, "bad"

    goto :goto_68
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_f
    const-string v0, "bad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->c:Landroid/content/Context;

    const-string v1, "There was an error while trying to export DB."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_23
    return-void
.end method

.method protected final onPreExecute()V
    .registers 3

    .prologue
    .line 447
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bx;->a:Lcom/antispycell/connmonitor/bj;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    .line 448
    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    const-string v1, "Exporting Database ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    const-string v1, "Please wait."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 451
    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 452
    iget-object v0, p0, Lcom/antispycell/connmonitor/bx;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 453
    return-void
.end method
