.class public final Lcom/antispycell/connmonitor/ao;
.super Ljava/lang/Object;
.source "ConnectionsDataSource.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/an;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/an;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->a:Lcom/antispycell/connmonitor/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/antispycell/connmonitor/ao;->b:J

    return-wide v0
.end method

.method public final a(J)V
    .registers 3
    .parameter

    .prologue
    .line 312
    iput-wide p1, p0, Lcom/antispycell/connmonitor/ao;->b:J

    .line 313
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->i:Ljava/lang/Integer;

    .line 373
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->c:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/antispycell/connmonitor/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->d:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/antispycell/connmonitor/ao;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->e:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/antispycell/connmonitor/ao;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->f:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/antispycell/connmonitor/ao;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->g:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public final f()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/antispycell/connmonitor/ao;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/antispycell/connmonitor/ao;->h:Ljava/lang/String;

    .line 365
    return-void
.end method
