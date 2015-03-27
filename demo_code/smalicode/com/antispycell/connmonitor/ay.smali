.class public final Lcom/antispycell/connmonitor/ay;
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

    .line 962
    iput-object p1, p0, Lcom/antispycell/connmonitor/ay;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 961
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 957
    iput-object v0, p0, Lcom/antispycell/connmonitor/ay;->c:Ljava/lang/String;

    .line 958
    iput-object v0, p0, Lcom/antispycell/connmonitor/ay;->d:Ljava/lang/String;

    .line 963
    iput-object p3, p0, Lcom/antispycell/connmonitor/ay;->c:Ljava/lang/String;

    .line 964
    iput-object p2, p0, Lcom/antispycell/connmonitor/ay;->b:Landroid/widget/TextView;

    .line 965
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 5

    .prologue
    .line 969
    .line 973
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 974
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://stat.ripe.net/data/blacklist/data.json?resource="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/antispycell/connmonitor/ay;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 976
    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 979
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 980
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2d} :catch_70
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_2d} :catch_75
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2d} :catch_7f

    move-result-object v2

    .line 983
    const/4 v1, 0x0

    .line 986
    :try_start_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_34} :catch_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_34} :catch_70
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2f .. :try_end_34} :catch_75
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_7a

    .line 992
    :goto_34
    if-eqz v0, :cond_64

    .line 993
    :try_start_36
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sources"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 994
    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    .line 995
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_64

    .line 996
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 997
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ay;->d:Ljava/lang/String;
    :try_end_64
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_64} :catch_70
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_36 .. :try_end_64} :catch_75
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_64} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_64} :catch_7f

    .line 1011
    :cond_64
    :goto_64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 989
    :catch_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6b .. :try_end_6e} :catch_70
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6b .. :try_end_6e} :catch_75
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_6e} :catch_7f

    move-object v0, v1

    goto :goto_34

    .line 1002
    :catch_70
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_64

    .line 1003
    :catch_75
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_64

    .line 1005
    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 1007
    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_64
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/ay;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 957
    iget-object v0, p0, Lcom/antispycell/connmonitor/ay;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/antispycell/connmonitor/ay;)Lcom/antispycell/connmonitor/IPDetails;
    .registers 2
    .parameter

    .prologue
    .line 955
    iget-object v0, p0, Lcom/antispycell/connmonitor/ay;->a:Lcom/antispycell/connmonitor/IPDetails;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/antispycell/connmonitor/ay;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/antispycell/connmonitor/ay;->d:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "There\'s no abuse data found for this IP/NetBlock."

    iput-object v0, p0, Lcom/antispycell/connmonitor/ay;->d:Ljava/lang/String;

    :goto_8
    iget-object v0, p0, Lcom/antispycell/connmonitor/ay;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ay;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/antispycell/connmonitor/ay;->b:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/ay;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/antispycell/connmonitor/az;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/az;-><init>(Lcom/antispycell/connmonitor/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8
.end method
