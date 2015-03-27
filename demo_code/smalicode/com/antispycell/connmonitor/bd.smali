.class public final Lcom/antispycell/connmonitor/bd;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 690
    iput-object p1, p0, Lcom/antispycell/connmonitor/bd;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 689
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 684
    iput-object v0, p0, Lcom/antispycell/connmonitor/bd;->e:Ljava/lang/String;

    .line 685
    iput-object v0, p0, Lcom/antispycell/connmonitor/bd;->f:Ljava/lang/String;

    .line 686
    iput-object v0, p0, Lcom/antispycell/connmonitor/bd;->g:Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/antispycell/connmonitor/bd;->h:Ljava/lang/String;

    .line 691
    iput-object p5, p0, Lcom/antispycell/connmonitor/bd;->h:Ljava/lang/String;

    .line 692
    iput-object p2, p0, Lcom/antispycell/connmonitor/bd;->b:Landroid/widget/TextView;

    .line 693
    iput-object p3, p0, Lcom/antispycell/connmonitor/bd;->c:Landroid/widget/TextView;

    .line 694
    iput-object p4, p0, Lcom/antispycell/connmonitor/bd;->d:Landroid/widget/TextView;

    .line 695
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 699
    .line 703
    :try_start_2
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 704
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://stat.ripe.net/data/registry-browser/data.json?resource="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/antispycell/connmonitor/bd;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&use_live_lookups=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 705
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 708
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 709
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_35} :catch_14d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_35} :catch_153
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_159
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_35} :catch_15f

    move-result-object v3

    .line 715
    :try_start_36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3b} :catch_9b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_3b} :catch_14d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_36 .. :try_end_3b} :catch_153
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_159

    move-object v5, v0

    .line 721
    :goto_3c
    if-eqz v5, :cond_95

    .line 723
    :try_start_3e
    const-string v0, "data"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "objects"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 724
    const-string v3, "fields"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 728
    const-string v0, ""

    move v4, v1

    move-object v3, v2

    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    .line 731
    :goto_5c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_a1

    .line 751
    iput-object v3, p0, Lcom/antispycell/connmonitor/bd;->e:Ljava/lang/String;

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/bd;->g:Ljava/lang/String;

    .line 754
    const-string v0, "data"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "backward_refs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 755
    const-string v2, "fields"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 757
    :goto_8f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_92
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_92} :catch_14d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3e .. :try_end_92} :catch_153
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_92} :catch_159
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_92} :catch_15f

    move-result v1

    if-lt v0, v1, :cond_127

    .line 778
    :cond_95
    :goto_95
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 718
    :catch_9b
    move-exception v0

    :try_start_9c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v2

    goto :goto_3c

    .line 733
    :cond_a1
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 734
    const-string v8, "key"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "netname"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 735
    const-string v8, "value"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c1

    .line 736
    const-string v3, "value"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    :cond_c1
    const-string v8, "key"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "descr"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f4

    .line 740
    const-string v8, "value"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f4

    .line 741
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    :cond_f4
    const-string v8, "key"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "country"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_123

    .line 745
    const-string v8, "value"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_123

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "value"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_123
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5c

    .line 759
    :cond_127
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 760
    const-string v3, "key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "origin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 761
    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_149

    .line 762
    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antispycell/connmonitor/bd;->f:Ljava/lang/String;
    :try_end_149
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9c .. :try_end_149} :catch_14d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9c .. :try_end_149} :catch_153
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_149} :catch_159
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_149} :catch_15f

    .line 757
    :cond_149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8f

    .line 769
    :catch_14d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_95

    .line 770
    :catch_153
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_95

    .line 772
    :catch_159
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_95

    .line 774
    :catch_15f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_95
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/antispycell/connmonitor/bd;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1
    iget-object v0, p0, Lcom/antispycell/connmonitor/bd;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bd;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bd;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bd;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bd;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/bd;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/bd;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
