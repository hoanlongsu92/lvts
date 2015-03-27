.class public final Lcom/antispycell/connmonitor/aa;
.super Landroid/os/AsyncTask;
.source "ConnectionMonitorFragment.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/w;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/w;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 499
    iput-object p1, p0, Lcom/antispycell/connmonitor/aa;->a:Lcom/antispycell/connmonitor/w;

    .line 498
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 495
    iput-object v0, p0, Lcom/antispycell/connmonitor/aa;->c:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Lcom/antispycell/connmonitor/aa;->d:Ljava/lang/String;

    .line 500
    iput-object p3, p0, Lcom/antispycell/connmonitor/aa;->c:Ljava/lang/String;

    .line 501
    iput-object p2, p0, Lcom/antispycell/connmonitor/aa;->b:Landroid/widget/TextView;

    .line 502
    iput-object p4, p0, Lcom/antispycell/connmonitor/aa;->d:Ljava/lang/String;

    .line 503
    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 510
    :try_start_1
    iget-object v1, p0, Lcom/antispycell/connmonitor/aa;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_a} :catch_19

    move-result-object v0

    .line 516
    :goto_b
    iget-object v1, p0, Lcom/antispycell/connmonitor/aa;->c:Ljava/lang/String;

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    sget-object v1, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/antispycell/connmonitor/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_18
    return-object v0

    .line 513
    :catch_19
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
    invoke-direct {p0}, Lcom/antispycell/connmonitor/aa;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/antispycell/connmonitor/aa;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/antispycell/connmonitor/aa;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
