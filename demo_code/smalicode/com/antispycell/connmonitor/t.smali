.class final Lcom/antispycell/connmonitor/t;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ConnectionMonitorActivity.java"

# interfaces
.implements Lcom/antispycell/connmonitor/v;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    .line 195
    invoke-direct {p0, p3}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 197
    iput-object p2, p0, Lcom/antispycell/connmonitor/t;->b:Landroid/content/Context;

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/t;)Lcom/antispycell/connmonitor/ConnectionMonitorActivity;
    .registers 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/antispycell/connmonitor/ConnectionMonitor;)Landroid/widget/TextView;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Lcom/antispycell/connmonitor/u;

    invoke-direct {v1, p0, p1}, Lcom/antispycell/connmonitor/u;-><init>(Lcom/antispycell/connmonitor/t;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-object v0
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 224
    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v1, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    .line 204
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v0, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    const-string v1, "&cd"

    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v1, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    const-string v2, "&av"

    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v0, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v0, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->c:Ljava/lang/String;

    :goto_31
    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->a:Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    iget-object v0, v0, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->d:Lcom/google/analytics/tracking/android/p;

    invoke-static {}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 208
    packed-switch p1, :pswitch_data_8a

    .line 218
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->b:Landroid/content/Context;

    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/w;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_52
    return-object v0

    .line 205
    :cond_53
    const-string v0, "FREE"

    goto :goto_31

    .line 210
    :pswitch_56
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->b:Landroid/content/Context;

    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/w;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_52

    .line 212
    :pswitch_63
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->b:Landroid/content/Context;

    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/ae;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_52

    .line 214
    :pswitch_70
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->b:Landroid/content/Context;

    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_52

    .line 216
    :pswitch_7d
    iget-object v0, p0, Lcom/antispycell/connmonitor/t;->b:Landroid/content/Context;

    invoke-static {}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/bj;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_52

    .line 208
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_56
        :pswitch_63
        :pswitch_70
        :pswitch_7d
    .end packed-switch
.end method
