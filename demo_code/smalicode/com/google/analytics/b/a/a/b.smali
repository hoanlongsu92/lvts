.class public final Lcom/google/analytics/b/a/a/b;
.super Lcom/google/tagmanager/a/w;
.source "TypeSystem.java"

# interfaces
.implements Lcom/google/analytics/b/a/a/i;


# static fields
.field public static a:Lcom/google/tagmanager/a/ao;

.field private static final c:Lcom/google/analytics/b/a/a/b;

.field private static volatile t:Lcom/google/tagmanager/a/an;


# instance fields
.field private final d:Lcom/google/tagmanager/a/g;

.field private e:I

.field private f:Lcom/google/analytics/b/a/a/g;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:J

.field private n:Z

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Z

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 359
    new-instance v0, Lcom/google/analytics/b/a/a/c;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/c;-><init>()V

    sput-object v0, Lcom/google/analytics/b/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    .line 1345
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/b/a/a/b;->t:Lcom/google/tagmanager/a/an;

    .line 2613
    new-instance v0, Lcom/google/analytics/b/a/a/b;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/b;-><init>()V

    .line 2614
    sput-object v0, Lcom/google/analytics/b/a/a/b;->c:Lcom/google/analytics/b/a/a/b;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/b;->B()V

    .line 2615
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 176
    invoke-direct {p0}, Lcom/google/tagmanager/a/w;-><init>()V

    .line 1061
    iput-byte v0, p0, Lcom/google/analytics/b/a/a/b;->r:B

    .line 1148
    iput v0, p0, Lcom/google/analytics/b/a/a/b;->s:I

    .line 176
    sget-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/16 v12, 0x200

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/16 v8, 0x400

    .line 191
    invoke-direct {p0}, Lcom/google/tagmanager/a/w;-><init>()V

    .line 1061
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/analytics/b/a/a/b;->r:B

    .line 1148
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/b/a/a/b;->s:I

    .line 192
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->B()V

    .line 193
    const/4 v1, 0x0

    .line 194
    invoke-static {}, Lcom/google/tagmanager/a/g;->i()Lcom/google/tagmanager/a/i;

    move-result-object v2

    .line 196
    invoke-static {v2}, Lcom/google/tagmanager/a/l;->a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;

    move-result-object v3

    .line 200
    const/4 v0, 0x0

    .line 201
    :cond_1f
    :goto_1f
    if-nez v0, :cond_1c4

    .line 202
    :try_start_21
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->a()I

    move-result v4

    .line 203
    sparse-switch v4, :sswitch_data_22e

    .line 208
    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/google/analytics/b/a/a/b;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 210
    const/4 v0, 0x1

    goto :goto_1f

    .line 205
    :sswitch_30
    const/4 v0, 0x1

    .line 206
    goto :goto_1f

    .line 215
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->h()I

    move-result v5

    .line 216
    invoke-static {v5}, Lcom/google/analytics/b/a/a/g;->a(I)Lcom/google/analytics/b/a/a/g;

    move-result-object v6

    .line 217
    if-nez v6, :cond_93

    .line 218
    invoke-virtual {v3, v4}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 219
    invoke-virtual {v3, v5}, Lcom/google/tagmanager/a/l;->b(I)V
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_49
    .catch Lcom/google/tagmanager/a/ae; {:try_start_21 .. :try_end_42} :catch_43
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_42} :catch_9c

    goto :goto_1f

    .line 328
    :catch_43
    move-exception v0

    :try_start_44
    invoke-virtual {v0, p0}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_49

    .line 334
    :catchall_49
    move-exception v0

    and-int/lit8 v4, v1, 0x4

    if-ne v4, v9, :cond_56

    .line 335
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    .line 337
    :cond_56
    and-int/lit8 v4, v1, 0x8

    if-ne v4, v10, :cond_62

    .line 338
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    .line 340
    :cond_62
    and-int/lit8 v4, v1, 0x10

    if-ne v4, v11, :cond_6e

    .line 341
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    .line 343
    :cond_6e
    and-int/lit16 v4, v1, 0x400

    if-ne v4, v8, :cond_7a

    .line 344
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    .line 346
    :cond_7a
    and-int/lit16 v1, v1, 0x200

    if-ne v1, v12, :cond_86

    .line 347
    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    .line 350
    :cond_86
    :try_start_86
    invoke-virtual {v3}, Lcom/google/tagmanager/a/l;->a()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_226
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_21d

    .line 354
    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    .line 356
    :goto_8f
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->t()V

    throw v0

    .line 221
    :cond_93
    :try_start_93
    iget v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    .line 222
    iput-object v6, p0, Lcom/google/analytics/b/a/a/b;->f:Lcom/google/analytics/b/a/a/g;
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_49
    .catch Lcom/google/tagmanager/a/ae; {:try_start_93 .. :try_end_9b} :catch_43
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9b} :catch_9c

    goto :goto_1f

    .line 330
    :catch_9c
    move-exception v0

    .line 331
    :try_start_9d
    new-instance v4, Lcom/google/tagmanager/a/ae;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_49

    .line 227
    :sswitch_ab
    :try_start_ab
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->g()Lcom/google/tagmanager/a/g;

    move-result-object v4

    .line 228
    iget v5, p0, Lcom/google/analytics/b/a/a/b;->e:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/analytics/b/a/a/b;->e:I

    .line 229
    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->g:Ljava/lang/Object;

    goto/16 :goto_1f

    .line 233
    :sswitch_b9
    and-int/lit8 v4, v1, 0x4

    if-eq v4, v9, :cond_c6

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    .line 235
    or-int/lit8 v1, v1, 0x4

    .line 237
    :cond_c6
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/j;->a(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 241
    :sswitch_d3
    and-int/lit8 v4, v1, 0x8

    if-eq v4, v10, :cond_e0

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    .line 243
    or-int/lit8 v1, v1, 0x8

    .line 245
    :cond_e0
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/j;->a(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 249
    :sswitch_ed
    and-int/lit8 v4, v1, 0x10

    if-eq v4, v11, :cond_fa

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    .line 251
    or-int/lit8 v1, v1, 0x10

    .line 253
    :cond_fa
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/j;->a(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 257
    :sswitch_107
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->g()Lcom/google/tagmanager/a/g;

    move-result-object v4

    .line 258
    iget v5, p0, Lcom/google/analytics/b/a/a/b;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/analytics/b/a/a/b;->e:I

    .line 259
    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->k:Ljava/lang/Object;

    goto/16 :goto_1f

    .line 263
    :sswitch_115
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->g()Lcom/google/tagmanager/a/g;

    move-result-object v4

    .line 264
    iget v5, p0, Lcom/google/analytics/b/a/a/b;->e:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/analytics/b/a/a/b;->e:I

    .line 265
    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->l:Ljava/lang/Object;

    goto/16 :goto_1f

    .line 269
    :sswitch_123
    iget v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    .line 270
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/analytics/b/a/a/b;->m:J

    goto/16 :goto_1f

    .line 274
    :sswitch_131
    iget v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    .line 275
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/b/a/a/b;->q:Z

    goto/16 :goto_1f

    .line 279
    :sswitch_13f
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->h()I

    move-result v5

    .line 280
    invoke-static {v5}, Lcom/google/analytics/b/a/a/e;->a(I)Lcom/google/analytics/b/a/a/e;

    move-result-object v6

    .line 281
    if-nez v6, :cond_151

    .line 282
    invoke-virtual {v3, v4}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 283
    invoke-virtual {v3, v5}, Lcom/google/tagmanager/a/l;->b(I)V

    goto/16 :goto_1f

    .line 285
    :cond_151
    and-int/lit16 v4, v1, 0x400

    if-eq v4, v8, :cond_15e

    .line 286
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    .line 287
    or-int/lit16 v1, v1, 0x400

    .line 289
    :cond_15e
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 294
    :sswitch_165
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->i()I

    move-result v5

    .line 295
    invoke-virtual {p1, v5}, Lcom/google/tagmanager/a/j;->b(I)I

    move-result v5

    .line 296
    :goto_16d
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->m()I

    move-result v6

    if-lez v6, :cond_197

    .line 297
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->h()I

    move-result v6

    .line 298
    invoke-static {v6}, Lcom/google/analytics/b/a/a/e;->a(I)Lcom/google/analytics/b/a/a/e;

    move-result-object v7

    .line 299
    if-nez v7, :cond_184

    .line 300
    invoke-virtual {v3, v4}, Lcom/google/tagmanager/a/l;->b(I)V

    .line 301
    invoke-virtual {v3, v6}, Lcom/google/tagmanager/a/l;->b(I)V

    goto :goto_16d

    .line 303
    :cond_184
    and-int/lit16 v6, v1, 0x400

    if-eq v6, v8, :cond_191

    .line 304
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    .line 305
    or-int/lit16 v1, v1, 0x400

    .line 307
    :cond_191
    iget-object v6, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 310
    :cond_197
    invoke-virtual {p1, v5}, Lcom/google/tagmanager/a/j;->c(I)V

    goto/16 :goto_1f

    .line 314
    :sswitch_19c
    and-int/lit16 v4, v1, 0x200

    if-eq v4, v12, :cond_1a9

    .line 315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    .line 316
    or-int/lit16 v1, v1, 0x200

    .line 318
    :cond_1a9
    iget-object v4, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/j;->a(Lcom/google/tagmanager/a/ao;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 322
    :sswitch_1b6
    iget v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/analytics/b/a/a/b;->e:I

    .line 323
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/b/a/a/b;->n:Z
    :try_end_1c2
    .catchall {:try_start_ab .. :try_end_1c2} :catchall_49
    .catch Lcom/google/tagmanager/a/ae; {:try_start_ab .. :try_end_1c2} :catch_43
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_1c2} :catch_9c

    goto/16 :goto_1f

    .line 334
    :cond_1c4
    and-int/lit8 v0, v1, 0x4

    if-ne v0, v9, :cond_1d0

    .line 335
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    .line 337
    :cond_1d0
    and-int/lit8 v0, v1, 0x8

    if-ne v0, v10, :cond_1dc

    .line 338
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    .line 340
    :cond_1dc
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v11, :cond_1e8

    .line 341
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    .line 343
    :cond_1e8
    and-int/lit16 v0, v1, 0x400

    if-ne v0, v8, :cond_1f4

    .line 344
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    .line 346
    :cond_1f4
    and-int/lit16 v0, v1, 0x200

    if-ne v0, v12, :cond_200

    .line 347
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    .line 350
    :cond_200
    :try_start_200
    invoke-virtual {v3}, Lcom/google/tagmanager/a/l;->a()V
    :try_end_203
    .catchall {:try_start_200 .. :try_end_203} :catchall_215
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_20d

    .line 354
    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    .line 356
    :goto_209
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->t()V

    .line 357
    return-void

    .line 354
    :catch_20d
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    goto :goto_209

    :catchall_215
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    throw v0

    :catch_21d
    move-exception v1

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    goto/16 :goto_8f

    :catchall_226
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    throw v0

    .line 203
    :sswitch_data_22e
    .sparse-switch
        0x0 -> :sswitch_30
        0x8 -> :sswitch_32
        0x12 -> :sswitch_ab
        0x1a -> :sswitch_b9
        0x22 -> :sswitch_d3
        0x2a -> :sswitch_ed
        0x32 -> :sswitch_107
        0x3a -> :sswitch_115
        0x40 -> :sswitch_123
        0x48 -> :sswitch_131
        0x50 -> :sswitch_13f
        0x52 -> :sswitch_165
        0x5a -> :sswitch_19c
        0x60 -> :sswitch_1b6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/b/a/a/b;-><init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/v;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 173
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/w;-><init>(Lcom/google/tagmanager/a/v;)V

    .line 1061
    iput-byte v0, p0, Lcom/google/analytics/b/a/a/b;->r:B

    .line 1148
    iput v0, p0, Lcom/google/analytics/b/a/a/b;->s:I

    .line 174
    invoke-virtual {p1}, Lcom/google/tagmanager/a/v;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/v;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/google/analytics/b/a/a/b;-><init>(Lcom/google/tagmanager/a/v;)V

    return-void
.end method

.method private A()I
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private B()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1048
    sget-object v0, Lcom/google/analytics/b/a/a/g;->a:Lcom/google/analytics/b/a/a/g;

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->f:Lcom/google/analytics/b/a/a/g;

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->g:Ljava/lang/Object;

    .line 1050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    .line 1051
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    .line 1052
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    .line 1053
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->k:Ljava/lang/Object;

    .line 1054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->l:Ljava/lang/Object;

    .line 1055
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/b/a/a/b;->m:J

    .line 1056
    iput-boolean v2, p0, Lcom/google/analytics/b/a/a/b;->n:Z

    .line 1057
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    .line 1058
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    .line 1059
    iput-boolean v2, p0, Lcom/google/analytics/b/a/a/b;->q:Z

    .line 1060
    return-void
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/b;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/google/analytics/b/a/a/b;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/b;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/google/analytics/b/a/a/b;->m:J

    return-wide p1
.end method

.method public static a()Lcom/google/analytics/b/a/a/b;
    .registers 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/analytics/b/a/a/b;->c:Lcom/google/analytics/b/a/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/b;Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/g;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->f:Lcom/google/analytics/b/a/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/b;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/b;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/b;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/b;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/b;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/google/analytics/b/a/a/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/google/analytics/b/a/a/b;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/analytics/b/a/a/b;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/google/analytics/b/a/a/b;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/google/analytics/b/a/a/b;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/google/analytics/b/a/a/b;)Lcom/google/tagmanager/a/g;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    return-object v0
.end method

.method public static r()Lcom/google/analytics/b/a/a/d;
    .registers 1

    .prologue
    .line 1407
    invoke-static {}, Lcom/google/analytics/b/a/a/d;->g()Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .registers 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->g:Ljava/lang/Object;

    .line 708
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 709
    check-cast v0, Ljava/lang/String;

    .line 717
    :goto_8
    return-object v0

    .line 711
    :cond_9
    check-cast v0, Lcom/google/tagmanager/a/g;

    .line 713
    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->f()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 715
    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->g:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 717
    goto :goto_8
.end method

.method private v()I
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private w()I
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private x()I
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private y()Ljava/lang/String;
    .registers 3

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->k:Ljava/lang/Object;

    .line 863
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 864
    check-cast v0, Ljava/lang/String;

    .line 872
    :goto_8
    return-object v0

    .line 866
    :cond_9
    check-cast v0, Lcom/google/tagmanager/a/g;

    .line 868
    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->f()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 870
    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->k:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 872
    goto :goto_8
.end method

.method private z()Ljava/lang/String;
    .registers 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->l:Ljava/lang/Object;

    .line 907
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 908
    check-cast v0, Ljava/lang/String;

    .line 916
    :goto_8
    return-object v0

    .line 910
    :cond_9
    check-cast v0, Lcom/google/tagmanager/a/g;

    .line 912
    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->f()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 914
    iput-object v1, p0, Lcom/google/analytics/b/a/a/b;->l:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 916
    goto :goto_8
.end method


# virtual methods
.method public final b()Lcom/google/tagmanager/a/ao;
    .registers 2

    .prologue
    .line 371
    sget-object v0, Lcom/google/analytics/b/a/a/b;->a:Lcom/google/tagmanager/a/ao;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 684
    iget v1, p0, Lcom/google/analytics/b/a/a/b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()Lcom/google/analytics/b/a/a/g;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->f:Lcom/google/analytics/b/a/a/g;

    return-object v0
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 701
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1222
    if-ne p1, p0, :cond_5

    .line 1276
    :cond_4
    :goto_4
    return v1

    .line 1225
    :cond_5
    instance-of v0, p1, Lcom/google/analytics/b/a/a/b;

    if-nez v0, :cond_e

    .line 1226
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 1228
    :cond_e
    check-cast p1, Lcom/google/analytics/b/a/a/b;

    .line 1230
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->c()Z

    move-result v3

    if-ne v0, v3, :cond_12f

    move v0, v1

    .line 1232
    :goto_1b
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1233
    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->f:Lcom/google/analytics/b/a/a/g;

    iget-object v3, p1, Lcom/google/analytics/b/a/a/b;->f:Lcom/google/analytics/b/a/a/g;

    if-ne v0, v3, :cond_132

    move v0, v1

    .line 1236
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_135

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->e()Z

    move-result v3

    if-ne v0, v3, :cond_135

    move v0, v1

    .line 1237
    :goto_37
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->e()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1238
    if-eqz v0, :cond_138

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/google/analytics/b/a/a/b;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    move v0, v1

    .line 1241
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    move v0, v1

    .line 1243
    :goto_5b
    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    move v0, v1

    .line 1245
    :goto_68
    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    move v0, v1

    .line 1247
    :goto_75
    if-eqz v0, :cond_144

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->f()Z

    move-result v3

    if-ne v0, v3, :cond_144

    move v0, v1

    .line 1248
    :goto_82
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->f()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1249
    if-eqz v0, :cond_147

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->y()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/google/analytics/b/a/a/b;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    move v0, v1

    .line 1252
    :cond_99
    :goto_99
    if-eqz v0, :cond_14a

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->g()Z

    move-result v3

    if-ne v0, v3, :cond_14a

    move v0, v1

    .line 1253
    :goto_a6
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->g()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1254
    if-eqz v0, :cond_14d

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/google/analytics/b/a/a/b;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    move v0, v1

    .line 1257
    :cond_bd
    :goto_bd
    if-eqz v0, :cond_150

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->h()Z

    move-result v3

    if-ne v0, v3, :cond_150

    move v0, v1

    .line 1258
    :goto_ca
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->h()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 1259
    if-eqz v0, :cond_153

    iget-wide v3, p0, Lcom/google/analytics/b/a/a/b;->m:J

    iget-wide v5, p1, Lcom/google/analytics/b/a/a/b;->m:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_153

    move v0, v1

    .line 1262
    :cond_db
    :goto_db
    if-eqz v0, :cond_155

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->n()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->n()Z

    move-result v3

    if-ne v0, v3, :cond_155

    move v0, v1

    .line 1263
    :goto_e8
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->n()Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 1264
    if-eqz v0, :cond_157

    iget-boolean v0, p0, Lcom/google/analytics/b/a/a/b;->n:Z

    iget-boolean v3, p1, Lcom/google/analytics/b/a/a/b;->n:Z

    if-ne v0, v3, :cond_157

    move v0, v1

    .line 1267
    :cond_f7
    :goto_f7
    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    move v0, v1

    .line 1269
    :goto_104
    if-eqz v0, :cond_15b

    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    move v0, v1

    .line 1271
    :goto_111
    if-eqz v0, :cond_15d

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->p()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/b;->p()Z

    move-result v3

    if-ne v0, v3, :cond_15d

    move v0, v1

    .line 1272
    :goto_11e
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->p()Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 1273
    if-eqz v0, :cond_12c

    iget-boolean v0, p0, Lcom/google/analytics/b/a/a/b;->q:Z

    iget-boolean v3, p1, Lcom/google/analytics/b/a/a/b;->q:Z

    if-eq v0, v3, :cond_4

    :cond_12c
    move v1, v2

    goto/16 :goto_4

    :cond_12f
    move v0, v2

    .line 1230
    goto/16 :goto_1b

    :cond_132
    move v0, v2

    .line 1233
    goto/16 :goto_2a

    :cond_135
    move v0, v2

    .line 1236
    goto/16 :goto_37

    :cond_138
    move v0, v2

    .line 1238
    goto/16 :goto_4e

    :cond_13b
    move v0, v2

    .line 1241
    goto/16 :goto_5b

    :cond_13e
    move v0, v2

    .line 1243
    goto/16 :goto_68

    :cond_141
    move v0, v2

    .line 1245
    goto/16 :goto_75

    :cond_144
    move v0, v2

    .line 1247
    goto/16 :goto_82

    :cond_147
    move v0, v2

    .line 1249
    goto/16 :goto_99

    :cond_14a
    move v0, v2

    .line 1252
    goto/16 :goto_a6

    :cond_14d
    move v0, v2

    .line 1254
    goto/16 :goto_bd

    :cond_150
    move v0, v2

    .line 1257
    goto/16 :goto_ca

    :cond_153
    move v0, v2

    .line 1259
    goto :goto_db

    :cond_155
    move v0, v2

    .line 1262
    goto :goto_e8

    :cond_157
    move v0, v2

    .line 1264
    goto :goto_f7

    :cond_159
    move v0, v2

    .line 1267
    goto :goto_104

    :cond_15b
    move v0, v2

    .line 1269
    goto :goto_111

    :cond_15d
    move v0, v2

    .line 1271
    goto :goto_11e

    :cond_15f
    move v1, v0

    goto/16 :goto_4
.end method

.method public final f()Z
    .registers 3

    .prologue
    .line 856
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final g()Z
    .registers 3

    .prologue
    .line 900
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final h()Z
    .registers 3

    .prologue
    .line 944
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->e:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 1281
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->b:I

    if-eqz v0, :cond_7

    .line 1282
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->b:I

    .line 1341
    :goto_6
    return v0

    .line 1284
    :cond_7
    const-class v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 1286
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1287
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 1288
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->f:Lcom/google/analytics/b/a/a/g;

    invoke-static {v1}, Lcom/google/tagmanager/a/ab;->a(Lcom/google/tagmanager/a/ac;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1291
    :cond_22
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1292
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 1293
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1295
    :cond_37
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->v()I

    move-result v1

    if-lez v1, :cond_4a

    .line 1296
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 1297
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1299
    :cond_4a
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->w()I

    move-result v1

    if-lez v1, :cond_5d

    .line 1300
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 1301
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1303
    :cond_5d
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->x()I

    move-result v1

    if-lez v1, :cond_70

    .line 1304
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 1305
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1307
    :cond_70
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1308
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 1309
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1311
    :cond_85
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1312
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 1313
    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    :cond_9a
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->h()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1316
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 1317
    mul-int/lit8 v0, v0, 0x35

    iget-wide v1, p0, Lcom/google/analytics/b/a/a/b;->m:J

    invoke-static {v1, v2}, Lcom/google/tagmanager/a/ab;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1320
    :cond_ad
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->n()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1321
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    .line 1322
    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/google/analytics/b/a/a/b;->n:Z

    invoke-static {v1}, Lcom/google/tagmanager/a/ab;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1325
    :cond_c0
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->A()I

    move-result v1

    if-lez v1, :cond_d3

    .line 1326
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    .line 1327
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1329
    :cond_d3
    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e8

    .line 1330
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    .line 1331
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->p:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/a/ab;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1334
    :cond_e8
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->p()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 1335
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    .line 1336
    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/google/analytics/b/a/a/b;->q:Z

    invoke-static {v1}, Lcom/google/tagmanager/a/ab;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1339
    :cond_fb
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/analytics/b/a/a/b;->d:Lcom/google/tagmanager/a/g;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1340
    iput v0, p0, Lcom/google/analytics/b/a/a/b;->b:I

    goto/16 :goto_6
.end method

.method public final i()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1063
    iget-byte v0, p0, Lcom/google/analytics/b/a/a/b;->r:B

    .line 1064
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-ne v0, v3, :cond_a

    move v2, v3

    .line 1099
    :cond_a
    :goto_a
    return v2

    .line 1066
    :cond_b
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1067
    iput-byte v2, p0, Lcom/google/analytics/b/a/a/b;->r:B

    goto :goto_a

    :cond_14
    move v1, v2

    .line 1070
    :goto_15
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->v()I

    move-result v0

    if-ge v1, v0, :cond_30

    .line 1071
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1072
    iput-byte v2, p0, Lcom/google/analytics/b/a/a/b;->r:B

    goto :goto_a

    .line 1070
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_30
    move v1, v2

    .line 1076
    :goto_31
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->w()I

    move-result v0

    if-ge v1, v0, :cond_4c

    .line 1077
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1078
    iput-byte v2, p0, Lcom/google/analytics/b/a/a/b;->r:B

    goto :goto_a

    .line 1076
    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_4c
    move v1, v2

    .line 1082
    :goto_4d
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->x()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 1083
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1084
    iput-byte v2, p0, Lcom/google/analytics/b/a/a/b;->r:B

    goto :goto_a

    .line 1082
    :cond_64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4d

    :cond_68
    move v1, v2

    .line 1088
    :goto_69
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/b;->A()I

    move-result v0

    if-ge v1, v0, :cond_84

    .line 1089
    iget-object v0, p0, Lcom/google/analytics/b/a/a/b;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1090
    iput-byte v2, p0, Lcom/google/analytics/b/a/a/b;->r:B

    goto :goto_a

    .line 1088
    :cond_80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_69

    .line 1094
    :cond_84
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/b;->s()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1095
    iput-byte v2, p0, Lcom/google/analytics/b/a/a/b;->r:B

    goto/16 :goto_a

    .line 1098
    :cond_8e
    iput-byte v3, p0, Lcom/google/analytics/b/a/a/b;->r:B

    move v2, v3

    .line 1099
    goto/16 :goto_a
.end method

.method public final j()J
    .registers 3

    .prologue
    .line 950
    iget-wide v0, p0, Lcom/google/analytics/b/a/a/b;->m:J

    return-wide v0
.end method

.method public final synthetic k()Lcom/google/tagmanager/a/al;
    .registers 2

    .prologue
    .line 166
    invoke-static {}, Lcom/google/analytics/b/a/a/d;->g()Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lcom/google/tagmanager/a/al;
    .registers 2

    .prologue
    .line 166
    invoke-static {}, Lcom/google/analytics/b/a/a/d;->g()Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 166
    sget-object v0, Lcom/google/analytics/b/a/a/b;->c:Lcom/google/analytics/b/a/a/b;

    return-object v0
.end method

.method public final n()Z
    .registers 3

    .prologue
    .line 961
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->e:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final o()Z
    .registers 2

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/google/analytics/b/a/a/b;->n:Z

    return v0
.end method

.method public final p()Z
    .registers 3

    .prologue
    .line 1038
    iget v0, p0, Lcom/google/analytics/b/a/a/b;->e:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final q()Z
    .registers 2

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/google/analytics/b/a/a/b;->q:Z

    return v0
.end method
