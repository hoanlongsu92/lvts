.class Landroid/support/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# instance fields
.field mScroller:Landroid/widget/Scroller;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    .line 52
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;
    .registers 3
    .parameter

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    .line 45
    new-instance v0, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplIcs;-><init>(Landroid/content/Context;)V

    .line 47
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v4/widget/ScrollerCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ScrollerCompat;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 180
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 171
    return-void
.end method

.method public getCurrVelocity()F
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrX()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public startScroll(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 130
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 147
    return-void
.end method
