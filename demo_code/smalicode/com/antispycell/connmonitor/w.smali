.class public final Lcom/antispycell/connmonitor/w;
.super Landroid/support/v4/app/ListFragment;
.source "ConnectionMonitorFragment.java"


# static fields
.field static a:Lcom/antispycell/connmonitor/JNI;

.field static b:Landroid/content/Context;

.field static c:Ljava/util/List;

.field static d:Ljava/util/HashMap;

.field static e:Landroid/util/SparseArray;

.field static f:Landroid/util/SparseArray;

.field private static m:Landroid/content/pm/PackageManager;

.field private static o:Lcom/antispycell/connmonitor/ac;


# instance fields
.field g:Landroid/content/SharedPreferences;

.field final h:I

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Ljava/lang/String;

.field l:Ljava/lang/Boolean;

.field private n:Landroid/os/Handler;

.field private p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Lcom/antispycell/connmonitor/JNI;->a()Lcom/antispycell/connmonitor/JNI;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    .line 40
    sput-object v1, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    .line 41
    sput-object v1, Lcom/antispycell/connmonitor/w;->m:Landroid/content/pm/PackageManager;

    .line 42
    sput-object v1, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    .line 43
    sput-object v1, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    .line 44
    sput-object v1, Lcom/antispycell/connmonitor/w;->e:Landroid/util/SparseArray;

    .line 45
    sput-object v1, Lcom/antispycell/connmonitor/w;->f:Landroid/util/SparseArray;

    .line 51
    sput-object v1, Lcom/antispycell/connmonitor/w;->o:Lcom/antispycell/connmonitor/ac;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antispycell/connmonitor/w;->n:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/antispycell/connmonitor/w;->h:I

    .line 53
    iput-object v1, p0, Lcom/antispycell/connmonitor/w;->i:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/antispycell/connmonitor/w;->j:Landroid/widget/TextView;

    .line 55
    const-string v0, "-"

    iput-object v0, p0, Lcom/antispycell/connmonitor/w;->k:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    .line 207
    new-instance v0, Lcom/antispycell/connmonitor/x;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/x;-><init>(Lcom/antispycell/connmonitor/w;)V

    iput-object v0, p0, Lcom/antispycell/connmonitor/w;->p:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/w;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 60
    sput-object p0, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/antispycell/connmonitor/w;

    invoke-direct {v0}, Lcom/antispycell/connmonitor/w;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/w;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter

    .prologue
    const v2, -0x116b6d6c

    .line 195
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 198
    iget-object v1, p0, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 199
    const v1, -0x11000001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 204
    :goto_1d
    return-void

    .line 202
    :cond_1e
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1d
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/w;Landroid/view/ViewGroup;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/antispycell/connmonitor/w;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b()Landroid/content/pm/PackageManager;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/antispycell/connmonitor/w;->m:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .registers 6

    .prologue
    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    const/4 v0, 0x0

    :goto_6
    sget-object v2, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v2}, Lcom/antispycell/connmonitor/JNI;->GetCounts()I

    move-result v2

    if-lt v0, v2, :cond_f

    .line 535
    return-object v1

    .line 531
    :cond_f
    sget-object v2, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    new-instance v3, Lcom/antispycell/connmonitor/ab;

    invoke-direct {v3, p0}, Lcom/antispycell/connmonitor/ab;-><init>(Lcom/antispycell/connmonitor/w;)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetLocalIP(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetRemoteIP(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetLocalPort(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->a(I)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetRemotePort(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->b(I)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetUID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->c(I)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetStatus(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetProtocol(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetSND(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/antispycell/connmonitor/ab;->d(I)V

    invoke-virtual {v2, v0}, Lcom/antispycell/connmonitor/JNI;->GetRX(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/antispycell/connmonitor/ab;->e(I)V

    .line 532
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 105
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->GetCounts()I

    move-result v0

    if-lez v0, :cond_22

    .line 106
    invoke-direct {p0}, Lcom/antispycell/connmonitor/w;->c()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    .line 107
    sget-object v0, Lcom/antispycell/connmonitor/w;->o:Lcom/antispycell/connmonitor/ac;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ac;->notifyDataSetChanged()V

    .line 108
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antispycell/connmonitor/w;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void

    .line 110
    :cond_22
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 111
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    new-instance v0, Lcom/antispycell/connmonitor/y;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/y;-><init>(Lcom/antispycell/connmonitor/w;)V

    .line 129
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/w;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 131
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 144
    const v0, 0x7f030007

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    sget-object v1, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    if-nez v1, :cond_19

    .line 147
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    .line 150
    :cond_19
    sget-object v1, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/antispycell/connmonitor/w;->m:Landroid/content/pm/PackageManager;

    .line 151
    sget-object v1, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    const-string v2, "ui"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/antispycell/connmonitor/w;->g:Landroid/content/SharedPreferences;

    .line 153
    iget-object v1, p0, Lcom/antispycell/connmonitor/w;->g:Landroid/content/SharedPreferences;

    const-string v2, "resolvehostnames"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    .line 155
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/antispycell/connmonitor/w;->i:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/antispycell/connmonitor/w;->j:Landroid/widget/TextView;

    .line 157
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Roboto-Light.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/antispycell/connmonitor/w;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 161
    new-instance v2, Lcom/antispycell/connmonitor/z;

    invoke-direct {v2, p0, v0}, Lcom/antispycell/connmonitor/z;-><init>(Lcom/antispycell/connmonitor/w;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/antispycell/connmonitor/w;->a(Landroid/view/ViewGroup;)V

    .line 184
    invoke-direct {p0}, Lcom/antispycell/connmonitor/w;->c()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    .line 186
    new-instance v1, Lcom/antispycell/connmonitor/ac;

    sget-object v2, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/antispycell/connmonitor/ac;-><init>(Lcom/antispycell/connmonitor/w;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/w;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/w;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/antispycell/connmonitor/ac;

    sput-object v1, Lcom/antispycell/connmonitor/w;->o:Lcom/antispycell/connmonitor/ac;

    .line 190
    return-object v0
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/antispycell/connmonitor/w;->b:Landroid/content/Context;

    const-class v2, Lcom/antispycell/connmonitor/IPDetails;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v2, "IP"

    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ab;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/w;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public final onPause()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/w;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->ncStop()I

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 94
    return-void
.end method

.method public final onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 71
    sget-object v0, Lcom/antispycell/connmonitor/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_50

    .line 72
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_10
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/JNI;->ncDataTime(I)I

    .line 77
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->ncStart()I

    .line 78
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->ncDataLoad()I

    .line 79
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->g:Landroid/content/SharedPreferences;

    const-string v1, "resolvehostnames"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    .line 80
    :cond_32
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    if-nez v0, :cond_45

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    .line 82
    :cond_45
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/w;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 85
    return-void

    .line 74
    :cond_50
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10
.end method

.method public final onStop()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/antispycell/connmonitor/w;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antispycell/connmonitor/w;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->ncStop()I

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    .line 101
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 102
    return-void
.end method
