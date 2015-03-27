.class final Lcom/google/tagmanager/a/bg;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 299
    const/16 v0, -0xc

    if-gt p0, v0, :cond_8

    const/16 v0, -0x41

    if-le p1, v0, :cond_a

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_9
.end method

.method private static a(III)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, -0x41

    .line 305
    const/16 v0, -0xc

    if-gt p0, v0, :cond_a

    if-gt p1, v1, :cond_a

    if-le p2, v1, :cond_c

    :cond_a
    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_b
.end method

.method public static a(I[BII)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, -0x20

    const/16 v4, -0x60

    const/4 v1, -0x1

    const/16 v6, -0x41

    .line 116
    if-eqz p0, :cond_82

    .line 124
    if-lt p2, p3, :cond_c

    .line 199
    :goto_b
    return p0

    .line 127
    :cond_c
    int-to-byte v5, p0

    .line 129
    if-ge v5, v3, :cond_1b

    .line 134
    const/16 v0, -0x3e

    if-lt v5, v0, :cond_19

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    if-le v2, v6, :cond_81

    :cond_19
    move p0, v1

    .line 137
    goto :goto_b

    .line 139
    :cond_1b
    const/16 v0, -0x10

    if-ge v5, v0, :cond_46

    .line 143
    shr-int/lit8 v0, p0, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 144
    if-nez v0, :cond_31

    .line 145
    add-int/lit8 v2, p2, 0x1

    aget-byte v0, p1, p2

    .line 146
    if-lt v2, p3, :cond_32

    .line 147
    invoke-static {v5, v0}, Lcom/google/tagmanager/a/bg;->a(II)I

    move-result p0

    goto :goto_b

    :cond_31
    move v2, p2

    .line 150
    :cond_32
    if-gt v0, v6, :cond_44

    if-ne v5, v3, :cond_38

    if-lt v0, v4, :cond_44

    :cond_38
    const/16 v3, -0x13

    if-ne v5, v3, :cond_3e

    if-ge v0, v4, :cond_44

    :cond_3e
    add-int/lit8 p2, v2, 0x1

    aget-byte v0, p1, v2

    if-le v0, v6, :cond_82

    :cond_44
    move p0, v1

    .line 157
    goto :goto_b

    .line 163
    :cond_46
    shr-int/lit8 v0, p0, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v2, v0

    .line 164
    const/4 v0, 0x0

    .line 165
    if-nez v2, :cond_59

    .line 166
    add-int/lit8 v3, p2, 0x1

    aget-byte v2, p1, p2

    .line 167
    if-lt v3, p3, :cond_87

    .line 168
    invoke-static {v5, v2}, Lcom/google/tagmanager/a/bg;->a(II)I

    move-result p0

    goto :goto_b

    .line 171
    :cond_59
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    move v4, v2

    move v3, p2

    .line 173
    :goto_5e
    if-nez v0, :cond_6b

    .line 174
    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p1, v3

    .line 175
    if-lt v2, p3, :cond_6c

    .line 176
    invoke-static {v5, v4, v0}, Lcom/google/tagmanager/a/bg;->a(III)I

    move-result p0

    goto :goto_b

    :cond_6b
    move v2, v3

    .line 184
    :cond_6c
    if-gt v4, v6, :cond_7f

    shl-int/lit8 v3, v5, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_7f

    if-gt v0, v6, :cond_7f

    add-int/lit8 p2, v2, 0x1

    aget-byte v0, p1, v2

    if-le v0, v6, :cond_82

    :cond_7f
    move p0, v1

    .line 194
    goto :goto_b

    :cond_81
    move p2, v0

    .line 199
    :cond_82
    invoke-static {p1, p2, p3}, Lcom/google/tagmanager/a/bg;->b([BII)I

    move-result p0

    goto :goto_b

    :cond_87
    move v4, v2

    goto :goto_5e
.end method

.method public static a([BII)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {p0, p1, p2}, Lcom/google/tagmanager/a/bg;->b([BII)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static b([BII)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v8, -0x20

    const/16 v7, -0x60

    const/4 v2, -0x1

    const/16 v6, -0x41

    .line 223
    move v0, p1

    :goto_9
    if-ge v0, p2, :cond_12

    aget-byte v3, p0, v0

    if-ltz v3, :cond_12

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 227
    :cond_12
    if-lt v0, p2, :cond_17

    move v0, v1

    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v3

    :cond_17
    if-lt v0, p2, :cond_1b

    move v0, v1

    goto :goto_15

    :cond_1b
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    if-gez v0, :cond_16

    if-ge v0, v8, :cond_31

    if-ge v3, p2, :cond_15

    const/16 v4, -0x3e

    if-lt v0, v4, :cond_2f

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    if-le v3, v6, :cond_17

    :cond_2f
    move v0, v2

    goto :goto_15

    :cond_31
    const/16 v4, -0x10

    if-ge v0, v4, :cond_56

    add-int/lit8 v4, p2, -0x1

    if-lt v3, v4, :cond_3e

    invoke-static {p0, v3, p2}, Lcom/google/tagmanager/a/bg;->c([BII)I

    move-result v0

    goto :goto_15

    :cond_3e
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    if-gt v3, v6, :cond_54

    if-ne v0, v8, :cond_48

    if-lt v3, v7, :cond_54

    :cond_48
    const/16 v5, -0x13

    if-ne v0, v5, :cond_4e

    if-ge v3, v7, :cond_54

    :cond_4e
    add-int/lit8 v0, v4, 0x1

    aget-byte v3, p0, v4

    if-le v3, v6, :cond_17

    :cond_54
    move v0, v2

    goto :goto_15

    :cond_56
    add-int/lit8 v4, p2, -0x2

    if-lt v3, v4, :cond_5f

    invoke-static {p0, v3, p2}, Lcom/google/tagmanager/a/bg;->c([BII)I

    move-result v0

    goto :goto_15

    :cond_5f
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    if-gt v3, v6, :cond_7a

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_7a

    add-int/lit8 v3, v4, 0x1

    aget-byte v0, p0, v4

    if-gt v0, v6, :cond_7a

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    if-le v3, v6, :cond_17

    :cond_7a
    move v0, v2

    goto :goto_15
.end method

.method private static c([BII)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    .line 313
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_28

    .line 317
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 314
    :pswitch_f
    const/16 v1, -0xc

    if-le v0, v1, :cond_14

    const/4 v0, -0x1

    .line 316
    :cond_14
    :goto_14
    return v0

    .line 315
    :pswitch_15
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/google/tagmanager/a/bg;->a(II)I

    move-result v0

    goto :goto_14

    .line 316
    :pswitch_1c
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/a/bg;->a(III)I

    move-result v0

    goto :goto_14

    .line 313
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_f
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method
