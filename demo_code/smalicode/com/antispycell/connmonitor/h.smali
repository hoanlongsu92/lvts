.class public final Lcom/antispycell/connmonitor/h;
.super Landroid/support/v4/app/ListFragment;
.source "ConnectionAppLog.java"


# static fields
.field static a:Lcom/antispycell/connmonitor/JNI;

.field static b:Landroid/content/Context;

.field static c:Ljava/util/List;

.field static e:Landroid/widget/TextView;

.field private static h:Lcom/antispycell/connmonitor/n;


# instance fields
.field d:Landroid/view/ViewGroup;

.field f:Lcom/google/analytics/tracking/android/p;

.field private g:Lcom/antispycell/connmonitor/an;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-static {}, Lcom/antispycell/connmonitor/JNI;->a()Lcom/antispycell/connmonitor/JNI;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/h;->a:Lcom/antispycell/connmonitor/JNI;

    .line 39
    sput-object v1, Lcom/antispycell/connmonitor/h;->h:Lcom/antispycell/connmonitor/n;

    .line 40
    sput-object v1, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    .line 43
    sput-object v1, Lcom/antispycell/connmonitor/h;->e:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antispycell/connmonitor/h;->i:Landroid/os/Handler;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    .line 57
    new-instance v0, Lcom/antispycell/connmonitor/i;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/i;-><init>(Lcom/antispycell/connmonitor/h;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/h;->j:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/h;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 47
    sput-object p0, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/antispycell/connmonitor/h;

    invoke-direct {v0}, Lcom/antispycell/connmonitor/h;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/h;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/antispycell/connmonitor/h;->e:Landroid/widget/TextView;

    .line 237
    if-nez p1, :cond_29

    .line 238
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/antispycell/connmonitor/h;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 240
    sget-object v0, Lcom/antispycell/connmonitor/h;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :goto_28
    return-void

    .line 243
    :cond_29
    sget-object v0, Lcom/antispycell/connmonitor/h;->e:Landroid/widget/TextView;

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

    .line 249
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 250
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 251
    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 253
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 254
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 255
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 257
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_3e

    .line 262
    :goto_31
    return-void

    .line 258
    :pswitch_32
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_31

    .line 259
    :pswitch_36
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_31

    .line 260
    :pswitch_3a
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_31

    .line 257
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method final a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 184
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    const-string v2, "ui"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 188
    const-string v1, "apporder"

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    const-string v3, "appdesc"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 192
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_71

    move-object p2, v1

    .line 201
    :cond_2b
    :goto_2b
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    const-string v2, "apporder"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    const-string v2, "appdesc"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    new-instance v1, Lcom/antispycell/connmonitor/an;

    sget-object v2, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    .line 207
    iget-object v1, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/an;->a()V

    .line 208
    iget-object v1, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v1, p2, v0}, Lcom/antispycell/connmonitor/an;->b(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    .line 209
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 211
    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antispycell/connmonitor/h;->a(I)V

    .line 213
    sget-object v0, Lcom/antispycell/connmonitor/h;->h:Lcom/antispycell/connmonitor/n;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/n;->notifyDataSetChanged()V

    .line 215
    invoke-static {p1, p2}, Lcom/antispycell/connmonitor/h;->a(Landroid/view/View;Ljava/lang/Integer;)V

    .line 230
    return-void

    .line 196
    :cond_71
    if-ne v1, p2, :cond_2b

    .line 197
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2b
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 94
    sget-object v0, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 95
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    .line 98
    :cond_f
    sget-object v0, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    const-string v1, "ui"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    const v0, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    .line 103
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    new-instance v2, Lcom/antispycell/connmonitor/j;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/j;-><init>(Lcom/antispycell/connmonitor/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    const v2, 0x7f08001d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    new-instance v2, Lcom/antispycell/connmonitor/k;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/k;-><init>(Lcom/antispycell/connmonitor/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    new-instance v2, Lcom/antispycell/connmonitor/l;

    invoke-direct {v2, p0}, Lcom/antispycell/connmonitor/l;-><init>(Lcom/antispycell/connmonitor/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const-string v0, "order"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 125
    const-string v0, "desc"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/antispycell/connmonitor/an;

    sget-object v3, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/antispycell/connmonitor/an;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    .line 128
    iget-object v1, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/an;->a()V

    .line 130
    iget-object v1, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v1, v2, v0}, Lcom/antispycell/connmonitor/an;->b(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->g:Lcom/antispycell/connmonitor/an;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/an;->b()V

    .line 133
    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/antispycell/connmonitor/h;->a(I)V

    .line 135
    new-instance v0, Lcom/antispycell/connmonitor/n;

    sget-object v1, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/antispycell/connmonitor/n;-><init>(Lcom/antispycell/connmonitor/h;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/h;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/h;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/n;

    sput-object v0, Lcom/antispycell/connmonitor/h;->h:Lcom/antispycell/connmonitor/n;

    .line 139
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/antispycell/connmonitor/h;->a(Landroid/view/View;Ljava/lang/Integer;)V

    .line 143
    :try_start_ac
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 145
    sget-object v1, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 146
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c4} :catch_e0

    .line 179
    :goto_c4
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    return-object v0

    .line 149
    :cond_c7
    :try_start_c7
    new-instance v1, Lcom/antispycell/connmonitor/m;

    invoke-direct {v1, p0}, Lcom/antispycell/connmonitor/m;-><init>(Lcom/antispycell/connmonitor/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 172
    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_df} :catch_e0

    goto :goto_c4

    :catch_e0
    move-exception v0

    goto :goto_c4
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/antispycell/connmonitor/h;->b:Landroid/content/Context;

    const-class v2, Lcom/antispycell/connmonitor/AppDetails;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v2, "packageName"

    sget-object v0, Lcom/antispycell/connmonitor/h;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/h;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public final onPause()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/h;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 77
    return-void
.end method

.method public final onResume()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/antispycell/connmonitor/h;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/h;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 69
    return-void
.end method
