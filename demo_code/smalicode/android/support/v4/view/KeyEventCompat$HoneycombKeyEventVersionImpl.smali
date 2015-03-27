.class Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p1, p2}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public metaStateHasNoModifiers(I)Z
    .registers 3
    .parameter

    .prologue
    .line 108
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public normalizeMetaState(I)I
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatHoneycomb;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method
