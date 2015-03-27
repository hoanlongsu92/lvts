.class public final Lcom/google/tagmanager/a/j;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# instance fields
.field private final a:[B

.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/InputStream;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/google/tagmanager/a/k;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/ai;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/a/j;->h:Z

    .line 812
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/tagmanager/a/j;->j:I

    .line 816
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/tagmanager/a/j;->l:I

    .line 819
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/tagmanager/a/j;->m:I

    .line 992
    iput-object v2, p0, Lcom/google/tagmanager/a/j;->n:Lcom/google/tagmanager/a/k;

    .line 844
    iget-object v0, p1, Lcom/google/tagmanager/a/ai;->c:[B

    iput-object v0, p0, Lcom/google/tagmanager/a/j;->a:[B

    .line 845
    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 846
    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 847
    iget v0, p0, Lcom/google/tagmanager/a/j;->e:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/tagmanager/a/j;->i:I

    .line 848
    iput-object v2, p0, Lcom/google/tagmanager/a/j;->f:Ljava/io/InputStream;

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/j;->b:Z

    .line 850
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-boolean v1, p0, Lcom/google/tagmanager/a/j;->h:Z

    .line 812
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/tagmanager/a/j;->j:I

    .line 816
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/tagmanager/a/j;->l:I

    .line 819
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/tagmanager/a/j;->m:I

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/a/j;->n:Lcom/google/tagmanager/a/k;

    .line 835
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/tagmanager/a/j;->a:[B

    .line 836
    iput v1, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 837
    iput v1, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 838
    iput v1, p0, Lcom/google/tagmanager/a/j;->i:I

    .line 839
    iput-object p1, p0, Lcom/google/tagmanager/a/j;->f:Ljava/io/InputStream;

    .line 840
    iput-boolean v1, p0, Lcom/google/tagmanager/a/j;->b:Z

    .line 841
    return-void
.end method

.method static a(Lcom/google/tagmanager/a/ai;)Lcom/google/tagmanager/a/j;
    .registers 3
    .parameter

    .prologue
    .line 92
    new-instance v0, Lcom/google/tagmanager/a/j;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/j;-><init>(Lcom/google/tagmanager/a/ai;)V

    .line 99
    :try_start_5
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/j;->b(I)I
    :try_end_c
    .catch Lcom/google/tagmanager/a/ae; {:try_start_5 .. :try_end_c} :catch_d

    .line 110
    return-object v0

    .line 100
    :catch_d
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/google/tagmanager/a/j;
    .registers 2
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/google/tagmanager/a/j;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/j;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private a(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1002
    iget v0, p0, Lcom/google/tagmanager/a/j;->e:I

    iget v3, p0, Lcom/google/tagmanager/a/j;->c:I

    if-ge v0, v3, :cond_10

    .line 1003
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_10
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v3, p0, Lcom/google/tagmanager/a/j;->c:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/tagmanager/a/j;->j:I

    if-ne v0, v3, :cond_22

    .line 1009
    if-eqz p1, :cond_20

    .line 1010
    invoke-static {}, Lcom/google/tagmanager/a/ae;->b()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    :cond_20
    move v0, v2

    .line 1043
    :goto_21
    return v0

    .line 1016
    :cond_22
    iget-object v0, p0, Lcom/google/tagmanager/a/j;->n:Lcom/google/tagmanager/a/k;

    if-eqz v0, :cond_28

    .line 1017
    iget-object v0, p0, Lcom/google/tagmanager/a/j;->n:Lcom/google/tagmanager/a/k;

    .line 1020
    :cond_28
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v3, p0, Lcom/google/tagmanager/a/j;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/tagmanager/a/j;->i:I

    .line 1022
    iput v2, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1023
    iget-object v0, p0, Lcom/google/tagmanager/a/j;->f:Ljava/io/InputStream;

    if-nez v0, :cond_5d

    move v0, v1

    :goto_36
    iput v0, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 1024
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    if-ge v0, v1, :cond_66

    .line 1025
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/tagmanager/a/j;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_5d
    iget-object v0, p0, Lcom/google/tagmanager/a/j;->f:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/tagmanager/a/j;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_36

    .line 1029
    :cond_66
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    if-ne v0, v1, :cond_75

    .line 1030
    iput v2, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 1031
    if-eqz p1, :cond_73

    .line 1032
    invoke-static {}, Lcom/google/tagmanager/a/ae;->b()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    :cond_73
    move v0, v2

    .line 1034
    goto :goto_21

    .line 1037
    :cond_75
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->n()V

    .line 1038
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/tagmanager/a/j;->d:I

    add-int/2addr v0, v1

    .line 1040
    iget v1, p0, Lcom/google/tagmanager/a/j;->m:I

    if-gt v0, v1, :cond_86

    if-gez v0, :cond_8b

    .line 1041
    :cond_86
    invoke-static {}, Lcom/google/tagmanager/a/ae;->i()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 1043
    :cond_8b
    const/4 v0, 0x1

    goto :goto_21
.end method

.method private d(I)[B
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1067
    if-gez p1, :cond_c

    .line 1068
    invoke-static {}, Lcom/google/tagmanager/a/ae;->c()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 1071
    :cond_c
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/google/tagmanager/a/j;->j:I

    if-le v0, v2, :cond_26

    .line 1073
    iget v0, p0, Lcom/google/tagmanager/a/j;->j:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/j;->e(I)V

    .line 1075
    invoke-static {}, Lcom/google/tagmanager/a/ae;->b()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 1078
    :cond_26
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_3c

    .line 1080
    new-array v0, p1, [B

    .line 1081
    iget-object v2, p0, Lcom/google/tagmanager/a/j;->a:[B

    iget v3, p0, Lcom/google/tagmanager/a/j;->e:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1163
    :goto_3b
    return-object v0

    .line 1084
    :cond_3c
    if-ge p1, v10, :cond_78

    .line 1089
    new-array v2, p1, [B

    .line 1090
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v3, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v3

    .line 1091
    iget-object v3, p0, Lcom/google/tagmanager/a/j;->a:[B

    iget v4, p0, Lcom/google/tagmanager/a/j;->e:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1092
    iget v3, p0, Lcom/google/tagmanager/a/j;->c:I

    iput v3, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1097
    invoke-direct {p0, v5}, Lcom/google/tagmanager/a/j;->a(Z)Z

    .line 1099
    :goto_53
    sub-int v3, p1, v0

    iget v4, p0, Lcom/google/tagmanager/a/j;->c:I

    if-le v3, v4, :cond_6b

    .line 1100
    iget-object v3, p0, Lcom/google/tagmanager/a/j;->a:[B

    iget v4, p0, Lcom/google/tagmanager/a/j;->c:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    iget v3, p0, Lcom/google/tagmanager/a/j;->c:I

    add-int/2addr v0, v3

    .line 1102
    iget v3, p0, Lcom/google/tagmanager/a/j;->c:I

    iput v3, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1103
    invoke-direct {p0, v5}, Lcom/google/tagmanager/a/j;->a(Z)Z

    goto :goto_53

    .line 1106
    :cond_6b
    iget-object v3, p0, Lcom/google/tagmanager/a/j;->a:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/tagmanager/a/j;->e:I

    move-object v0, v2

    .line 1109
    goto :goto_3b

    .line 1121
    :cond_78
    iget v5, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1122
    iget v6, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 1125
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/tagmanager/a/j;->i:I

    .line 1126
    iput v1, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1127
    iput v1, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 1130
    sub-int v0, v6, v5

    sub-int v0, p1, v0

    .line 1131
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 1133
    :goto_91
    if-lez v4, :cond_c1

    .line 1134
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    .line 1136
    :goto_9a
    array-length v2, v8

    if-ge v0, v2, :cond_b9

    .line 1137
    iget-object v2, p0, Lcom/google/tagmanager/a/j;->f:Ljava/io/InputStream;

    if-nez v2, :cond_a9

    move v2, v3

    .line 1139
    :goto_a2
    if-ne v2, v3, :cond_b2

    .line 1140
    invoke-static {}, Lcom/google/tagmanager/a/ae;->b()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 1137
    :cond_a9
    iget-object v2, p0, Lcom/google/tagmanager/a/j;->f:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_a2

    .line 1142
    :cond_b2
    iget v9, p0, Lcom/google/tagmanager/a/j;->i:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/google/tagmanager/a/j;->i:I

    .line 1143
    add-int/2addr v0, v2

    .line 1144
    goto :goto_9a

    .line 1145
    :cond_b9
    array-length v0, v8

    sub-int v0, v4, v0

    .line 1146
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    .line 1147
    goto :goto_91

    .line 1150
    :cond_c1
    new-array v3, p1, [B

    .line 1153
    sub-int v0, v6, v5

    .line 1154
    iget-object v2, p0, Lcom/google/tagmanager/a/j;->a:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1158
    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    .line 1160
    goto :goto_cf

    :cond_e3
    move-object v0, v3

    .line 1163
    goto/16 :goto_3b
.end method

.method private e(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1174
    if-gez p1, :cond_8

    .line 1175
    invoke-static {}, Lcom/google/tagmanager/a/ae;->c()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 1178
    :cond_8
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/tagmanager/a/j;->j:I

    if-le v0, v1, :cond_22

    .line 1180
    iget v0, p0, Lcom/google/tagmanager/a/j;->j:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/j;->e(I)V

    .line 1182
    invoke-static {}, Lcom/google/tagmanager/a/ae;->b()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 1185
    :cond_22
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2f

    .line 1187
    iget v0, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1205
    :goto_2e
    return-void

    .line 1190
    :cond_2f
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v1

    .line 1191
    iget v1, p0, Lcom/google/tagmanager/a/j;->c:I

    iput v1, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1196
    invoke-direct {p0, v3}, Lcom/google/tagmanager/a/j;->a(Z)Z

    .line 1197
    :goto_3b
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/tagmanager/a/j;->c:I

    if-le v1, v2, :cond_4c

    .line 1198
    iget v1, p0, Lcom/google/tagmanager/a/j;->c:I

    add-int/2addr v0, v1

    .line 1199
    iget v1, p0, Lcom/google/tagmanager/a/j;->c:I

    iput v1, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 1200
    invoke-direct {p0, v3}, Lcom/google/tagmanager/a/j;->a(Z)Z

    goto :goto_3b

    .line 1203
    :cond_4c
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/tagmanager/a/j;->e:I

    goto :goto_2e
.end method

.method private n()V
    .registers 3

    .prologue
    .line 937
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 938
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->c:I

    add-int/2addr v0, v1

    .line 939
    iget v1, p0, Lcom/google/tagmanager/a/j;->j:I

    if-le v0, v1, :cond_1d

    .line 941
    iget v1, p0, Lcom/google/tagmanager/a/j;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/j;->d:I

    .line 942
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/j;->c:I

    .line 946
    :goto_1c
    return-void

    .line 944
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/a/j;->d:I

    goto :goto_1c
.end method

.method private o()B
    .registers 4

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/tagmanager/a/j;->e:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->c:I

    if-ne v0, v1, :cond_a

    .line 1055
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/j;->a(Z)Z

    .line 1057
    :cond_a
    iget-object v0, p0, Lcom/google/tagmanager/a/j;->a:[B

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/a/j;->e:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 121
    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->c:I

    if-ne v1, v2, :cond_13

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/j;->a(Z)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    :goto_e
    if-eqz v1, :cond_15

    .line 122
    iput v0, p0, Lcom/google/tagmanager/a/j;->g:I

    .line 132
    :goto_12
    return v0

    :cond_13
    move v1, v0

    .line 121
    goto :goto_e

    .line 126
    :cond_15
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/j;->g:I

    .line 127
    iget v0, p0, Lcom/google/tagmanager/a/j;->g:I

    invoke-static {v0}, Lcom/google/tagmanager/a/bh;->b(I)I

    move-result v0

    if-nez v0, :cond_28

    .line 130
    invoke-static {}, Lcom/google/tagmanager/a/ae;->e()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 132
    :cond_28
    iget v0, p0, Lcom/google/tagmanager/a/j;->g:I

    goto :goto_12
.end method

.method public final a(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    .line 511
    iget v1, p0, Lcom/google/tagmanager/a/j;->k:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->l:I

    if-lt v1, v2, :cond_f

    .line 512
    invoke-static {}, Lcom/google/tagmanager/a/ae;->h()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 514
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/j;->b(I)I

    move-result v1

    .line 515
    iget v0, p0, Lcom/google/tagmanager/a/j;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/j;->k:I

    .line 516
    invoke-interface {p1, p0, p2}, Lcom/google/tagmanager/a/ao;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ak;

    .line 517
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/a/j;->a(I)V

    .line 518
    iget v2, p0, Lcom/google/tagmanager/a/j;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/tagmanager/a/j;->k:I

    .line 519
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/a/j;->c(I)V

    .line 520
    return-object v0
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 145
    iget v0, p0, Lcom/google/tagmanager/a/j;->g:I

    if-eq v0, p1, :cond_9

    .line 146
    invoke-static {}, Lcom/google/tagmanager/a/ae;->f()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 148
    :cond_9
    return-void
.end method

.method public final a(ILcom/google/tagmanager/a/al;Lcom/google/tagmanager/a/n;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iget v0, p0, Lcom/google/tagmanager/a/j;->k:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->l:I

    if-lt v0, v1, :cond_b

    .line 407
    invoke-static {}, Lcom/google/tagmanager/a/ae;->h()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 409
    :cond_b
    iget v0, p0, Lcom/google/tagmanager/a/j;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/j;->k:I

    .line 410
    invoke-interface {p2, p0, p3}, Lcom/google/tagmanager/a/al;->b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;

    .line 411
    invoke-static {p1}, Lcom/google/tagmanager/a/bh;->c(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/j;->a(I)V

    .line 413
    iget v0, p0, Lcom/google/tagmanager/a/j;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/a/j;->k:I

    .line 414
    return-void
.end method

.method public final a(Lcom/google/tagmanager/a/al;Lcom/google/tagmanager/a/n;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    .line 475
    iget v1, p0, Lcom/google/tagmanager/a/j;->k:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->l:I

    if-lt v1, v2, :cond_f

    .line 476
    invoke-static {}, Lcom/google/tagmanager/a/ae;->h()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 478
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/j;->b(I)I

    move-result v0

    .line 479
    iget v1, p0, Lcom/google/tagmanager/a/j;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/tagmanager/a/j;->k:I

    .line 480
    invoke-interface {p1, p0, p2}, Lcom/google/tagmanager/a/al;->b(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/al;

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/tagmanager/a/j;->a(I)V

    .line 482
    iget v1, p0, Lcom/google/tagmanager/a/j;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/tagmanager/a/j;->k:I

    .line 483
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/j;->c(I)V

    .line 484
    return-void
.end method

.method public final a(ILcom/google/tagmanager/a/l;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-static {p1}, Lcom/google/tagmanager/a/bh;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_da

    .line 234
    invoke-static {}, Lcom/google/tagmanager/a/ae;->g()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 198
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->j()J

    move-result-wide v1

    .line 199
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 200
    :goto_14
    const-wide/16 v3, -0x80

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    long-to-int v1, v1

    invoke-virtual {p2, v1}, Lcom/google/tagmanager/a/l;->a(I)V

    .line 231
    :goto_21
    return v0

    .line 200
    :cond_22
    long-to-int v3, v1

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/4 v3, 0x7

    ushr-long/2addr v1, v3

    goto :goto_14

    .line 204
    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->l()J

    move-result-wide v1

    .line 205
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 206
    long-to-int v3, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/16 v3, 0x8

    shr-long v3, v1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/16 v3, 0x10

    shr-long v3, v1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/16 v3, 0x18

    shr-long v3, v1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/16 v3, 0x20

    shr-long v3, v1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/16 v3, 0x28

    shr-long v3, v1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/16 v3, 0x30

    shr-long v3, v1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p2, v3}, Lcom/google/tagmanager/a/l;->a(I)V

    const/16 v3, 0x38

    shr-long/2addr v1, v3

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p2, v1}, Lcom/google/tagmanager/a/l;->a(I)V

    goto :goto_21

    .line 210
    :pswitch_80
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->g()Lcom/google/tagmanager/a/g;

    move-result-object v1

    .line 211
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 212
    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/tagmanager/a/l;->b(I)V

    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/google/tagmanager/a/l;->a(Lcom/google/tagmanager/a/g;I)V

    goto :goto_21

    .line 216
    :pswitch_96
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 217
    :cond_99
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->a()I

    move-result v1

    if-eqz v1, :cond_a5

    invoke-virtual {p0, v1, p2}, Lcom/google/tagmanager/a/j;->a(ILcom/google/tagmanager/a/l;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 218
    :cond_a5
    invoke-static {p1}, Lcom/google/tagmanager/a/bh;->b(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/a/bh;->c(I)I

    move-result v1

    .line 220
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/a/j;->a(I)V

    .line 221
    invoke-virtual {p2, v1}, Lcom/google/tagmanager/a/l;->b(I)V

    goto/16 :goto_21

    .line 225
    :pswitch_b5
    const/4 v0, 0x0

    goto/16 :goto_21

    .line 228
    :pswitch_b8
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->k()I

    move-result v1

    .line 229
    invoke-virtual {p2, p1}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 230
    and-int/lit16 v2, v1, 0xff

    invoke-virtual {p2, v2}, Lcom/google/tagmanager/a/l;->a(I)V

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p2, v2}, Lcom/google/tagmanager/a/l;->a(I)V

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p2, v2}, Lcom/google/tagmanager/a/l;->a(I)V

    ushr-int/lit8 v1, v1, 0x18

    invoke-virtual {p2, v1}, Lcom/google/tagmanager/a/l;->a(I)V

    goto/16 :goto_21

    .line 196
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_d
        :pswitch_2d
        :pswitch_80
        :pswitch_96
        :pswitch_b5
        :pswitch_b8
    .end packed-switch
.end method

.method public final b()F
    .registers 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final b(I)I
    .registers 4
    .parameter

    .prologue
    .line 921
    if-gez p1, :cond_7

    .line 922
    invoke-static {}, Lcom/google/tagmanager/a/ae;->c()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 924
    :cond_7
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 925
    iget v1, p0, Lcom/google/tagmanager/a/j;->j:I

    .line 926
    if-le v0, v1, :cond_16

    .line 927
    invoke-static {}, Lcom/google/tagmanager/a/ae;->b()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    .line 929
    :cond_16
    iput v0, p0, Lcom/google/tagmanager/a/j;->j:I

    .line 931
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->n()V

    .line 933
    return v1
.end method

.method public final c()J
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(I)V
    .registers 2
    .parameter

    .prologue
    .line 954
    iput p1, p0, Lcom/google/tagmanager/a/j;->j:I

    .line 955
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->n()V

    .line 956
    return-void
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final f()Ljava/lang/String;
    .registers 6

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v1

    .line 365
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1e

    if-lez v1, :cond_1e

    .line 368
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/tagmanager/a/j;->a:[B

    iget v3, p0, Lcom/google/tagmanager/a/j;->e:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 369
    iget v2, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/tagmanager/a/j;->e:I

    .line 373
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/tagmanager/a/j;->d(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1d
.end method

.method public final g()Lcom/google/tagmanager/a/g;
    .registers 5

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v1

    .line 526
    if-nez v1, :cond_9

    .line 527
    sget-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    .line 538
    :goto_8
    return-object v0

    .line 528
    :cond_9
    iget v0, p0, Lcom/google/tagmanager/a/j;->c:I

    iget v2, p0, Lcom/google/tagmanager/a/j;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_32

    if-lez v1, :cond_32

    .line 531
    iget-boolean v0, p0, Lcom/google/tagmanager/a/j;->b:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/google/tagmanager/a/j;->h:Z

    if-eqz v0, :cond_29

    new-instance v0, Lcom/google/tagmanager/a/e;

    iget-object v2, p0, Lcom/google/tagmanager/a/j;->a:[B

    iget v3, p0, Lcom/google/tagmanager/a/j;->e:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/tagmanager/a/e;-><init>([BII)V

    .line 534
    :goto_23
    iget v2, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/tagmanager/a/j;->e:I

    goto :goto_8

    .line 531
    :cond_29
    iget-object v0, p0, Lcom/google/tagmanager/a/j;->a:[B

    iget v2, p0, Lcom/google/tagmanager/a/j;->e:I

    invoke-static {v0, v2, v1}, Lcom/google/tagmanager/a/g;->a([BII)Lcom/google/tagmanager/a/g;

    move-result-object v0

    goto :goto_23

    .line 538
    :cond_32
    new-instance v0, Lcom/google/tagmanager/a/ai;

    invoke-direct {p0, v1}, Lcom/google/tagmanager/a/j;->d(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    goto :goto_8
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    return v0
.end method

.method public final i()I
    .registers 4

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v0

    .line 624
    if-ltz v0, :cond_7

    .line 653
    :cond_6
    :goto_6
    return v0

    .line 627
    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 628
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v1

    if-ltz v1, :cond_13

    .line 629
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    .line 631
    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 632
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v1

    if-ltz v1, :cond_22

    .line 633
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    .line 635
    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 636
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v1

    if-ltz v1, :cond_31

    .line 637
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    .line 639
    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 640
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 641
    if-gez v1, :cond_6

    .line 643
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    .line 644
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v2

    if-gez v2, :cond_6

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 648
    :cond_4c
    invoke-static {}, Lcom/google/tagmanager/a/ae;->d()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
.end method

.method public final j()J
    .registers 7

    .prologue
    .line 718
    const/4 v2, 0x0

    .line 719
    const-wide/16 v0, 0x0

    .line 720
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 721
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v3

    .line 722
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 723
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    .line 724
    return-wide v0

    .line 726
    :cond_15
    add-int/lit8 v2, v2, 0x7

    .line 727
    goto :goto_3

    .line 728
    :cond_18
    invoke-static {}, Lcom/google/tagmanager/a/ae;->d()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
.end method

.method public final k()I
    .registers 5

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v0

    .line 734
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v1

    .line 735
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v2

    .line 736
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v3

    .line 737
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final l()J
    .registers 14

    .prologue
    const-wide/16 v11, 0xff

    .line 745
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v0

    .line 746
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v1

    .line 747
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v2

    .line 748
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v3

    .line 749
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v4

    .line 750
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v5

    .line 751
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v6

    .line 752
    invoke-direct {p0}, Lcom/google/tagmanager/a/j;->o()B

    move-result v7

    .line 753
    int-to-long v8, v0

    and-long/2addr v8, v11

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final m()I
    .registers 3

    .prologue
    .line 963
    iget v0, p0, Lcom/google/tagmanager/a/j;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 964
    const/4 v0, -0x1

    .line 968
    :goto_8
    return v0

    .line 967
    :cond_9
    iget v0, p0, Lcom/google/tagmanager/a/j;->i:I

    iget v1, p0, Lcom/google/tagmanager/a/j;->e:I

    add-int/2addr v0, v1

    .line 968
    iget v1, p0, Lcom/google/tagmanager/a/j;->j:I

    sub-int v0, v1, v0

    goto :goto_8
.end method
