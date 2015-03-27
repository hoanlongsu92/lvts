.class public Lcom/antispycell/connmonitor/AppDetails;
.super Landroid/app/ListActivity;
.source "AppDetails.java"


# static fields
.field static b:Landroid/content/Context;

.field static c:Ljava/util/List;


# instance fields
.field a:Landroid/content/pm/PackageManager;

.field d:Lcom/google/analytics/tracking/android/p;

.field private e:Lcom/antispycell/connmonitor/an;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_f

    .line 258
    if-eqz v0, :cond_e

    move-object p0, v0

    .line 262
    :cond_e
    :goto_e
    return-object p0

    .line 260
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_e
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 426
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 428
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p2, :cond_13

    .line 429
    const-string v0, "Android System"

    .line 477
    :goto_12
    return-object v0

    .line 432
    :cond_13
    const/4 v1, 0x0

    .line 433
    if-eqz p1, :cond_94

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_94

    .line 436
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 438
    :goto_29
    :try_start_29
    iget-object v4, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_2f} :catch_51

    move-result-object v1

    .line 448
    :goto_30
    if-nez v1, :cond_42

    if-lez p2, :cond_42

    .line 450
    iget-object v4, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 452
    if-eqz v4, :cond_42

    array-length v5, v4

    if-le v5, v6, :cond_42

    .line 453
    :goto_3f
    array-length v5, v4

    if-lt v0, v5, :cond_57

    .line 467
    :cond_42
    if-eqz v1, :cond_68

    .line 468
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 444
    :catch_51
    move-exception v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_30

    .line 455
    :cond_57
    aget-object v5, v4, v0

    if-eqz v5, :cond_65

    .line 456
    :try_start_5b
    iget-object v5, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    aget-object v6, v4, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 460
    array-length v0, v4
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_65} :catch_92

    .line 453
    :cond_65
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 470
    :cond_68
    if-nez p2, :cond_6d

    .line 471
    const-string v0, "Android System"

    goto :goto_12

    .line 473
    :cond_6d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 474
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

    .line 477
    goto :goto_12

    :catch_92
    move-exception v5

    goto :goto_65

    :cond_94
    move-object v2, p1

    goto :goto_29
.end method

