.class final Lcom/antispycell/connmonitor/f;
.super Landroid/widget/BaseAdapter;
.source "AppDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/AppDetails;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/AppDetails;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/antispycell/connmonitor/f;->a:Lcom/antispycell/connmonitor/AppDetails;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 361
    sput-object p2, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    .line 362
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 349
    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 357
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 368
    if-nez p2, :cond_f6

    .line 369
    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 370
    const v1, 0x7f03000b

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 373
    new-instance v1, Lcom/antispycell/connmonitor/g;

    invoke-direct {v1}, Lcom/antispycell/connmonitor/g;-><init>()V

    .line 374
    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/g;->a:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f080033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/g;->b:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f080038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/g;->c:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f080037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/g;->d:Landroid/widget/TextView;

    .line 379
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 386
    :goto_48
    const/4 v2, 0x0

    .line 389
    :try_start_49
    new-instance v3, Lcom/antispycell/connmonitor/e;

    iget-object v4, p0, Lcom/antispycell/connmonitor/f;->a:Lcom/antispycell/connmonitor/AppDetails;

    iget-object v5, v1, Lcom/antispycell/connmonitor/g;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/antispycell/connmonitor/e;-><init>(Lcom/antispycell/connmonitor/AppDetails;Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    aput-object v5, v0, v4

    invoke-virtual {v3, v0}, Lcom/antispycell/connmonitor/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_69} :catch_ff

    .line 394
    :goto_69
    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 395
    new-instance v2, Ljava/util/Date;

    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    .line 396
    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->e()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 396
    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 395
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 398
    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 400
    sget-object v3, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 407
    :cond_bf
    iget-object v3, v1, Lcom/antispycell/connmonitor/g;->a:Landroid/widget/TextView;

    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v3, v1, Lcom/antispycell/connmonitor/g;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Port: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, v1, Lcom/antispycell/connmonitor/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    return-object p2

    .line 382
    :cond_f6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/g;

    move-object v1, v0

    goto/16 :goto_48

    .line 391
    :catch_ff
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_69
.end method
