.class final Lcom/antispycell/connmonitor/br;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/bq;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/bq;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/br;->a:Lcom/antispycell/connmonitor/bq;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 251
    new-instance v0, Lcom/antispycell/connmonitor/an;

    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->a()V

    .line 254
    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->c()V

    .line 255
    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 256
    sget-object v0, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    const-string v1, "Database emptied."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    return-void
.end method
