.class public final Lcom/antispycell/connmonitor/bc;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 804
    iput-object p1, p0, Lcom/antispycell/connmonitor/bc;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 803
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 799
    iput-object v0, p0, Lcom/antispycell/connmonitor/bc;->d:Ljava/lang/String;

    .line 800
    iput-object v0, p0, Lcom/antispycell/connmonitor/bc;->e:Ljava/lang/String;

    .line 801
    iput-object v0, p0, Lcom/antispycell/connmonitor/bc;->f:Ljava/lang/String;

    .line 805
    iput-object p4, p0, Lcom/antispycell/connmonitor/bc;->f:Ljava/lang/String;

    .line 806
    iput-object p2, p0, Lcom/antispycell/connmonitor/bc;->b:Landroid/widget/TextView;

    .line 807
    iput-object p3, p0, Lcom/antispycell/connmonitor/bc;->c:Landroid/widget/TextView;

    .line 808
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 812
    .line 820
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    const-string v2, "whois.apnic.net"

    const/16 v3, 0x2b

    invoke-direct {v0, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 821
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 822
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 824
    iget-object v4, p0, Lcom/antispycell/connmonitor/bc;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/antispycell/connmonitor/bc;->f:Ljava/lang/String;

    .line 826
    iget-object v4, p0, Lcom/antispycell/connmonitor/bc;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 827
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_32
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_32} :catch_86
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_32} :catch_8c

    move-object v2, v1

    .line 831
    :goto_33
    :try_start_33
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_73

    .line 834
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3d
    .catch Ljava/net/UnknownHostException; {:try_start_33 .. :try_end_3d} :catch_162
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_15f

    .line 841
    :goto_3d
    if-eqz v2, :cond_159

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc8

    if-le v0, v3, :cond_159

    .line 842
    const-string v0, "\\r?\\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 844
    const/4 v0, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_53
    array-length v5, v4

    if-lt v1, v5, :cond_92

    .line 866
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/bc;->e:Ljava/lang/String;

    .line 868
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 832
    :cond_73
    :try_start_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_84
    .catch Ljava/net/UnknownHostException; {:try_start_73 .. :try_end_84} :catch_162
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_84} :catch_15f

    move-result-object v2

    goto :goto_33

    .line 836
    :catch_86
    move-exception v0

    move-object v2, v1

    :goto_88
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_3d

    .line 837
    :catch_8c
    move-exception v0

    move-object v2, v1

    :goto_8e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 845
    :cond_92
    aget-object v5, v4, v1

    if-eqz v5, :cond_b6

    aget-object v5, v4, v1

    const-string v6, "netname:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 846
    aget-object v5, v4, v1

    aget-object v6, v4, v1

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/antispycell/connmonitor/bc;->d:Ljava/lang/String;

    .line 849
    :cond_b6
    aget-object v5, v4, v1

    if-eqz v5, :cond_eb

    aget-object v5, v4, v1

    const-string v6, "descr:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v5, v4, v1

    aget-object v6, v4, v1

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 853
    :cond_eb
    aget-object v5, v4, v1

    if-eqz v5, :cond_120

    aget-object v5, v4, v1

    const-string v6, "address:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_120

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v5, v4, v1

    aget-object v6, v4, v1

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 857
    :cond_120
    aget-object v5, v4, v1

    if-eqz v5, :cond_155

    aget-object v5, v4, v1

    const-string v6, "country:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_155

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v5, v4, v1

    aget-object v6, v4, v1

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    :cond_155
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_53

    .line 863
    :cond_159
    const-string v2, "-"

    move-object v0, v2

    move-object v3, v2

    goto/16 :goto_56

    .line 837
    :catch_15f
    move-exception v0

    goto/16 :goto_8e

    .line 836
    :catch_162
    move-exception v0

    goto/16 :goto_88
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/antispycell/connmonitor/bc;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1
    iget-object v0, p0, Lcom/antispycell/connmonitor/bc;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bc;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bc;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bc;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
