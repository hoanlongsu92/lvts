.class public final Lcom/antispycell/connmonitor/ae;
.super Landroid/support/v4/app/ListFragment;
.source "ConnectionMonitorLog.java"


# static fields
.field static a:Lcom/antispycell/connmonitor/JNI;

.field static b:Landroid/content/Context;

.field static c:Ljava/util/List;

.field static d:Ljava/lang/Boolean;

.field static g:Landroid/widget/TextView;

.field static i:Landroid/util/SparseArray;

.field private static k:Lcom/antispycell/connmonitor/al;


# instance fields
.field e:Landroid/view/ViewGroup;

.field f:Landroid/content/SharedPreferences;

.field h:Lcom/google/analytics/tracking/android/p;

.field private j:Lcom/antispycell/connmonitor/an;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/antispycell/connmonitor/JNI;->a()Lcom/antispycell/connmonitor/JNI;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->a:Lcom/antispycell/connmonitor/JNI;

    .line 46
    sput-object v1, Lcom/antispycell/connmonitor/ae;->k:Lcom/antispycell/connmonitor/al;

    .line 47
    sput-object v1, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    .line 52
    sput-object v1, Lcom/antispycell/connmonitor/ae;->g:Landroid/widget/TextView;

    .line 54
    sput-object v1, Lcom/antispycell/connmonitor/ae;->i:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antispycell/connmonitor/ae;->l:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    .line 68
    new-instance v0, Lcom/antispycell/connmonitor/af;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/af;-><init>(Lcom/antispycell/connmonitor/ae;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/ae;->m:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/ae;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->l:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    sput-object p0, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/antispycell/connmonitor/ae;

    invoke-direct {v0}, Lcom/antispycell/connmonitor/ae;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/ae;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/antispycell/connmonitor/ae;->g:Landroid/widget/TextView;

    .line 292
    if-nez p1, :cond_29

    .line 293
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 294
    sget-object v1, Lcom/antispycell/connmonitor/ae;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 295
    sget-object v0, Lcom/antispycell/connmonitor/ae;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    :goto_28
    return-void

    .line 298
    :cond_29
    sget-object v0, Lcom/antispycell/connmonitor/ae;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28
.end method

.method private static a(Landroid/view/View;Ljava/lang/Integer;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const v4, -0x11000001

    const v3, -0x116b6d6c

    .line 332
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 333
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 334
    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 336
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 337
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 338
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 340
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_3e

    .line 345
    :goto_31
    return-void

    .line 341
    :pswitch_32
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_31

    .line 342
    :pswitch_36
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_31

    .line 343
    :pswitch_3a
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_31

    .line 340
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method

.method private a()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    sget-object v0, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 87
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 94
    invoke-direct {p0, v2}, Lcom/antispycell/connmonitor/ae;->b(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    move v0, v2

    .line 96
    :goto_2e
    return v0

    .line 87
    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 88
    const-class v4, Lcom/antispycell/connmonitor/LoggingService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 89
    invoke-direct {p0, v1}, Lcom/antispycell/connmonitor/ae;->b(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    move v0, v1

    .line 91
    goto :goto_2e
.end method

.method private b(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    .line 305
    iget-object v2, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 307
    packed-switch p1, :pswitch_data_34

    .line 326
    :goto_b
    return v0

    .line 309
    :pswitch_c
    const-string v1, "logger"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    goto :goto_b

    .line 315
    :pswitch_1b
    const-string v0, "logger"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    move v0, v1

    .line 319
    goto :goto_b

    .line 321
    :pswitch_2b
    iget-object v1, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    const-string v2, "logger"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_b

    .line 307
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1b
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method final a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    const-string v2, "order"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    const-string v3, "desc"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 248
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_84

    move-object p2, v1

    .line 262
    :goto_27
    new-instance v1, Lcom/antispycell/connmonitor/an;

    sget-object v2, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    .line 263
    iget-object v1, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/an;->a()V

    .line 264
    iget-object v1, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v1, p2, v0}, Lcom/antispycell/connmonitor/an;->a(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    .line 265
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 267
    sget-object v0, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antispycell/connmonitor/ae;->a(I)V

    .line 269
    sget-object v0, Lcom/antispycell/connmonitor/ae;->k:Lcom/antispycell/connmonitor/al;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/al;->notifyDataSetChanged()V

    .line 270
    invoke-direct {p0}, Lcom/antispycell/connmonitor/ae;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    .line 272
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 274
    sget-object v1, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 275
    const-string v1, "Start Live Capture"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :goto_80
    invoke-static {p1, p2}, Lcom/antispycell/connmonitor/ae;->a(Landroid/view/View;Ljava/lang/Integer;)V

    .line 285
    return-void

    .line 252
    :cond_84
    if-ne v1, p2, :cond_90

    .line 253
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 255
    :cond_90
    iget-object v1, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 256
    const-string v2, "order"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v2, "desc"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_27

    .line 279
    :cond_ad
    const-string v1, "Stop Live Capture"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_80
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 228
    new-instance v0, Lcom/antispycell/connmonitor/ak;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/ak;-><init>(Lcom/antispycell/connmonitor/ae;)V

    .line 236
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 238
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 133
    sget-object v0, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 134
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    .line 137
    :cond_f
    sget-object v0, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    const-string v1, "ui"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    .line 138
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    .line 140
    invoke-direct {p0}, Lcom/antispycell/connmonitor/ae;->a()Z

    .line 142
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    sget-object v1, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e6

    .line 145
    const-string v1, "Start Live Capture"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_4e
    new-instance v1, Lcom/antispycell/connmonitor/ag;

    invoke-direct {v1, p0, v0}, Lcom/antispycell/connmonitor/ag;-><init>(Lcom/antispycell/connmonitor/ae;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 184
    new-instance v1, Lcom/antispycell/connmonitor/ah;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/ah;-><init>(Lcom/antispycell/connmonitor/ae;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 191
    new-instance v1, Lcom/antispycell/connmonitor/ai;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/ai;-><init>(Lcom/antispycell/connmonitor/ae;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 198
    new-instance v1, Lcom/antispycell/connmonitor/aj;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/aj;-><init>(Lcom/antispycell/connmonitor/ae;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    const-string v1, "order"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 205
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->f:Landroid/content/SharedPreferences;

    const-string v2, "desc"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 207
    new-instance v2, Lcom/antispycell/connmonitor/an;

    sget-object v3, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    .line 208
    iget-object v2, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v2}, Lcom/antispycell/connmonitor/an;->a()V

    .line 210
    iget-object v2, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v2, v1, v0}, Lcom/antispycell/connmonitor/an;->a(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    .line 211
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->j:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 213
    sget-object v0, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antispycell/connmonitor/ae;->a(I)V

    .line 215
    new-instance v0, Lcom/antispycell/connmonitor/al;

    sget-object v2, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/antispycell/connmonitor/al;-><init>(Lcom/antispycell/connmonitor/ae;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ae;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/al;

    sput-object v0, Lcom/antispycell/connmonitor/ae;->k:Lcom/antispycell/connmonitor/al;

    .line 218
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/ae;->a(Landroid/view/View;Ljava/lang/Integer;)V

    .line 221
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    return-object v0

    .line 149
    :cond_e6
    const-string v1, "Stop Live Capture"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4e
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    const-class v2, Lcom/antispycell/connmonitor/IPDetails;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v2, "IP"

    sget-object v0, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/ae;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public final onPause()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ae;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 104
    return-void
.end method

.method public final onResume()V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/antispycell/connmonitor/ae;->a()Z

    .line 80
    iget-object v0, p0, Lcom/antispycell/connmonitor/ae;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ae;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 82
    return-void
.end method
