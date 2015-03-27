.class final Lcom/google/tagmanager/x;
.super Ljava/lang/Number;
.source "TypedNumber.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:D

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/x;->b:J

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/x;->c:Z

    .line 19
    return-void
.end method

.method private a(Lcom/google/tagmanager/x;)I
    .registers 6
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/tagmanager/x;->c:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/google/tagmanager/x;->c:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/tagmanager/x;->b:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/tagmanager/x;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {p0}, Lcom/google/tagmanager/x;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/tagmanager/x;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_19
.end method

.method public static a()Lcom/google/tagmanager/x;
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/tagmanager/x;

    invoke-direct {v0}, Lcom/google/tagmanager/x;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/tagmanager/x;->c:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final byteValue()B
    .registers 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/tagmanager/x;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/tagmanager/x;->c:Z

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 6
    check-cast p1, Lcom/google/tagmanager/x;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/x;->a(Lcom/google/tagmanager/x;)I

    move-result v0

    return v0
.end method

.method public final doubleValue()D
    .registers 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/tagmanager/x;->c:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/tagmanager/x;->b:J

    long-to-double v0, v0

    :goto_7
    return-wide v0

    :cond_8
    iget-wide v0, p0, Lcom/google/tagmanager/x;->a:D

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 67
    instance-of v0, p1, Lcom/google/tagmanager/x;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/tagmanager/x;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/x;->a(Lcom/google/tagmanager/x;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final floatValue()F
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/tagmanager/x;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/tagmanager/x;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intValue()I
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/tagmanager/x;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .registers 3

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/tagmanager/x;->c:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/tagmanager/x;->b:J

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/tagmanager/x;->a:D

    double-to-long v0, v0

    goto :goto_6
.end method

.method public final shortValue()S
    .registers 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/tagmanager/x;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/tagmanager/x;->c:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/tagmanager/x;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-wide v0, p0, Lcom/google/tagmanager/x;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
