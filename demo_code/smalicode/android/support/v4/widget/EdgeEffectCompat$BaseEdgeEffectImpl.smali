.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAbsorb(Ljava/lang/Object;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    return-void
.end method
