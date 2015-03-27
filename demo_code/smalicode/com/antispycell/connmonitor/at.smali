.class public final Lcom/antispycell/connmonitor/at;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Ljava/lang/Double;

.field private c:Ljava/lang/Double;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/Double;Ljava/lang/Double;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 375
    iput-object p1, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 374
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 367
    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->b:Ljava/lang/Double;

    .line 368
    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->c:Ljava/lang/Double;

    .line 369
    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->d:Landroid/graphics/drawable/Drawable;

    .line 370
    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->e:Ljava/lang/Integer;

    .line 371
    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->f:Ljava/lang/Integer;

    .line 372
    const/4 v0, 0x1

    iput v0, p0, Lcom/antispycell/connmonitor/at;->g:I

    .line 376
    iput-object p2, p0, Lcom/antispycell/connmonitor/at;->b:Ljava/lang/Double;

    .line 377
    iput-object p3, p0, Lcom/antispycell/connmonitor/at;->c:Ljava/lang/Double;

    .line 378
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 7

    .prologue
    const/16 v2, 0xc8

    const/4 v4, 0x0

    .line 382
    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/IPDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 383
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    iput v1, p0, Lcom/antispycell/connmonitor/at;->g:I

    .line 385
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->e:Ljava/lang/Integer;

    .line 386
    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->e:Ljava/lang/Integer;

    .line 387
    :cond_2a
    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-static {v0}, Lcom/antispycell/connmonitor/IPDetails;->a(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/antispycell/connmonitor/at;->g:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->f:Ljava/lang/Integer;

    .line 389
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->b:Ljava/lang/Double;

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->c:Ljava/lang/Double;

    if-nez v0, :cond_4b

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 426
    :goto_4a
    return-object v0

    .line 394
    :cond_4b
    const/4 v0, 0x2

    iput v0, p0, Lcom/antispycell/connmonitor/at;->g:I

    .line 399
    :try_start_4e
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/antispycell/connmonitor/at;->b:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/antispycell/connmonitor/at;->c:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&zoom=7&size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/antispycell/connmonitor/at;->f:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/antispycell/connmonitor/at;->e:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&markers=color:blue%7Clabel:A%7C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/antispycell/connmonitor/at;->b:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/antispycell/connmonitor/at;->c:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/antispycell/connmonitor/at;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sensor=false&key=AIzaSyBIDVprlQ24Ziy2yJsqRZJul5caO-QDpcI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/net/MalformedURLException; {:try_start_4e .. :try_end_b2} :catch_d4

    .line 406
    :try_start_b2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b8} :catch_de

    .line 407
    :try_start_b8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_ed

    move-object v1, v0

    .line 412
    :goto_bc
    :try_start_bc
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_e3

    move-result-object v0

    .line 421
    check-cast v0, Ljava/io/InputStream;

    const-string v2, "src"

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/at;->d:Landroid/graphics/drawable/Drawable;

    .line 422
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 426
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_4a

    .line 401
    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 402
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_4a

    .line 409
    :catch_de
    move-exception v0

    :goto_df
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bc

    .line 417
    :catch_e3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_4a

    .line 409
    :catch_ed
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_df
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/at;)Ljava/lang/Double;
    .registers 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->b:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic b(Lcom/antispycell/connmonitor/at;)Ljava/lang/Double;
    .registers 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->c:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic c(Lcom/antispycell/connmonitor/at;)Lcom/antispycell/connmonitor/IPDetails;
    .registers 2
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/antispycell/connmonitor/at;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-static {v0}, Lcom/antispycell/connmonitor/IPDetails;->a(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/antispycell/connmonitor/at;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-static {v0}, Lcom/antispycell/connmonitor/IPDetails;->a(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/antispycell/connmonitor/at;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-static {v0}, Lcom/antispycell/connmonitor/IPDetails;->a(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/antispycell/connmonitor/at;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/antispycell/connmonitor/at;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-static {v0}, Lcom/antispycell/connmonitor/IPDetails;->a(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/antispycell/connmonitor/au;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/au;-><init>(Lcom/antispycell/connmonitor/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_45
    return-void
.end method
