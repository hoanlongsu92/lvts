.class public final Lcom/antispycell/connmonitor/av;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/antispycell/connmonitor/av;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 340
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antispycell/connmonitor/av;->c:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Lcom/antispycell/connmonitor/av;->c:Ljava/lang/String;

    .line 343
    iput-object p2, p0, Lcom/antispycell/connmonitor/av;->b:Landroid/widget/TextView;

    .line 344
    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    :try_start_1
    iget-object v1, p0, Lcom/antispycell/connmonitor/av;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 355
    :goto_b
    return-object v0

    .line 353
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/antispycell/connmonitor/av;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/antispycell/connmonitor/av;->b:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/av;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
