.class public final Lcom/antispycell/connmonitor/e;
.super Landroid/os/AsyncTask;
.source "AppDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/AppDetails;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/AppDetails;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/antispycell/connmonitor/e;->a:Lcom/antispycell/connmonitor/AppDetails;

    .line 317
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antispycell/connmonitor/e;->c:Ljava/lang/String;

    .line 319
    iput-object p3, p0, Lcom/antispycell/connmonitor/e;->c:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/antispycell/connmonitor/e;->b:Landroid/widget/TextView;

    .line 321
    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/antispycell/connmonitor/e;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 335
    :goto_b
    return-object v0

    .line 333
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
    invoke-direct {p0}, Lcom/antispycell/connmonitor/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/antispycell/connmonitor/e;->b:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
