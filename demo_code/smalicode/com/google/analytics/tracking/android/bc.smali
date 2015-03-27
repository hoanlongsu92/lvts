.class final Lcom/google/analytics/tracking/android/bc;
.super Ljava/lang/Object;
.source "SimpleNetworkDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/o;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/client/HttpClient;

.field private final c:Landroid/content/Context;

.field private d:Lcom/google/analytics/tracking/android/an;

.field private e:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {p2}, Lcom/google/analytics/tracking/android/an;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/analytics/tracking/android/bc;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/an;Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/analytics/tracking/android/an;Landroid/content/Context;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/bc;->c:Landroid/content/Context;

    .line 64
    const-string v0, "GoogleAnalytics"

    const-string v1, "3.0"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v6, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/bc;->a:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/google/analytics/tracking/android/bc;->b:Lorg/apache/http/client/HttpClient;

    .line 74
    iput-object p2, p0, Lcom/google/analytics/tracking/android/bc;->d:Lcom/google/analytics/tracking/android/an;

    .line 75
    return-void
.end method

.method private a(Lcom/google/analytics/tracking/android/ao;)Ljava/net/URL;
    .registers 5
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bc;->e:Ljava/net/URL;

    if-eqz v0, :cond_7

    .line 257
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bc;->e:Ljava/net/URL;

    .line 270
    :goto_6
    return-object v0

    .line 260
    :cond_7
    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/ao;->d()Ljava/lang/String;

    move-result-object v1

    .line 262
    :try_start_b
    new-instance v0, Ljava/net/URL;

    const-string v2, "http:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "http://www.google-analytics.com/collect"

    :goto_17
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 269
    :catch_1b
    move-exception v0

    const-string v0, "Error trying to parse the hardcoded host url. This really shouldn\'t happen."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    goto :goto_6

    .line 262
    :cond_23
    :try_start_23
    const-string v1, "https://ssl.google-analytics.com/collect"
    :try_end_25
    .catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_25} :catch_1b

    goto :goto_17
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 191
    const-string v0, "Empty hit, discarding."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 208
    :goto_d
    return-object v0

    .line 194
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7f4

    if-ge v0, v3, :cond_3c

    .line 196
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_34
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/bc;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 198
    :cond_3c
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "POST"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_43
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_34

    .line 203
    :catch_4c
    move-exception v0

    const-string v0, "Encoding error, discarding hit"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 204
    goto :goto_d
.end method

.method private static a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 7
    .parameter

    .prologue
    .line 217
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    .line 219
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 221
    :cond_1f
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 224
    :try_start_36
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_5e

    .line 226
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 227
    if-lez v2, :cond_5e

    .line 228
    new-array v2, v2, [B

    .line 229
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 230
    const-string v0, "POST:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_5e} :catch_66

    .line 238
    :cond_5e
    :goto_5e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 239
    return-void

    .line 235
    :catch_66
    move-exception v0

    const-string v0, "Error Writing hit to log..."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    goto :goto_5e
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .registers 18
    .parameter

    .prologue
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 101
    const/4 v2, 0x1

    .line 102
    const/4 v1, 0x0

    move v4, v1

    :goto_e
    if-ge v4, v5, :cond_15a

    .line 103
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ao;

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/analytics/tracking/android/bc;->a(Lcom/google/analytics/tracking/android/ao;)Ljava/net/URL;

    move-result-object v6

    .line 106
    if-nez v6, :cond_49

    .line 107
    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->a()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No destination: discarding hit: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 112
    :goto_3c
    add-int/lit8 v1, v3, 0x1

    .line 102
    :goto_3e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_e

    .line 110
    :cond_43
    const-string v1, "No destination: discarding hit."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    goto :goto_3c

    .line 116
    :cond_49
    new-instance v7, Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v9

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_75

    const-string v1, ""

    .line 129
    :goto_6a
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lcom/google/analytics/tracking/android/bc;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v6

    .line 130
    if-nez v6, :cond_b5

    .line 131
    add-int/lit8 v1, v3, 0x1

    .line 132
    goto :goto_3e

    .line 126
    :cond_75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->c()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_a3

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->c()J

    move-result-wide v11

    sub-long/2addr v8, v11

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-ltz v11, :cond_a3

    const-string v11, "&qt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_a3
    const-string v8, "&z="

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ao;->b()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    .line 134
    :cond_b5
    const-string v8, "Host"

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/google/analytics/tracking/android/aq;->a()Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 136
    invoke-static {v6}, Lcom/google/analytics/tracking/android/bc;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 138
    :cond_c7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x2000

    if-le v1, v8, :cond_dc

    .line 139
    const-string v1, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    move v1, v2

    .line 169
    :cond_d5
    :goto_d5
    add-int/lit8 v2, v3, 0x1

    move v15, v1

    move v1, v2

    move v2, v15

    goto/16 :goto_3e

    .line 141
    :cond_dc
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/tracking/android/bc;->d:Lcom/google/analytics/tracking/android/an;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/an;->b()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 142
    const-string v1, "Dry run enabled. Hit not actually sent."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->b(Ljava/lang/String;)V

    move v1, v2

    goto :goto_d5

    .line 145
    :cond_ed
    if-eqz v2, :cond_15f

    .line 146
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/analytics/tracking/android/bc;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/u;->b(Landroid/content/Context;)V
    :try_end_f6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_ef .. :try_end_f6} :catch_15c
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f6} :catch_136

    .line 147
    const/4 v1, 0x0

    .line 149
    :goto_f7
    :try_start_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/analytics/tracking/android/bc;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v7, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 150
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 151
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 152
    if-eqz v7, :cond_110

    .line 153
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 155
    :cond_110
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_d5

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
    :try_end_12e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f7 .. :try_end_12e} :catch_12f
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_12e} :catch_136

    goto :goto_d5

    .line 162
    :catch_12f
    move-exception v2

    :goto_130
    const-string v2, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    goto :goto_d5

    .line 163
    :catch_136
    move-exception v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception sending hit: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V

    move v1, v3

    .line 171
    :goto_159
    return v1

    :cond_15a
    move v1, v3

    goto :goto_159

    .line 162
    :catch_15c
    move-exception v1

    move v1, v2

    goto :goto_130

    :cond_15f
    move v1, v2

    goto :goto_f7
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 282
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/bc;->e:Ljava/net/URL;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    .line 286
    :goto_7
    return-void

    .line 284
    :catch_8
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/bc;->e:Ljava/net/URL;

    goto :goto_7
.end method

.method public final a()Z
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/analytics/tracking/android/bc;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 85
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 91
    :cond_16
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method
