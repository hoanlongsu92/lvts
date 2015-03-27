.class public final Lcom/antispycell/connmonitor/be;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 599
    iput-object p1, p0, Lcom/antispycell/connmonitor/be;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 598
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 593
    iput-object v0, p0, Lcom/antispycell/connmonitor/be;->c:Ljava/lang/String;

    .line 595
    iput-object v0, p0, Lcom/antispycell/connmonitor/be;->d:Ljava/lang/String;

    .line 600
    iput-object p3, p0, Lcom/antispycell/connmonitor/be;->c:Ljava/lang/String;

    .line 601
    iput-object p2, p0, Lcom/antispycell/connmonitor/be;->b:Landroid/widget/TextView;

    .line 602
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 606
    .line 615
    :try_start_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 616
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://whois.arin.net/rest/org/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/antispycell/connmonitor/be;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 617
    const-string v3, "Accept"

    const-string v4, "application/xml"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 620
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 621
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 623
    const-string v1, "<streetAddress><line number=\"0\">"

    invoke-static {v5, v1}, Lcom/antispycell/connmonitor/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_34} :catch_d0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_34} :catch_db
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_e6

    move-result-object v4

    .line 624
    if-eqz v4, :cond_3f

    :try_start_37
    const-string v1, "&#xD;"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    :cond_3f
    const-string v1, "<city>"

    invoke-static {v5, v1}, Lcom/antispycell/connmonitor/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_44} :catch_120
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_37 .. :try_end_44} :catch_10f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_44} :catch_fe

    move-result-object v3

    .line 626
    :try_start_45
    const-string v1, "<iso3166-2>"

    invoke-static {v5, v1}, Lcom/antispycell/connmonitor/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_45 .. :try_end_4a} :catch_126
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_45 .. :try_end_4a} :catch_115
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_104

    move-result-object v2

    .line 627
    :try_start_4b
    const-string v1, "<postalCode>"

    invoke-static {v5, v1}, Lcom/antispycell/connmonitor/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4b .. :try_end_50} :catch_12b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4b .. :try_end_50} :catch_11a
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_109

    move-result-object v1

    .line 628
    :try_start_51
    const-string v6, "<name>"

    invoke-static {v5, v6}, Lcom/antispycell/connmonitor/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_51 .. :try_end_56} :catch_12f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_51 .. :try_end_56} :catch_11e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_10d

    move-result-object v0

    .line 640
    :goto_57
    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v4, :cond_f1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6e
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    if-eqz v3, :cond_f5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 642
    if-eqz v2, :cond_f8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 643
    if-eqz v1, :cond_fb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_bc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    iput-object v0, p0, Lcom/antispycell/connmonitor/be;->d:Ljava/lang/String;

    .line 647
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 633
    :catch_d0
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    :goto_d6
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_57

    .line 634
    :catch_db
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    :goto_e1
    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_57

    .line 636
    :catch_e6
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v1, v0

    :goto_ec
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_57

    .line 640
    :cond_f1
    const-string v4, ""

    goto/16 :goto_6e

    .line 641
    :cond_f5
    const-string v3, ""

    goto :goto_8a

    .line 642
    :cond_f8
    const-string v2, ""

    goto :goto_a3

    .line 643
    :cond_fb
    const-string v1, ""

    goto :goto_bc

    .line 636
    :catch_fe
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v3, v0

    move-object v1, v0

    goto :goto_ec

    :catch_104
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v1, v0

    goto :goto_ec

    :catch_109
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    goto :goto_ec

    :catch_10d
    move-exception v5

    goto :goto_ec

    .line 634
    :catch_10f
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v3, v0

    move-object v1, v0

    goto :goto_e1

    :catch_115
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v1, v0

    goto :goto_e1

    :catch_11a
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    goto :goto_e1

    :catch_11e
    move-exception v5

    goto :goto_e1

    .line 633
    :catch_120
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v3, v0

    move-object v1, v0

    goto :goto_d6

    :catch_126
    move-exception v1

    move-object v5, v1

    move-object v2, v0

    move-object v1, v0

    goto :goto_d6

    :catch_12b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    goto :goto_d6

    :catch_12f
    move-exception v5

    goto :goto_d6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 659
    .line 662
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_28

    .line 663
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_28

    .line 666
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 672
    :cond_28
    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/antispycell/connmonitor/be;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/antispycell/connmonitor/be;->b:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/be;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/be;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
