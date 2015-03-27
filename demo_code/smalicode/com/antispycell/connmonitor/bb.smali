.class public final Lcom/antispycell/connmonitor/bb;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 460
    iput-object p1, p0, Lcom/antispycell/connmonitor/bb;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 459
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 455
    iput-object v0, p0, Lcom/antispycell/connmonitor/bb;->f:Ljava/lang/String;

    .line 456
    iput-object v0, p0, Lcom/antispycell/connmonitor/bb;->g:Ljava/lang/String;

    .line 457
    iput-object v0, p0, Lcom/antispycell/connmonitor/bb;->h:Ljava/lang/String;

    .line 461
    iput-object p6, p0, Lcom/antispycell/connmonitor/bb;->h:Ljava/lang/String;

    .line 462
    iput-object p2, p0, Lcom/antispycell/connmonitor/bb;->b:Landroid/widget/TextView;

    .line 463
    iput-object p3, p0, Lcom/antispycell/connmonitor/bb;->c:Landroid/widget/TextView;

    .line 464
    iput-object p4, p0, Lcom/antispycell/connmonitor/bb;->d:Landroid/widget/TextView;

    .line 465
    iput-object p5, p0, Lcom/antispycell/connmonitor/bb;->e:Landroid/widget/TextView;

    .line 466
    return-void
.end method

.method private varargs a([Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 11
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 470
    .line 476
    :try_start_3
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 477
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://whois.arin.net/rest/ip/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/antispycell/connmonitor/bb;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 478
    const-string v2, "Accept"

    const-string v3, "application/xml"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 482
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 484
    const-string v0, "<orgRef name="

    invoke-static {v2, v0}, Lcom/antispycell/connmonitor/bb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_36} :catch_157
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_36} :catch_15e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_36} :catch_165

    move-result-object v0

    .line 485
    :try_start_37
    const-string v1, "<name>"

    invoke-static {v2, v1}, Lcom/antispycell/connmonitor/bb;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antispycell/connmonitor/bb;->f:Ljava/lang/String;

    .line 486
    const-string v1, "<originAS>"

    invoke-static {v2, v1}, Lcom/antispycell/connmonitor/bb;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antispycell/connmonitor/bb;->g:Ljava/lang/String;

    .line 487
    const-string v1, "<orgRef"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_172

    const-string v1, "<orgRef"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "handle=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_db

    const-string v3, "handle=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_84

    const/4 v3, 0x0

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 489
    :cond_84
    :goto_84
    new-instance v3, Lcom/antispycell/connmonitor/ba;

    iget-object v4, p0, Lcom/antispycell/connmonitor/bb;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v5, p0, Lcom/antispycell/connmonitor/bb;->h:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/antispycell/connmonitor/ba;-><init>(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    aget-object v7, p1, v7

    aput-object v7, v4, v5

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ba;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 490
    new-instance v3, Lcom/antispycell/connmonitor/ay;

    iget-object v4, p0, Lcom/antispycell/connmonitor/bb;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v5, p0, Lcom/antispycell/connmonitor/bb;->e:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/antispycell/connmonitor/bb;->h:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v7}, Lcom/antispycell/connmonitor/ay;-><init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    aget-object v7, p1, v7

    aput-object v7, v4, v5

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 493
    if-eqz v0, :cond_dd

    const-string v3, "Asia Pacific Network"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_b7} :catch_170
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_37 .. :try_end_b7} :catch_16e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_b7} :catch_16c

    move-result v3

    if-eqz v3, :cond_dd

    .line 495
    :try_start_ba
    new-instance v0, Lcom/antispycell/connmonitor/bc;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bb;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v2, p0, Lcom/antispycell/connmonitor/bb;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/antispycell/connmonitor/bb;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/antispycell/connmonitor/bb;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/antispycell/connmonitor/bb;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/antispycell/connmonitor/bc;-><init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/bc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_d9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ba .. :try_end_d9} :catch_157
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_ba .. :try_end_d9} :catch_15e
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_d9} :catch_165

    move-result-object v0

    .line 524
    :goto_da
    return-object v0

    :cond_db
    move-object v1, v6

    .line 487
    goto :goto_84

    .line 499
    :cond_dd
    if-eqz v0, :cond_10e

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_e1
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RIPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e1 .. :try_end_ea} :catch_170
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e1 .. :try_end_ea} :catch_16e
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ea} :catch_16c

    move-result v3

    if-eqz v3, :cond_10e

    .line 501
    :try_start_ed
    new-instance v0, Lcom/antispycell/connmonitor/bd;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bb;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v2, p0, Lcom/antispycell/connmonitor/bb;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/antispycell/connmonitor/bb;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/antispycell/connmonitor/bb;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antispycell/connmonitor/bb;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/antispycell/connmonitor/bd;-><init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/bd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 502
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_10c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ed .. :try_end_10c} :catch_157
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_ed .. :try_end_10c} :catch_15e
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_10c} :catch_165

    move-result-object v0

    goto :goto_da

    .line 505
    :cond_10e
    if-eqz v1, :cond_125

    .line 506
    :try_start_110
    new-instance v3, Lcom/antispycell/connmonitor/be;

    iget-object v4, p0, Lcom/antispycell/connmonitor/bb;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v5, p0, Lcom/antispycell/connmonitor/bb;->d:Landroid/widget/TextView;

    invoke-direct {v3, v4, v5, v1}, Lcom/antispycell/connmonitor/be;-><init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, p1, v5

    aput-object v5, v1, v4

    invoke-virtual {v3, v1}, Lcom/antispycell/connmonitor/be;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 509
    :cond_125
    if-nez v0, :cond_12d

    .line 510
    const-string v1, "<customerRef name="

    invoke-static {v2, v1}, Lcom/antispycell/connmonitor/bb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_110 .. :try_end_12c} :catch_170
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_110 .. :try_end_12c} :catch_16e
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_12c} :catch_16c

    move-result-object v0

    .line 521
    :cond_12d
    :goto_12d
    iget-object v1, p0, Lcom/antispycell/connmonitor/bb;->f:Ljava/lang/String;

    if-eqz v1, :cond_150

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antispycell/connmonitor/bb;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_150
    iput-object v0, p0, Lcom/antispycell/connmonitor/bb;->f:Ljava/lang/String;

    .line 524
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_da

    .line 514
    :catch_157
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_15a
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_12d

    .line 515
    :catch_15e
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_161
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_12d

    .line 517
    :catch_165
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_168
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12d

    :catch_16c
    move-exception v1

    goto :goto_168

    .line 515
    :catch_16e
    move-exception v1

    goto :goto_161

    .line 514
    :catch_170
    move-exception v1

    goto :goto_15a

    :cond_172
    move-object v1, v6

    goto/16 :goto_84
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 537
    .line 540
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_2a

    .line 541
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2a

    .line 544
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_2a
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 554
    .line 557
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_28

    .line 558
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 560
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_28

    .line 561
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_28
    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/antispycell/connmonitor/bb;->a([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1
    iget-object v0, p0, Lcom/antispycell/connmonitor/bb;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bb;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bb;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bb;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bb;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
