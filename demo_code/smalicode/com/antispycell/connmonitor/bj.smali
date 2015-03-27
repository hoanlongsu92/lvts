.class public final Lcom/antispycell/connmonitor/bj;
.super Landroid/support/v4/app/Fragment;
.source "SettingsFragment.java"


# static fields
.field static a:Landroid/content/Context;


# instance fields
.field b:Landroid/view/ViewGroup;

.field c:Landroid/content/SharedPreferences;

.field d:Lcom/google/analytics/tracking/android/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 42
    sput-object p0, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/antispycell/connmonitor/bj;

    invoke-direct {v0}, Lcom/antispycell/connmonitor/bj;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/bj;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/bj;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/antispycell/connmonitor/bj;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a()Z
    .registers 3

    .prologue
    .line 500
    sget-object v0, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 501
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 506
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 501
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 502
    const-class v2, Lcom/antispycell/connmonitor/LoggingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 503
    const/4 v0, 0x1

    goto :goto_1c
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    move-object/from16 v0, p3

    invoke-super {p0, v0}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/bj;->setRetainInstance(Z)V

    .line 66
    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    if-nez v1, :cond_17

    .line 67
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    .line 70
    :cond_17
    sget-object v1, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    const-string v2, "ui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/antispycell/connmonitor/bj;->c:Landroid/content/SharedPreferences;

    .line 73
    const v1, 0x7f030008

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    .line 74
    iget-object v1, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    const/4 v2, 0x5

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 77
    const-string v3, "Auto-stop live capture after 24 hours"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    .line 78
    const-string v3, "Disable notification in status bar"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    .line 79
    const-string v3, "Loopback connections"

    aput-object v3, v7, v2

    const/4 v2, 0x3

    .line 80
    const-string v3, "Android System"

    aput-object v3, v7, v2

    const/4 v2, 0x4

    .line 81
    const-string v3, "Established Connections"

    aput-object v3, v7, v2

    .line 83
    const/4 v2, 0x5

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 84
    const-string v3, "Keeping the live-capture on for long period of time may drain your battery."

    aput-object v3, v8, v2

    const/4 v2, 0x1

    .line 85
    const-string v3, "Don\u2019t show notification in status bar when the live-capture is running."

    aput-object v3, v8, v2

    const/4 v2, 0x2

    .line 86
    const-string v3, "Don\u2019t log loopback connections and connections to localhost."

    aput-object v3, v8, v2

    const/4 v2, 0x3

    .line 87
    const-string v3, "Don\u2019t log connections from Android core.\nNote: Disable if you want to capture fast connections with no UID (app) assigned."

    aput-object v3, v8, v2

    const/4 v2, 0x4

    .line 88
    const-string v3, "Log only established connections. Note: This will skip all other connection states and log only established."

    aput-object v3, v8, v2

    .line 93
    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 94
    const/high16 v2, 0x101

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    const-string v4, "LIVE CAPTURE OPTIONS"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v2, 0x0

    move v6, v2

    :goto_92
    array-length v2, v7

    if-lt v6, v2, :cond_28f

    .line 169
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Hidden Apps"

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const-string v3, "System Apps"

    aput-object v3, v8, v2

    .line 170
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 171
    const-string v3, "Show notification when hidden apps (with no launcher) are making connections"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    .line 172
    const-string v3, "Skip hidden apps notifications for system packages"

    aput-object v3, v9, v2

    .line 175
    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 176
    const/high16 v2, 0x101

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    const-string v4, "ALERTS"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v7, v5

    .line 181
    :goto_cc
    array-length v2, v8

    add-int/2addr v2, v5

    if-lt v7, v2, :cond_3a3

    .line 227
    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 228
    const/high16 v2, 0x101

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 229
    const-string v4, "DATABASE"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    const v2, 0x7f03000f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 233
    const v2, 0x7f03000e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 235
    const v2, 0x7f08003c

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    const v3, 0x7f08003d

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 237
    const v4, 0x7f08003b

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 238
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 240
    const-string v4, "Clear Database"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const-string v2, "Click to clear all captured connections."

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    new-instance v2, Lcom/antispycell/connmonitor/bq;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bq;-><init>(Lcom/antispycell/connmonitor/bj;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    const v2, 0x7f03000e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 272
    const v2, 0x7f03000f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 274
    const v2, 0x7f08003c

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 275
    const v3, 0x7f08003d

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 276
    const v4, 0x7f08003b

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 277
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 279
    const-string v4, "Export Database And Send"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const-string v2, "Click to export DB to CSV file and send it."

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v2, Lcom/antispycell/connmonitor/bt;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bt;-><init>(Lcom/antispycell/connmonitor/bj;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 307
    const/high16 v2, 0x101

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 308
    const-string v4, "OTHER"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    sget-object v2, Lcom/antispycell/connmonitor/bj;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f4

    .line 314
    const v2, 0x7f03000e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 315
    const v2, 0x7f03000f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 318
    const v2, 0x7f08003c

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 319
    const v3, 0x7f08003d

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 320
    const v4, 0x7f08003b

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 321
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 323
    const-string v4, "Download Unlock Key"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const-string v2, "The Unlock License Key removes all app limitations"

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v2, Lcom/antispycell/connmonitor/bu;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bu;-><init>(Lcom/antispycell/connmonitor/bj;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    :cond_1f4
    const v2, 0x7f03000e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 352
    const v2, 0x7f03000f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 355
    const v2, 0x7f08003c

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 356
    const v3, 0x7f08003d

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 357
    const v4, 0x7f08003b

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 358
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 360
    const-string v4, "Legal Terms"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const-string v2, "Terms and Conditions of use"

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    new-instance v2, Lcom/antispycell/connmonitor/bv;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bv;-><init>(Lcom/antispycell/connmonitor/bj;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    const v2, 0x7f03000e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 378
    const v2, 0x7f03000f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 381
    const v2, 0x7f08003c

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 382
    const v3, 0x7f08003d

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 383
    const v4, 0x7f08003b

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 384
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 386
    const-string v4, "Exit"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const-string v2, "Exit the app. If you want to stop Live capture, use the \'Stop Live Capture\' button."

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    new-instance v2, Lcom/antispycell/connmonitor/bw;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/bw;-><init>(Lcom/antispycell/connmonitor/bj;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object v1, p0, Lcom/antispycell/connmonitor/bj;->b:Landroid/view/ViewGroup;

    return-object v1

    .line 100
    :cond_28f
    const/4 v2, 0x1

    if-ne v6, v2, :cond_298

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_429

    .line 102
    :cond_298
    const v2, 0x7f03000f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 103
    const v2, 0x7f03000e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 105
    const v2, 0x7f08003c

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    .line 106
    const v2, 0x7f08003d

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    const v3, 0x7f08003b

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v11, p0, Lcom/antispycell/connmonitor/bj;->c:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "value"

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_2eb

    const/4 v5, 0x2

    if-eq v6, v5, :cond_2eb

    const/4 v5, 0x3

    if-eq v6, v5, :cond_2eb

    const/4 v5, 0x5

    if-eq v6, v5, :cond_2eb

    const/4 v5, 0x6

    if-ne v6, v5, :cond_39a

    :cond_2eb
    const/4 v5, 0x1

    :goto_2ec
    invoke-interface {v11, v12, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_39d

    .line 113
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    :goto_2f6
    new-instance v5, Lcom/antispycell/connmonitor/bk;

    invoke-direct {v5, p0, v6}, Lcom/antispycell/connmonitor/bk;-><init>(Lcom/antispycell/connmonitor/bj;I)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    invoke-static {}, Lcom/antispycell/connmonitor/bj;->a()Z

    move-result v5

    if-eqz v5, :cond_30c

    .line 132
    new-instance v5, Lcom/antispycell/connmonitor/bl;

    invoke-direct {v5, p0}, Lcom/antispycell/connmonitor/bl;-><init>(Lcom/antispycell/connmonitor/bj;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_30c
    add-int/lit8 v5, v6, 0x64

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setId(I)V

    .line 149
    aget-object v3, v7, v6

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    aget-object v3, v8, v6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    if-nez v6, :cond_38c

    .line 153
    iget-object v3, p0, Lcom/antispycell/connmonitor/bj;->c:Landroid/content/SharedPreferences;

    const-string v4, "nextAlarm"

    const-wide/16 v11, 0x0

    invoke-interface {v3, v4, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 156
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-lez v5, :cond_38c

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-lez v5, :cond_38c

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "The live capture will be stopped in "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v11, v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    long-to-int v3, v3

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v4, v3, 0x3c

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v3, v3, 0x18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "h "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_38c
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    add-int/lit8 v2, v6, 0x1

    .line 99
    :goto_394
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v5, v2

    goto/16 :goto_92

    .line 112
    :cond_39a
    const/4 v5, 0x0

    goto/16 :goto_2ec

    .line 116
    :cond_39d
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2f6

    .line 182
    :cond_3a3
    const v2, 0x7f03000f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 183
    const v2, 0x7f03000e

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 185
    const v2, 0x7f08003c

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    const v3, 0x7f08003d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 187
    const v4, 0x7f08003b

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 190
    new-instance v6, Lcom/antispycell/connmonitor/bn;

    invoke-direct {v6, p0, v7}, Lcom/antispycell/connmonitor/bn;-><init>(Lcom/antispycell/connmonitor/bj;I)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    invoke-static {}, Lcom/antispycell/connmonitor/bj;->a()Z

    move-result v6

    if-eqz v6, :cond_3e8

    .line 199
    new-instance v6, Lcom/antispycell/connmonitor/bo;

    invoke-direct {v6, p0}, Lcom/antispycell/connmonitor/bo;-><init>(Lcom/antispycell/connmonitor/bj;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_3e8
    iget-object v12, p0, Lcom/antispycell/connmonitor/bj;->c:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v13, "value"

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v7, :cond_401

    const/4 v6, 0x2

    if-eq v7, v6, :cond_401

    const/4 v6, 0x3

    if-ne v7, v6, :cond_427

    :cond_401
    const/4 v6, 0x1

    :goto_402
    invoke-interface {v12, v13, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    add-int/lit8 v6, v7, 0x64

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setId(I)V

    .line 218
    sub-int v4, v7, v5

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sub-int v2, v7, v5

    aget-object v2, v9, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_cc

    .line 214
    :cond_427
    const/4 v6, 0x0

    goto :goto_402

    :cond_429
    move v2, v5

    goto/16 :goto_394
.end method

.method public final onPause()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 57
    return-void
.end method
