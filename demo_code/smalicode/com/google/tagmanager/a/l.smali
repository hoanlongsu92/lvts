.class public final Lcom/google/tagmanager/a/l;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/tagmanager/a/l;->d:I

    .line 58
    iput-object p1, p0, Lcom/google/tagmanager/a/l;->e:Ljava/io/OutputStream;

    .line 59
    iput-object p2, p0, Lcom/google/tagmanager/a/l;->a:[B

    .line 60
    iput v0, p0, Lcom/google/tagmanager/a/l;->c:I

    .line 61
    array-length v0, p2

    iput v0, p0, Lcom/google/tagmanager/a/l;->b:I

    .line 62
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;
    .registers 3
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/google/tagmanager/a/l;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/a/l;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 932
    iget-object v0, p0, Lcom/google/tagmanager/a/l;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_b

    .line 934
    new-instance v0, Lcom/google/tagmanager/a/m;

    invoke-direct {v0}, Lcom/google/tagmanager/a/m;-><init>()V

    throw v0

    .line 939
    :cond_b
    iget-object v0, p0, Lcom/google/tagmanager/a/l;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/tagmanager/a/l;->a:[B

    iget v2, p0, Lcom/google/tagmanager/a/l;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 940
    iput v3, p0, Lcom/google/tagmanager/a/l;->c:I

    .line 941
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/tagmanager/a/l;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 949
    invoke-direct {p0}, Lcom/google/tagmanager/a/l;->b()V

    .line 951
    :cond_7
    return-void
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    .line 1016
    int-to-byte v0, p1

    iget v1, p0, Lcom/google/tagmanager/a/l;->c:I

    iget v2, p0, Lcom/google/tagmanager/a/l;->b:I

    if-ne v1, v2, :cond_a

    invoke-direct {p0}, Lcom/google/tagmanager/a/l;->b()V

    :cond_a
    iget-object v1, p0, Lcom/google/tagmanager/a/l;->a:[B

    iget v2, p0, Lcom/google/tagmanager/a/l;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/tagmanager/a/l;->c:I

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/google/tagmanager/a/l;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/l;->d:I

    .line 1017
    return-void
.end method

.method public final a(Lcom/google/tagmanager/a/g;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1121
    iget v0, p0, Lcom/google/tagmanager/a/l;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/l;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_1a

    .line 1123
    iget-object v0, p0, Lcom/google/tagmanager/a/l;->a:[B

    iget v1, p0, Lcom/google/tagmanager/a/l;->c:I

    invoke-virtual {p1, v0, v3, v1, p2}, Lcom/google/tagmanager/a/g;->b([BIII)V

    .line 1124
    iget v0, p0, Lcom/google/tagmanager/a/l;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/tagmanager/a/l;->c:I

    .line 1147
    :goto_14
    iget v0, p0, Lcom/google/tagmanager/a/l;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/tagmanager/a/l;->d:I

    .line 1149
    return-void

    .line 1129
    :cond_1a
    iget v0, p0, Lcom/google/tagmanager/a/l;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/l;->c:I

    sub-int/2addr v0, v1

    .line 1130
    iget-object v1, p0, Lcom/google/tagmanager/a/l;->a:[B

    iget v2, p0, Lcom/google/tagmanager/a/l;->c:I

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/google/tagmanager/a/g;->b([BIII)V

    .line 1131
    sub-int/2addr p2, v0

    .line 1133
    iget v1, p0, Lcom/google/tagmanager/a/l;->b:I

    iput v1, p0, Lcom/google/tagmanager/a/l;->c:I

    .line 1134
    iget v1, p0, Lcom/google/tagmanager/a/l;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/tagmanager/a/l;->d:I

    .line 1135
    invoke-direct {p0}, Lcom/google/tagmanager/a/l;->b()V

    .line 1140
    iget v1, p0, Lcom/google/tagmanager/a/l;->b:I

    if-gt p2, v1, :cond_3f

    .line 1142
    iget-object v1, p0, Lcom/google/tagmanager/a/l;->a:[B

    invoke-virtual {p1, v1, v0, v3, p2}, Lcom/google/tagmanager/a/g;->b([BIII)V

    .line 1143
    iput p2, p0, Lcom/google/tagmanager/a/l;->c:I

    goto :goto_14

    .line 1145
    :cond_3f
    iget-object v1, p0, Lcom/google/tagmanager/a/l;->e:Ljava/io/OutputStream;

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/tagmanager/a/g;->a(Ljava/io/OutputStream;II)V

    goto :goto_14
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 1168
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 1169
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/l;->a(I)V

    .line 1170
    return-void

    .line 1172
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/l;->a(I)V

    .line 1173
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
