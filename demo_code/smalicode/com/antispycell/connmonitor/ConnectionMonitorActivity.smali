.class public Lcom/antispycell/connmonitor/ConnectionMonitorActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ConnectionMonitorActivity.java"


# static fields
.field static a:Landroid/content/SharedPreferences;

.field private static final e:[Ljava/lang/String;


# instance fields
.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/String;

.field d:Lcom/google/analytics/tracking/android/p;

.field private f:Lcom/antispycell/connmonitor/ConnectionMonitor;

.field private g:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    const-string v2, "CURRENT CONNECTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 35
    const-string v2, "CONNECTIONS LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 36
    const-string v2, "APP NETWORK LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 37
    const-string v2, "SETTINGS"

    aput-object v2, v0, v1

    .line 33
    sput-object v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->e:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 250
    :try_start_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 251
    check-cast p2, Landroid/view/ViewGroup;

    .line 252
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 261
    :cond_d
    :goto_d
    return-void

    .line 253
    :cond_e
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 254
    instance-of v2, v1, Landroid/widget/Button;

    if-nez v2, :cond_19

    invoke-direct {p0, p1, v1}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 252
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 256
    :cond_1c
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 257
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_d

    :catch_30
    move-exception v0

    goto :goto_d
.end method

.method static synthetic a()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->e:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const v8, 0x7f08003f

    const v7, 0x7f08002e

    const v6, 0x1030010

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->g:Landroid/support/v4/view/ViewPager;

    .line 54
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ConnectionMonitor;

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->f:Lcom/antispycell/connmonitor/ConnectionMonitor;

    .line 56
    new-instance v0, Lcom/antispycell/connmonitor/t;

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/antispycell/connmonitor/t;-><init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 57
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 58
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->f:Lcom/antispycell/connmonitor/ConnectionMonitor;

    invoke-virtual {v1, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(Lcom/antispycell/connmonitor/v;)V

    .line 59
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->f:Lcom/antispycell/connmonitor/ConnectionMonitor;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_53

    .line 61
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 63
    :cond_53
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 65
    const-string v0, "ui"

    invoke-virtual {p0, v0, v4}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    sput-object v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a:Landroid/content/SharedPreferences;

    const-string v1, "skipWelcome"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    if-nez v0, :cond_e4

    .line 71
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    const v3, 0x7f030011

    invoke-virtual {p0, v7}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    invoke-direct {p0, p0, v1}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    const v0, 0x7f080042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    new-instance v3, Lcom/antispycell/connmonitor/p;

    invoke-direct {v3, p0}, Lcom/antispycell/connmonitor/p;-><init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    new-instance v3, Lcom/antispycell/connmonitor/q;

    invoke-direct {v3, p0, v2}, Lcom/antispycell/connmonitor/q;-><init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 100
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 102
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 104
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 105
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 106
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    .line 109
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    const-string v1, "&cd"

    const-string v2, "WELCOME SCREEN"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    invoke-static {}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 114
    :cond_e4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "trial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_100

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 120
    :cond_100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 122
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 124
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 125
    const v3, 0x7f030010

    invoke-virtual {p0, v7}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 127
    const v0, 0x7f080032

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    const-string v1, "The Live Capture in the Trial version is limited to 15 minutes per capture session. Live capture sessions are unlimited in the PRO version."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    const v1, 0x7f08003e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 133
    new-instance v4, Lcom/antispycell/connmonitor/r;

    invoke-direct {v4, p0, v2}, Lcom/antispycell/connmonitor/r;-><init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v1, Lcom/antispycell/connmonitor/s;

    invoke-direct {v1, p0, v2}, Lcom/antispycell/connmonitor/s;-><init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 171
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 173
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 175
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    .line 176
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    const-string v1, "&cd"

    const-string v2, "Trial Screen - 15 Mins Capture"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    invoke-static {}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 183
    :cond_17d
    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 184
    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->c:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    const-string v0, "[invalid]"

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->c:Ljava/lang/String;

    .line 187
    :cond_1a1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 241
    const/16 v0, 0x52

    if-ne p1, v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->g:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method
