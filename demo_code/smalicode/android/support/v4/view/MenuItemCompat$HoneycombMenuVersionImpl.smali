.class Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setShowAsAction(Landroid/view/MenuItem;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
