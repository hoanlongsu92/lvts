.class final Lcom/antispycell/connmonitor/n;
.super Landroid/widget/BaseAdapter;
.source "ConnectionAppLog.java"


# instance fields
.field final a:Landroid/content/pm/PackageManager;

.field final synthetic b:Lcom/antispycell/connmonitor/h;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/h;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/antispycell/connmonitor/n;->b:Lcom/antispycell/connmonitor/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 265
    sget-object v0, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/n;->a:Landroid/content/pm/PackageManager;

    .line 280
    sput-object p2, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    .line 281
    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 352
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 354
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p2, :cond_13

    .line 355
    const-string v0, "Android System"

    .line 403
    :goto_12
    return-object v0

    .line 358
    :cond_13
    const/4 v1, 0x0

    .line 359
    if-eqz p1, :cond_94

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_94

    .line 362
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 364
    :goto_29
    :try_start_29
    iget-object v4, p0, Lcom/antispycell/connmonitor/n;->a:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_2f} :catch_51

    move-result-object v1

    .line 374
    :goto_30
    if-nez v1, :cond_42

    if-lez p2, :cond_42

    .line 376
    iget-object v4, p0, Lcom/antispycell/connmonitor/n;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_42

    array-length v5, v4

    if-le v5, v6, :cond_42

    .line 379
    :goto_3f
    array-length v5, v4

    if-lt v0, v5, :cond_57

    .line 393
    :cond_42
    if-eqz v1, :cond_68

    .line 394
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/antispycell/connmonitor/n;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 370
    :catch_51
    move-exception v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_30

    .line 381
    :cond_57
    aget-object v5, v4, v0

    if-eqz v5, :cond_65

    .line 382
    :try_start_5b
    iget-object v5, p0, Lcom/antispycell/connmonitor/n;->a:Landroid/content/pm/PackageManager;

    aget-object v6, v4, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 386
    array-length v0, v4
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_65} :catch_92

    .line 379
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 396
    :cond_68
    if-nez p2, :cond_6d

    .line 397
    const-string v0, "Android System"

    goto :goto_12

    .line 399
    :cond_6d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 400
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [noinfo]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_8d
    const-string v0, "[removed]"

    goto :goto_12

    :cond_90
    move-object v0, v2

    .line 403
    goto :goto_12

    :catch_92
    move-exception v5

    goto :goto_65

    :cond_94
    move-object v2, p1

    goto :goto_29
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 268
    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 287
    if-nez p2, :cond_110

    .line 288
    sget-object v0, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 289
    const v1, 0x7f03000c

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 292
    new-instance v1, Lcom/antispycell/connmonitor/o;

    invoke-direct {v1}, Lcom/antispycell/connmonitor/o;-><init>()V

    .line 293
    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/o;->b:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f080006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/o;->c:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f080036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/o;->d:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f080003

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/o;->a:Landroid/widget/ImageView;

    .line 297
    const v0, 0x7f080039

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/o;->e:Landroid/widget/TextView;

    .line 298
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    :goto_53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 316
    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->d()Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_89

    .line 319
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 320
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_89
    const/4 v3, 0x0

    .line 326
    :try_start_8a
    iget-object v4, p0, Lcom/antispycell/connmonitor/n;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8f} :catch_123

    move-result-object v3

    .line 330
    :goto_90
    if-eqz v3, :cond_119

    .line 331
    iget-object v4, v1, Lcom/antispycell/connmonitor/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :goto_97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/antispycell/connmonitor/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 338
    if-eqz v0, :cond_a9

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    :cond_a9
    move-object v0, v2

    .line 341
    :cond_aa
    iget-object v3, v1, Lcom/antispycell/connmonitor/o;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, v1, Lcom/antispycell/connmonitor/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->a()J

    move-result-wide v3

    long-to-int v0, v3

    div-int v0, v2, v0

    .line 345
    iget-object v2, v1, Lcom/antispycell/connmonitor/o;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Net Activity: ~ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/antispycell/connmonitor/by;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, v1, Lcom/antispycell/connmonitor/o;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "IP addresses: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-object p2

    .line 301
    :cond_110
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/o;

    move-object v1, v0

    goto/16 :goto_53

    .line 333
    :cond_119
    iget-object v3, v1, Lcom/antispycell/connmonitor/o;->a:Landroid/widget/ImageView;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_97

    :catch_123
    move-exception v4

    goto/16 :goto_90
.end method
