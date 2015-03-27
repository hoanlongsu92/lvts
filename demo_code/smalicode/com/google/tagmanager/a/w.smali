.class public abstract Lcom/google/tagmanager/a/w;
.super Lcom/google/tagmanager/a/s;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/a/x;


# instance fields
.field private final a:Lcom/google/tagmanager/a/p;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/tagmanager/a/s;-><init>()V

    .line 185
    invoke-static {}, Lcom/google/tagmanager/a/p;->a()Lcom/google/tagmanager/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/p;

    .line 186
    return-void
.end method

.method protected constructor <init>(Lcom/google/tagmanager/a/v;)V
    .registers 3
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/tagmanager/a/s;-><init>()V

    .line 189
    invoke-static {p1}, Lcom/google/tagmanager/a/v;->a(Lcom/google/tagmanager/a/v;)Lcom/google/tagmanager/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/p;

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/w;)Lcom/google/tagmanager/a/p;
    .registers 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/p;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 259
    iget-object v3, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/p;

    invoke-virtual {p0}, Lcom/google/tagmanager/a/w;->m()Lcom/google/tagmanager/a/ak;

    move-result-object v2

    invoke-static {p4}, Lcom/google/tagmanager/a/bh;->a(I)I

    move-result v4

    invoke-static {p4}, Lcom/google/tagmanager/a/bh;->b(I)I

    move-result v5

    invoke-virtual {p3, v2, v5}, Lcom/google/tagmanager/a/n;->a(Lcom/google/tagmanager/a/ak;I)Lcom/google/tagmanager/a/z;

    move-result-object v5

    if-eqz v5, :cond_49

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/bi;Z)I

    move-result v2

    if-ne v4, v2, :cond_2a

    move v2, v0

    :goto_23
    if-eqz v2, :cond_4b

    invoke-virtual {p1, p4, p2}, Lcom/google/tagmanager/a/j;->a(ILcom/google/tagmanager/a/l;)Z

    move-result v0

    :goto_29
    return v0

    :cond_2a
    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    iget-boolean v2, v2, Lcom/google/tagmanager/a/y;->d:Z

    if-eqz v2, :cond_49

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    iget-object v2, v2, Lcom/google/tagmanager/a/y;->c:Lcom/google/tagmanager/a/bi;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/bi;->c()Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/bi;Z)I

    move-result v2

    if-ne v4, v2, :cond_49

    move v2, v0

    move v0, v1

    goto :goto_23

    :cond_49
    move v2, v1

    goto :goto_23

    :cond_4b
    if-eqz v0, :cond_9a

    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/a/j;->b(I)I

    move-result v0

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v2

    sget-object v4, Lcom/google/tagmanager/a/bi;->n:Lcom/google/tagmanager/a/bi;

    if-ne v2, v4, :cond_7f

    :goto_5f
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->m()I

    move-result v2

    if-lez v2, :cond_95

    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->h()I

    move-result v2

    iget-object v4, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v4}, Lcom/google/tagmanager/a/y;->e()Lcom/google/tagmanager/a/ad;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/tagmanager/a/ad;->a(I)Lcom/google/tagmanager/a/ac;

    move-result-object v2

    if-eqz v2, :cond_98

    iget-object v4, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v5, v2}, Lcom/google/tagmanager/a/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/tagmanager/a/p;->b(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V

    goto :goto_5f

    :cond_7f
    :goto_7f
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->m()I

    move-result v2

    if-lez v2, :cond_95

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/bi;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v3, v4, v2}, Lcom/google/tagmanager/a/p;->b(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V

    goto :goto_7f

    :cond_95
    invoke-virtual {p1, v0}, Lcom/google/tagmanager/a/j;->c(I)V

    :cond_98
    :goto_98
    move v0, v1

    goto :goto_29

    :cond_9a
    sget-object v0, Lcom/google/tagmanager/a/t;->a:[I

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->b()Lcom/google/tagmanager/a/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/a/bn;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_126

    iget-object v0, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/y;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/bi;)Ljava/lang/Object;

    move-result-object v0

    :cond_b5
    :goto_b5
    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->c()Z

    move-result v2

    if-eqz v2, :cond_119

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v5, v0}, Lcom/google/tagmanager/a/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/google/tagmanager/a/p;->b(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V

    goto :goto_98

    :pswitch_c7
    const/4 v2, 0x0

    iget-object v0, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/y;->c()Z

    move-result v0

    if-nez v0, :cond_124

    iget-object v0, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v3, v0}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/r;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ak;

    if-eqz v0, :cond_124

    invoke-interface {v0}, Lcom/google/tagmanager/a/ak;->k()Lcom/google/tagmanager/a/al;

    move-result-object v0

    :goto_de
    if-nez v0, :cond_e6

    iget-object v0, v5, Lcom/google/tagmanager/a/z;->a:Lcom/google/tagmanager/a/ak;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ak;->l()Lcom/google/tagmanager/a/al;

    move-result-object v0

    :cond_e6
    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v2

    sget-object v4, Lcom/google/tagmanager/a/bi;->j:Lcom/google/tagmanager/a/bi;

    if-ne v2, v4, :cond_fe

    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/y;->d()I

    move-result v2

    invoke-virtual {p1, v2, v0, p3}, Lcom/google/tagmanager/a/j;->a(ILcom/google/tagmanager/a/al;Lcom/google/tagmanager/a/n;)V

    :goto_f9
    invoke-interface {v0}, Lcom/google/tagmanager/a/al;->e()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    goto :goto_b5

    :cond_fe
    invoke-virtual {p1, v0, p3}, Lcom/google/tagmanager/a/j;->a(Lcom/google/tagmanager/a/al;Lcom/google/tagmanager/a/n;)V

    goto :goto_f9

    :pswitch_102
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->h()I

    move-result v2

    iget-object v0, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/y;->e()Lcom/google/tagmanager/a/ad;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/tagmanager/a/ad;->a(I)Lcom/google/tagmanager/a/ac;

    move-result-object v0

    if-nez v0, :cond_b5

    invoke-virtual {p2, p4}, Lcom/google/tagmanager/a/l;->b(I)V

    invoke-virtual {p2, v2}, Lcom/google/tagmanager/a/l;->b(I)V

    goto :goto_98

    :cond_119
    iget-object v2, v5, Lcom/google/tagmanager/a/z;->b:Lcom/google/tagmanager/a/y;

    invoke-virtual {v5, v0}, Lcom/google/tagmanager/a/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V

    goto/16 :goto_98

    :cond_124
    move-object v0, v2

    goto :goto_de

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_102
    .end packed-switch
.end method

.method protected final s()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/p;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/p;->e()Z

    move-result v0

    return v0
.end method

.method protected final t()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/p;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/p;->c()V

    .line 287
    return-void
.end method
