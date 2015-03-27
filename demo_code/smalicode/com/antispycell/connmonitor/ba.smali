.class public final Lcom/antispycell/connmonitor/ba;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Ljava/lang/Double;

.field private c:Ljava/lang/Double;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 891
    iput-object p1, p0, Lcom/antispycell/connmonitor/ba;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 890
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 885
    iput-object v0, p0, Lcom/antispycell/connmonitor/ba;->b:Ljava/lang/Double;

    .line 886
    iput-object v0, p0, Lcom/antispycell/connmonitor/ba;->c:Ljava/lang/Double;

    .line 887
    iput-object v0, p0, Lcom/antispycell/connmonitor/ba;->d:Ljava/lang/String;

    .line 888
    iput-object v0, p0, Lcom/antispycell/connmonitor/ba;->e:Landroid/content/Context;

    .line 892
    iput-object p2, p0, Lcom/antispycell/connmonitor/ba;->d:Ljava/lang/String;

    .line 893
    return-void
.end method

.method private varargs a([Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 897
    .line 899
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ba;->e:Landroid/content/Context;

    .line 902
    :try_start_5
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 903
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://stat.ripe.net/data/geoloc/data.json?resource="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/antispycell/connmonitor/ba;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 904
    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 907
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 908
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_32} :catch_75
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_32} :catch_7a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_32} :catch_7f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_32} :catch_84

    move-result-object v2

    .line 911
    const/4 v1, 0x0

    .line 914
    :try_start_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_39} :catch_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_39} :catch_75
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_34 .. :try_end_39} :catch_7a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_7f

    .line 920
    :goto_39
    if-eqz v0, :cond_69

    .line 922
    :try_start_3b
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "locations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 924
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/antispycell/connmonitor/ba;->c:Ljava/lang/Double;

    .line 925
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ba;->b:Ljava/lang/Double;
    :try_end_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_69} :catch_75
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3b .. :try_end_69} :catch_7a
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_69} :catch_7f
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_69} :catch_84

    .line 939
    :cond_69
    :goto_69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 917
    :catch_6f
    move-exception v0

    :try_start_70
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_73
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_70 .. :try_end_73} :catch_75
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_70 .. :try_end_73} :catch_7a
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_7f
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_73} :catch_84

    move-object v0, v1

    goto :goto_39

    .line 930
    :catch_75
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_69

    .line 931
    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_69

    .line 933
    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    .line 935
    :catch_84
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_69
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/antispycell/connmonitor/ba;->a([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/antispycell/connmonitor/ba;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-static {v0}, Lcom/antispycell/connmonitor/IPDetails;->a(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/antispycell/connmonitor/at;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ba;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v2, p0, Lcom/antispycell/connmonitor/ba;->c:Ljava/lang/Double;

    iget-object v3, p0, Lcom/antispycell/connmonitor/ba;->b:Ljava/lang/Double;

    invoke-direct {v0, v1, v2, v3}, Lcom/antispycell/connmonitor/at;-><init>(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/Double;Ljava/lang/Double;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/antispycell/connmonitor/ba;->e:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/at;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1e
    return-void
.end method
