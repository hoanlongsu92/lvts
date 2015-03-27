.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 45
    invoke-static {p1}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v0

    .line 47
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 49
    iput v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 50
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 337
    :goto_6
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_19

    .line 338
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 340
    aget-wide v3, p0, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_17

    move v1, v2

    .line 341
    goto :goto_6

    :cond_17
    move v0, v2

    .line 343
    goto :goto_6

    .line 346
    :cond_19
    add-int v1, p1, p2

    if-ne v0, v1, :cond_22

    .line 347
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 351
    :cond_21
    :goto_21
    return v0

    .line 348
    :cond_22
    aget-wide v1, p0, v0

    cmp-long v1, v1, p3

    if-eqz v1, :cond_21

    .line 351
    xor-int/lit8 v0, v0, -0x1

    goto :goto_21
.end method

.method private gc()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 123
    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 125
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 126
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 128
    :goto_9
    if-ge v1, v3, :cond_21

    .line 129
    aget-object v6, v5, v1

    .line 131
    sget-object v7, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    .line 132
    if-eq v1, v0, :cond_1c

    .line 133
    aget-wide v7, v4, v1

    aput-wide v7, v4, v0

    .line 134
    aput-object v6, v5, v0

    .line 135
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 138
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 128
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 142
    :cond_21
    iput-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 143
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 146
    return-void
.end method

.method public static idealByteArraySize(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 355
    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 356
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 357
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 359
    :cond_10
    return p0

    .line 355
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static idealLongArraySize(I)I
    .registers 2
    .parameter

    .prologue
    .line 363
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/support/v4/util/LongSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 305
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_15

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 332
    :goto_14
    return-void

    .line 310
    :cond_15
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_23

    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_23

    .line 311
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 314
    :cond_23
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 315
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_48

    .line 316
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v1

    .line 318
    new-array v2, v1, [J

    .line 319
    new-array v1, v1, [Ljava/lang/Object;

    .line 322
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 326
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 329
    :cond_48
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 330
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    goto :goto_14
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 289
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 290
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    .line 292
    :goto_6
    if-ge v0, v2, :cond_e

    .line 293
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 296
    :cond_e
    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 297
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 298
    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .registers 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c

    .line 58
    :try_start_7
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 59
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1f

    .line 63
    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_1f
    move-exception v1

    goto :goto_1b
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .registers 6
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 95
    if-ltz v0, :cond_1c

    .line 96
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1c

    .line 97
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 101
    :cond_1c
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 82
    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_14

    .line 85
    :cond_13
    :goto_13
    return-object p3

    :cond_14
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_13
.end method

.method public indexOfKey(J)I
    .registers 6
    .parameter

    .prologue
    .line 258
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 259
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 262
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 275
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 278
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    .line 279
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 282
    :goto_12
    return v0

    .line 278
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 282
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public keyAt(I)J
    .registers 4
    .parameter

    .prologue
    .line 218
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 219
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 222
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 156
    if-ltz v0, :cond_10

    .line 157
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 198
    :goto_f
    return-void

    .line 159
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 161
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_27

    .line 162
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 163
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_f

    .line 167
    :cond_27
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3f

    .line 168
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 171
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v5, v1, p1, p2}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 174
    :cond_3f
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_66

    .line 175
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v1

    .line 177
    new-array v2, v1, [J

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 185
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 188
    :cond_66
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_83

    .line 190
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_83
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 195
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 196
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(J)V
    .registers 3
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 108
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 115
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 118
    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 246
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 249
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 250
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 206
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 209
    :cond_7
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 232
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 233
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 236
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
