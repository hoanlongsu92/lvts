.class public Lcom/antispycell/connmonitor/IPDetails;
.super Landroid/app/Activity;
.source "IPDetails.java"


# static fields
.field static b:Ljava/util/List;


# instance fields
.field a:Landroid/content/pm/PackageManager;

.field c:Lcom/google/analytics/tracking/android/p;

.field private d:Lcom/antispycell/connmonitor/an;

.field private e:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->a:Landroid/content/pm/PackageManager;

    .line 62
    iput-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->e:Landroid/widget/ImageView;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/IPDetails;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/antispycell/connmonitor/IPDetails;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 268
    if-eqz p1, :cond_15

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-nez p2, :cond_15

    .line 269
    const-string v0, "Android System"

    .line 317
    :goto_14
    return-object v0

    .line 272
    :cond_15
    const/4 v1, 0x0

    .line 273
    if-eqz p1, :cond_96

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_96

    .line 276
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 278
    :goto_2b
    :try_start_2b
    iget-object v4, p0, Lcom/antispycell/connmonitor/IPDetails;->a:Landroid/content/pm/PackageManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_31} :catch_53

    move-result-object v1

    .line 288
    :goto_32
    if-nez v1, :cond_44

    if-lez p2, :cond_44

    .line 290
    iget-object v4, p0, Lcom/antispycell/connmonitor/IPDetails;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 292
    if-eqz v4, :cond_44

    array-length v5, v4

    if-le v5, v6, :cond_44

    .line 293
    :goto_41
    array-length v5, v4

    if-lt v0, v5, :cond_59

    .line 307
    :cond_44
    if-eqz v1, :cond_6a

    .line 308
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/antispycell/connmonitor/IPDetails;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 284
    :catch_53
    move-exception v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_32

    .line 295
    :cond_59
    aget-object v5, v4, v0

    if-eqz v5, :cond_67

    .line 296
    :try_start_5d
    iget-object v5, p0, Lcom/antispycell/connmonitor/IPDetails;->a:Landroid/content/pm/PackageManager;

    aget-object v6, v4, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 300
    array-length v0, v4
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_67} :catch_94

    .line 293
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 310
    :cond_6a
    if-nez p2, :cond_6f

    .line 311
    const-string v0, "Android System"

    goto :goto_14

    .line 313
    :cond_6f
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 314
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [noinfo]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_8f
    const-string v0, "[removed]"

    goto :goto_14

    :cond_92
    move-object v0, v2

    .line 317
    goto :goto_14

    :catch_94
    move-exception v5

    goto :goto_67

    :cond_96
    move-object v2, p1

    goto :goto_2b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter

    .prologue
    const/16 v12, 0x27

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/IPDetails;->setContentView(I)V

    .line 69
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 74
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->e:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/IPDetails;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    .line 81
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->a:Landroid/content/pm/PackageManager;

    .line 83
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/IPDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 88
    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    const v5, 0x7f080019

    invoke-virtual {p0, v5}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :try_start_70
    new-instance v0, Lcom/antispycell/connmonitor/av;

    invoke-direct {v0, p0, v1, v6}, Lcom/antispycell/connmonitor/av;-><init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v1, v11

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/av;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7e} :catch_1b2

    .line 100
    :goto_7e
    :try_start_7e
    new-instance v0, Lcom/antispycell/connmonitor/bb;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/antispycell/connmonitor/bb;-><init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/bb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8d} :catch_1b8

    .line 106
    :goto_8d
    new-instance v0, Lcom/antispycell/connmonitor/an;

    invoke-direct {v0, v10}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->d:Lcom/antispycell/connmonitor/an;

    .line 107
    iget-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->d:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->a()V

    .line 108
    iget-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->d:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0, v6}, Lcom/antispycell/connmonitor/an;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->d:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 111
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 112
    const-string v0, "layout_inflater"

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 115
    sget-object v0, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 117
    if-lez v11, :cond_c2

    move v4, v7

    .line 118
    :goto_c0
    if-lt v4, v11, :cond_1be

    .line 127
    :cond_c2
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    new-instance v1, Lcom/antispycell/connmonitor/ap;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/ap;-><init>(Lcom/antispycell/connmonitor/IPDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 138
    new-instance v1, Lcom/antispycell/connmonitor/aq;

    invoke-direct {v1, p0, v6}, Lcom/antispycell/connmonitor/aq;-><init>(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 149
    const-string v0, "ui"

    invoke-virtual {p0, v0, v7}, Lcom/antispycell/connmonitor/IPDetails;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    const-string v0, "ss"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 152
    const/16 v2, 0x33

    if-ge v0, v2, :cond_107

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    const-string v2, "ss"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    :cond_107
    const/16 v1, 0xa

    if-le v0, v1, :cond_10f

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_113

    :cond_10f
    const/16 v1, 0x32

    if-ne v0, v1, :cond_1e2

    :cond_113
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move v2, v0

    move-object v0, v1

    .line 162
    :goto_119
    int-to-long v3, v2

    .line 164
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 166
    new-instance v5, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v5, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 168
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/IPDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 169
    const v6, 0x7f030010

    const v1, 0x7f08002e

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/IPDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 171
    const v0, 0x7f080032

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    const-string v1, "Some features in the FREE version are limited for certain amount of tries. If you like the app and want to use it, please purchase the Unlock key, which unlocks all limitations."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v0, 0x7f08003f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 178
    const v1, 0x7f08003e

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 180
    new-instance v8, Lcom/antispycell/connmonitor/ar;

    invoke-direct {v8, p0, v3, v4, v5}, Lcom/antispycell/connmonitor/ar;-><init>(Lcom/antispycell/connmonitor/IPDetails;JLandroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    if-le v2, v12, :cond_1d7

    .line 203
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    :goto_173
    invoke-virtual {v5, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 222
    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 223
    if-le v2, v12, :cond_1e0

    :goto_17b
    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 224
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 226
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 227
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 228
    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/IPDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->c:Lcom/google/analytics/tracking/android/p;

    .line 231
    iget-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->c:Lcom/google/analytics/tracking/android/p;

    const-string v1, "&cd"

    const-string v2, "TRIAL SCREEN - IP DETAILS"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/antispycell/connmonitor/IPDetails;->c:Lcom/google/analytics/tracking/android/p;

    invoke-static {}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 235
    :cond_1b1
    return-void

    .line 97
    :catch_1b2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7e

    .line 102
    :catch_1b8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8d

    .line 120
    :cond_1be
    :try_start_1be
    new-instance v0, Lcom/antispycell/connmonitor/aw;

    move-object v1, p0

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/antispycell/connmonitor/aw;-><init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/view/ViewGroup;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/aw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1ce} :catch_1d2

    .line 118
    :goto_1ce
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c0

    .line 122
    :catch_1d2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1ce

    .line 206
    :cond_1d7
    new-instance v1, Lcom/antispycell/connmonitor/as;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/antispycell/connmonitor/as;-><init>(Lcom/antispycell/connmonitor/IPDetails;JLandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_173

    :cond_1e0
    move v7, v9

    .line 223
    goto :goto_17b

    :cond_1e2
    move v2, v0

    move-object v0, v8

    goto/16 :goto_119

    :cond_1e6
    move v2, v7

    move-object v0, v8

    goto/16 :goto_119
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    return-void
.end method
