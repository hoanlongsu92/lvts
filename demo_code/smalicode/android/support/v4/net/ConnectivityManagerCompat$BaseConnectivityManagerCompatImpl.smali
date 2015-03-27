.class Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"

# interfaces
.implements Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 40
    if-nez v1, :cond_8

    .line 53
    :goto_7
    :pswitch_7
    return v0

    .line 45
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 46
    packed-switch v1, :pswitch_data_12

    goto :goto_7

    .line 50
    :pswitch_10
    const/4 v0, 0x0

    goto :goto_7

    .line 46
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method