.method private static b(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 274
    :goto_9
    return-object v0

    .line 271
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 274
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 303
    :try_start_1
    iget-object v1, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    .line 309
    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 489
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    :try_start_2a
    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/AppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 495
    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    goto :goto_2d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sput-object p0, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 54
    const/4 v8, 0x0

    .line 57
    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    .line 59
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/AppDetails;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/AppDetails;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    .line 62
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/AppDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 70
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 72
    const-string v5, ":"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2bf

    .line 73
    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 74
    const/4 v5, 0x0

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 78
    :goto_76
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/antispycell/connmonitor/AppDetails;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 81
    if-eqz v5, :cond_88

    const-string v4, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    :cond_88
    move-object v5, v7

    .line 83
    :cond_89
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 86
    new-instance v11, Lcom/antispycell/connmonitor/a;

    invoke-direct {v11, p0, v5}, Lcom/antispycell/connmonitor/a;-><init>(Lcom/antispycell/connmonitor/AppDetails;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const/4 v4, 0x0

    .line 96
    :try_start_9b
    iget-object v11, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_2b4

    move-result-object v4

    .line 100
    :goto_a1
    if-eqz v4, :cond_212

    .line 101
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :goto_a6
    invoke-direct {p0, v5}, Lcom/antispycell/connmonitor/AppDetails;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    if-eqz v3, :cond_c4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ver: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_c4
    new-instance v0, Lcom/antispycell/connmonitor/an;

    invoke-direct {v0, v10}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->e:Lcom/antispycell/connmonitor/an;

    .line 115
    iget-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->e:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->a()V

    .line 117
    iget-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->e:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0, v6}, Lcom/antispycell/connmonitor/an;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->e:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 120
    new-instance v0, Lcom/antispycell/connmonitor/f;

    invoke-direct {v0, p0, v10}, Lcom/antispycell/connmonitor/f;-><init>(Lcom/antispycell/connmonitor/AppDetails;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/AppDetails;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/AppDetails;->getListAdapter()Landroid/widget/ListAdapter;

    .line 123
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    const-string v2, ""

    .line 131
    :try_start_f3
    iget-object v1, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v1, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 132
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fd} :catch_284

    .line 134
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v2

    :goto_100
    :try_start_100
    array-length v2, v4
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_101} :catch_2b2

    if-lt v3, v2, :cond_21a

    .line 147
    :goto_103
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 150
    new-instance v1, Lcom/antispycell/connmonitor/b;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/b;-><init>(Lcom/antispycell/connmonitor/AppDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2bb

    .line 161
    const-string v0, "ui"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/antispycell/connmonitor/AppDetails;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    const-string v0, "ss"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    const/16 v2, 0x33

    if-ge v0, v2, :cond_140

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 167
    const-string v2, "ss"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    :cond_140
    const/16 v1, 0xa

    if-le v0, v1, :cond_148

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_14c

    :cond_148
    const/16 v1, 0x32

    if-ne v0, v1, :cond_2b7

    :cond_14c
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    .line 174
    :goto_153
    int-to-long v3, v2

    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 178
    new-instance v5, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v5, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/AppDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 181
    const v6, 0x7f030010

    const v1, 0x7f08002e

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 183
    const v0, 0x7f080032

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    const-string v1, "Some features in the FREE version are limited for certain amount of tries. If you like the app and want to use it, please purchase the Unlock key, which unlocks all limitations."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const v0, 0x7f08003f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 190
    const v1, 0x7f08003e

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 192
    new-instance v7, Lcom/antispycell/connmonitor/c;

    invoke-direct {v7, p0, v3, v4, v5}, Lcom/antispycell/connmonitor/c;-><init>(Lcom/antispycell/connmonitor/AppDetails;JLandroid/app/Dialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const/16 v1, 0x27

    if-le v2, v1, :cond_2a5

    .line 213
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    :goto_1af
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 232
    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 233
    const/16 v0, 0x27

    if-le v2, v0, :cond_2af

    const/4 v0, 0x0

    :goto_1bb
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 234
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 236
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 237
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 238
    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/AppDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    .line 241
    iget-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    const-string v1, "&cd"

    const-string v2, "TRIAL SCREEN - APP DETAILS"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    invoke-static {}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 247
    :cond_1f1
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/AppDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    .line 248
    iget-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    const-string v1, "&cd"

    const-string v2, "APP DETAILS"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/antispycell/connmonitor/AppDetails;->d:Lcom/google/analytics/tracking/android/p;

    invoke-static {}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 251
    return-void

    .line 103
    :cond_212
    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 135
    :cond_21a
    :try_start_21a
    aget-object v2, v4, v3

    if-eqz v2, :cond_279

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<font color=\'#00ff00\'>\u2714</font> <b>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v3

    iget-object v6, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    invoke-static {v5, v6}, Lcom/antispycell/connmonitor/AppDetails;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</b><font color=\'#dddddd\'>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v4, v3

    iget-object v6, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    invoke-static {v2, v6}, Lcom/antispycell/connmonitor/AppDetails;->b(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_27e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "<br>"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v3

    iget-object v7, p0, Lcom/antispycell/connmonitor/AppDetails;->a:Landroid/content/pm/PackageManager;

    invoke-static {v6, v7}, Lcom/antispycell/connmonitor/AppDetails;->b(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_260
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</font>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v3, 0x1

    array-length v6, v4

    if-ne v2, v6, :cond_281

    const-string v2, ""

    :goto_271
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_279
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_100

    .line 136
    :cond_27e
    const-string v2, ""

    goto :goto_260

    :cond_281
    const-string v2, "<br><br>"
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_283} :catch_2b2

    goto :goto_271

    .line 139
    :catch_284
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    :goto_288
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/antispycell/connmonitor/AppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_103

    .line 216
    :cond_2a5
    new-instance v1, Lcom/antispycell/connmonitor/d;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/antispycell/connmonitor/d;-><init>(Lcom/antispycell/connmonitor/AppDetails;JLandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1af

    .line 233
    :cond_2af
    const/4 v0, 0x1

    goto/16 :goto_1bb

    .line 139
    :catch_2b2
    move-exception v2

    goto :goto_288

    :catch_2b4
    move-exception v11

    goto/16 :goto_a1

    :cond_2b7
    move v2, v0

    move-object v0, v9

    goto/16 :goto_153

    :cond_2bb
    move v2, v8

    move-object v0, v9

    goto/16 :goto_153

    :cond_2bf
    move-object v5, v6

    goto/16 :goto_76
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/antispycell/connmonitor/AppDetails;->b:Landroid/content/Context;

    const-class v2, Lcom/antispycell/connmonitor/IPDetails;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 282
    const-string v2, "IP"

    sget-object v0, Lcom/antispycell/connmonitor/AppDetails;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/AppDetails;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 290
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 295
    return-void
.end method
