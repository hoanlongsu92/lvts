.class public Lcom/antispycell/connmonitor/ConnectionMonitor;
.super Landroid/view/ViewGroup;
.source "ConnectionMonitor.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field protected final a:Ljava/lang/String;

.field private b:Lcom/antispycell/connmonitor/v;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:[I

.field private l:Landroid/graphics/Paint;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string v0, "ConnectionMonitor"

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->a:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->d:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->e:I

    .line 30
    const v0, -0xcc4a1b

    iput v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->f:I

    .line 32
    const v0, -0x6b6b6c

    iput v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->g:I

    .line 45
    iput v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->m:I

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x420c

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->setFadingEdgeLength(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    return-void
.end method

.method private static a(IIF)I
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/high16 v8, 0x437f

    .line 421
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 422
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 423
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 424
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    .line 426
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 427
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    .line 428
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    .line 429
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    .line 431
    sub-float/2addr v4, v0

    .line 432
    sub-float/2addr v5, v1

    .line 433
    sub-float/2addr v6, v2

    .line 434
    sub-float/2addr v7, v3

    .line 436
    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    .line 437
    mul-float v4, v5, p2

    add-float/2addr v1, v4

    .line 438
    mul-float v4, v6, p2

    add-float/2addr v2, v4

    .line 439
    mul-float v4, v7, p2

    add-float/2addr v3, v4

    .line 441
    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 442
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 443
    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 444
    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 446
    mul-float/2addr v0, v8

    float-to-int v0, v0

    mul-float/2addr v1, v8

    float-to-int v1, v1

    .line 447
    mul-float/2addr v2, v8

    float-to-int v2, v2

    mul-float/2addr v3, v8

    float-to-int v3, v3

    .line 446
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private a(I[I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    if-nez v0, :cond_5

    .line 203
    :cond_4
    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v0}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v2

    .line 170
    if-ltz p1, :cond_98

    if-ge p1, v2, :cond_98

    .line 171
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getMeasuredWidth()I

    move-result v3

    .line 173
    invoke-virtual {p0, p1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 174
    div-int/lit8 v1, v3, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 175
    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    .line 174
    aput v0, p2, p1

    .line 176
    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_26
    if-gez v1, :cond_61

    .line 186
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_2b
    if-ge v1, v2, :cond_4

    .line 187
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    add-int/lit8 v4, p1, 0x1

    if-ne v1, v4, :cond_93

    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    .line 190
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v4

    .line 189
    aput v0, p2, v1

    .line 194
    :goto_44
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    aget v4, p2, v1

    add-int/lit8 v5, v1, -0x1

    aget v5, p2, v5

    .line 196
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v5

    .line 195
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p2, v1

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 177
    :cond_61
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    add-int/lit8 v4, p1, -0x1

    if-ne v1, v4, :cond_89

    .line 179
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x0

    aput v4, p2, v1

    .line 183
    :goto_73
    aget v4, p2, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p2, v5

    .line 184
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v5, v0

    .line 183
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p2, v1

    .line 176
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_26

    .line 181
    :cond_89
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x0

    sub-int/2addr v4, v3

    aput v4, p2, v1

    goto :goto_73

    .line 192
    :cond_93
    shl-int/lit8 v0, v3, 0x1

    aput v0, p2, v1

    goto :goto_44

    .line 199
    :cond_98
    const/4 v0, 0x0

    :goto_99
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 200
    const/4 v1, -0x1

    aput v1, p2, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_99
.end method

.method private a(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x13

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    if-nez v0, :cond_9

    .line 153
    :cond_8
    return-void

    .line 141
    :cond_9
    iget v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    iget-object v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->h:[I

    invoke-direct {p0, v0, v2}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(I[I)V

    .line 142
    iget v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->i:[I

    invoke-direct {p0, v0, v2}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(I[I)V

    .line 143
    iget v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->j:[I

    invoke-direct {p0, v0, v2}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(I[I)V

    .line 145
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v0}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v3

    move v2, v1

    :goto_2d
    if-lt v2, v3, :cond_45

    .line 147
    :cond_2f
    if-eqz p1, :cond_8

    .line 148
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v0}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v2

    move v0, v1

    .line 149
    :goto_38
    if-ge v0, v2, :cond_8

    .line 150
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    iget-object v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->h:[I

    aget v3, v3, v0

    aput v3, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 145
    :cond_45
    invoke-virtual {p0, v2}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    if-ge v2, v4, :cond_5b

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    :cond_57
    :goto_57
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    :cond_5b
    iget v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    if-ne v2, v4, :cond_68

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_57

    :cond_68
    iget v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    if-le v2, v4, :cond_57

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_57
.end method


# virtual methods
.method public final a(Lcom/antispycell/connmonitor/v;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 99
    iput-object p1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    .line 100
    iput v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    .line 101
    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->h:[I

    .line 102
    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->i:[I

    .line 103
    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->j:[I

    .line 104
    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    .line 107
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->removeAllViews()V

    .line 109
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    if-eqz v0, :cond_36

    .line 110
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v0}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v2

    move v0, v1

    .line 113
    :goto_1d
    if-lt v0, v2, :cond_37

    .line 117
    iput v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->h:[I

    .line 119
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->i:[I

    .line 120
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->j:[I

    .line 121
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    .line 123
    iput v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->m:I

    .line 125
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->requestLayout()V

    .line 127
    :cond_36
    return-void

    .line 114
    :cond_37
    iget-object v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v3, v0, p0}, Lcom/antispycell/connmonitor/v;->a(ILcom/antispycell/connmonitor/ConnectionMonitor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/antispycell/connmonitor/ConnectionMonitor;->addView(Landroid/view/View;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter

    .prologue
    const v8, -0x663400

    const/high16 v7, 0x3f80

    .line 300
    iget v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_78

    .line 303
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 304
    iget v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->d:I

    .line 303
    sub-int/2addr v0, v1

    .line 304
    iget v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->e:I

    .line 303
    sub-int/2addr v0, v1

    .line 305
    iget v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 306
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    iget v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    aget v1, v1, v2

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 306
    add-int/2addr v1, v2

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 306
    sub-int/2addr v1, v2

    .line 308
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 309
    div-int/lit8 v4, v2, 0x3

    .line 311
    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 312
    int-to-float v2, v4

    .line 311
    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 310
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v6, v7, v1

    .line 314
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 316
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    iget v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    aget v1, v1, v2

    int-to-float v1, v1

    .line 317
    int-to-float v2, v0

    .line 318
    iget-object v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    iget v5, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    aget v4, v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 319
    iget v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->e:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    move-object v0, p1

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 322
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v0}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v2

    .line 323
    const/4 v0, 0x0

    move v1, v0

    :goto_76
    if-lt v1, v2, :cond_7c

    .line 341
    :cond_78
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 342
    return-void

    .line 324
    :cond_7c
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    iget v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    if-ne v3, v1, :cond_b0

    .line 326
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9b

    .line 327
    sub-float v3, v7, v6

    invoke-static {v8, v8, v3}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    :goto_97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_76

    .line 331
    :cond_9b
    iget v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->f:I

    iget v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->g:I

    sub-float v5, v7, v6

    invoke-static {v3, v4, v5}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(IIF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    iget v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->f:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_97

    .line 335
    :cond_b0
    iget v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->g:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_97
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 349
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 350
    iget v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->d:I

    .line 349
    sub-int/2addr v0, v1

    .line 351
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 352
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 353
    iget v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->l:Landroid/graphics/Paint;

    move-object v0, p1

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 354
    return-void
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 359
    const/high16 v0, 0x3f80

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 365
    const/high16 v0, 0x3f80

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    if-nez v0, :cond_5

    .line 296
    :cond_4
    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v0}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v1

    .line 289
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_4

    .line 290
    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    aget v3, v3, v0

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    aget v5, v5, v0

    .line 293
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 294
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 292
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 233
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    if-eqz v1, :cond_1e

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-double v3, v1

    const-wide v5, 0x3fe3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v1}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v4

    move v1, v0

    :goto_1c
    if-lt v1, v4, :cond_55

    .line 236
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_28

    .line 238
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 242
    :cond_28
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v1, p1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->resolveSize(II)I

    move-result v1

    .line 244
    iget v3, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->d:I

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    .line 245
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getPaddingBottom()I

    move-result v3

    .line 244
    add-int/2addr v0, v3

    invoke-static {v0, p2}, Lcom/antispycell/connmonitor/ConnectionMonitor;->resolveSize(II)I

    move-result v0

    .line 241
    invoke-virtual {p0, v1, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->setMeasuredDimension(II)V

    .line 247
    iget v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->m:I

    if-eq v0, v2, :cond_54

    .line 248
    iput v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->m:I

    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(Z)V

    .line 251
    :cond_54
    return-void

    .line 233
    :cond_55
    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/high16 v6, -0x8000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/antispycell/connmonitor/ConnectionMonitor;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .parameter

    .prologue
    .line 369
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    if-nez v0, :cond_6

    .line 412
    :goto_5
    return-void

    .line 377
    :cond_6
    iget-object v0, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->b:Lcom/antispycell/connmonitor/v;

    invoke-interface {v0}, Lcom/antispycell/connmonitor/v;->getCount()I

    move-result v3

    .line 379
    const/4 v0, 0x0

    .line 383
    if-eqz p3, :cond_1e

    iget v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    if-ne v2, p1, :cond_1e

    .line 384
    const/4 v0, -0x1

    :goto_14
    move v2, v1

    .line 392
    :goto_15
    if-lt v2, v3, :cond_2a

    .line 410
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->requestLayout()V

    .line 411
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->invalidate()V

    goto :goto_5

    .line 386
    :cond_1e
    if-eqz p3, :cond_55

    iget v2, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    if-eq v2, p1, :cond_55

    .line 387
    const/4 v0, 0x1

    .line 388
    const/high16 v2, 0x3f80

    sub-float p2, v2, p2

    goto :goto_14

    .line 393
    :cond_2a
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->h:[I

    aget v1, v1, v2

    int-to-float v4, v1

    .line 394
    if-gez v0, :cond_47

    .line 397
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->i:[I

    aget v1, v1, v2

    int-to-float v1, v1

    .line 404
    :goto_36
    sub-float/2addr v1, v4

    mul-float/2addr v1, p2

    const/high16 v5, 0x3f00

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 405
    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 407
    iget-object v4, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->k:[I

    aput v1, v4, v2

    .line 392
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_15

    .line 398
    :cond_47
    if-lez v0, :cond_4f

    .line 399
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->j:[I

    aget v1, v1, v2

    int-to-float v1, v1

    .line 400
    goto :goto_36

    .line 401
    :cond_4f
    iget-object v1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->h:[I

    aget v1, v1, v2

    int-to-float v1, v1

    goto :goto_36

    :cond_55
    move p2, v0

    move v0, v1

    goto :goto_14
.end method

.method public onPageSelected(I)V
    .registers 3
    .parameter

    .prologue
    .line 415
    iput p1, p0, Lcom/antispycell/connmonitor/ConnectionMonitor;->c:I

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/antispycell/connmonitor/ConnectionMonitor;->a(Z)V

    .line 417
    return-void
.end method
