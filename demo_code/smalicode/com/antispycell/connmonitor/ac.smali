.class final Lcom/antispycell/connmonitor/ac;
.super Landroid/widget/BaseAdapter;
.source "ConnectionMonitorFragment.java"


# instance fields
.field final a:Landroid/content/pm/PackageManager;

.field final synthetic b:Lcom/antispycell/connmonitor/w;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/w;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/antispycell/connmonitor/ac;->b:Lcom/antispycell/connmonitor/w;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 218
    sget-object v0, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ac;->a:Landroid/content/pm/PackageManager;

    .line 233
    sput-object p2, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    .line 234
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 379
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_1f

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :goto_1e
    return-object v0

    .line 382
    :cond_1f
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kMGTPE"

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    const-string v2, "%.1f %sB"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v5, p0

    int-to-double v7, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 337
    const/4 v1, 0x0

    .line 338
    if-eqz p0, :cond_60

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_60

    .line 342
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    .line 344
    :goto_17
    :try_start_17
    invoke-static {}, Lcom/antispycell/connmonitor/w;->b()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1f} :catch_5e

    move-result-object v1

    .line 351
    :goto_20
    if-nez v1, :cond_31

    if-lez p1, :cond_31

    .line 353
    invoke-static {}, Lcom/antispycell/connmonitor/w;->b()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 355
    if-eqz v3, :cond_31

    .line 357
    :goto_2e
    array-length v4, v3

    if-lt v0, v4, :cond_42

    .line 369
    :cond_31
    if-eqz v1, :cond_55

    .line 370
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/antispycell/connmonitor/w;->b()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_41
    return-object v0

    .line 359
    :cond_42
    aget-object v4, v3, v0

    if-eqz v4, :cond_52

    .line 360
    :try_start_46
    invoke-static {}, Lcom/antispycell/connmonitor/w;->b()Landroid/content/pm/PackageManager;

    move-result-object v4

    aget-object v5, v3, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 364
    array-length v0, v3
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_52} :catch_5c

    .line 357
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 371
    :cond_55
    if-nez p1, :cond_5a

    .line 372
    const-string v0, "Android System"

    goto :goto_41

    :cond_5a
    move-object v0, v2

    .line 374
    goto :goto_41

    :catch_5c
    move-exception v4

    goto :goto_52

    :catch_5e
    move-exception v3

    goto :goto_20

    :cond_60
    move-object v2, p0

    goto :goto_17
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 221
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 229
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 240
    if-nez p2, :cond_1b2

    .line 241
    sget-object v0, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 242
    const v1, 0x7f03000c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 244
    new-instance v1, Lcom/antispycell/connmonitor/ad;

    invoke-direct {v1}, Lcom/antispycell/connmonitor/ad;-><init>()V

    .line 245
    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/ad;->b:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f080006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/ad;->c:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f080036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/ad;->d:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f080003

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/ad;->a:Landroid/widget/ImageView;

    .line 249
    const v0, 0x7f080039

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/antispycell/connmonitor/ad;->e:Landroid/widget/TextView;

    .line 250
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 256
    :goto_55
    sget-object v0, Lcom/antispycell/connmonitor/w;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_60

    .line 257
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/antispycell/connmonitor/w;->e:Landroid/util/SparseArray;

    .line 260
    :cond_60
    sget-object v0, Lcom/antispycell/connmonitor/w;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_6b

    .line 261
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/antispycell/connmonitor/w;->f:Landroid/util/SparseArray;

    .line 266
    :cond_6b
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->a()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "127.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 269
    iget-object v1, p0, Lcom/antispycell/connmonitor/ac;->b:Lcom/antispycell/connmonitor/w;

    iput-object v0, v1, Lcom/antispycell/connmonitor/w;->k:Ljava/lang/String;

    .line 273
    :cond_8b
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0, p1}, Lcom/antispycell/connmonitor/JNI;->GetUID(I)I

    move-result v0

    if-nez v0, :cond_1bb

    .line 274
    const-string v0, "Android system"

    move-object v1, v0

    move-object v0, v3

    .line 295
    :goto_97
    if-eqz v0, :cond_1ff

    .line 296
    iget-object v3, v2, Lcom/antispycell/connmonitor/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :goto_9e
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LISTEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 303
    iget-object v3, v2, Lcom/antispycell/connmonitor/ad;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/antispycell/connmonitor/ad;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_e0
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->b()Ljava/lang/String;

    move-result-object v3

    .line 307
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    iget-object v0, p0, Lcom/antispycell/connmonitor/ac;->b:Lcom/antispycell/connmonitor/w;

    iget-object v0, v0, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_222

    .line 310
    sget-object v0, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_209

    if-eqz v3, :cond_209

    sget-object v0, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_209

    .line 311
    iget-object v5, v2, Lcom/antispycell/connmonitor/ad;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_138
    iget-object v0, v2, Lcom/antispycell/connmonitor/ad;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, v2, Lcom/antispycell/connmonitor/ad;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, v2, Lcom/antispycell/connmonitor/ad;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Sent: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->h()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/antispycell/connmonitor/ac;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Recv: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->i()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/antispycell/connmonitor/ac;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-object p2

    .line 253
    :cond_1b2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ad;

    move-object v2, v0

    goto/16 :goto_55

    .line 277
    :cond_1bb
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->e()I

    move-result v4

    .line 278
    sget-object v0, Lcom/antispycell/connmonitor/w;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    sget-object v1, Lcom/antispycell/connmonitor/w;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    if-nez v0, :cond_1e8

    .line 283
    sget-object v0, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    sget-object v5, Lcom/antispycell/connmonitor/w;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    :cond_1e8
    if-nez v1, :cond_1f3

    .line 288
    invoke-static {v0, v4}, Lcom/antispycell/connmonitor/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 289
    sget-object v5, Lcom/antispycell/connmonitor/w;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    :cond_1f3
    :try_start_1f3
    iget-object v4, p0, Lcom/antispycell/connmonitor/ac;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1f8} :catch_1fb

    move-result-object v0

    goto/16 :goto_97

    :catch_1fb
    move-exception v0

    move-object v0, v3

    goto/16 :goto_97

    .line 298
    :cond_1ff
    iget-object v0, v2, Lcom/antispycell/connmonitor/ad;->a:Landroid/widget/ImageView;

    const v3, 0x7f020009

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9e

    .line 315
    :cond_209
    :try_start_209
    new-instance v0, Lcom/antispycell/connmonitor/aa;

    iget-object v5, p0, Lcom/antispycell/connmonitor/ac;->b:Lcom/antispycell/connmonitor/w;

    iget-object v6, v2, Lcom/antispycell/connmonitor/ad;->b:Landroid/widget/TextView;

    invoke-direct {v0, v5, v6, v3, v4}, Lcom/antispycell/connmonitor/aa;-><init>(Lcom/antispycell/connmonitor/w;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/antispycell/connmonitor/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_21d} :catch_21f

    goto/16 :goto_138

    .line 318
    :catch_21f
    move-exception v0

    goto/16 :goto_138

    .line 320
    :cond_222
    iget-object v0, v2, Lcom/antispycell/connmonitor/ad;->b:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_138
.end method
