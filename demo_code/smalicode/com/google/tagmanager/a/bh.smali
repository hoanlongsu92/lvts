.class public final Lcom/google/tagmanager/a/bh;
.super Ljava/lang/Object;
.source "WireFormat.java"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    const/16 v0, 0xb

    sput v0, Lcom/google/tagmanager/a/bh;->a:I

    .line 129
    const/16 v0, 0xc

    sput v0, Lcom/google/tagmanager/a/bh;->b:I

    .line 131
    const/16 v0, 0x10

    sput v0, Lcom/google/tagmanager/a/bh;->c:I

    .line 133
    const/16 v0, 0x1a

    sput v0, Lcom/google/tagmanager/a/bh;->d:I

    return-void
.end method

.method static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 32
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 37
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static c(I)I
    .registers 2
    .parameter

    .prologue
    .line 42
    shl-int/lit8 v0, p0, 0x3

    or-int/lit8 v0, v0, 0x4

    return v0
.end method
