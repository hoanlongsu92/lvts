.class final Lcom/google/tagmanager/y;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/Long;

.field private static c:Ljava/lang/Double;

.field private static d:Lcom/google/tagmanager/x;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/util/List;

.field private static h:Ljava/util/Map;

.field private static i:Lcom/google/analytics/b/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tagmanager/y;->a:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/tagmanager/y;->b:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/tagmanager/y;->c:Ljava/lang/Double;

    .line 46
    invoke-static {}, Lcom/google/tagmanager/x;->a()Lcom/google/tagmanager/x;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/y;->d:Lcom/google/tagmanager/x;

    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/tagmanager/y;->e:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/y;->f:Ljava/lang/Boolean;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/tagmanager/y;->g:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/y;->h:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/google/tagmanager/y;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/y;->a(Ljava/lang/Object;)Lcom/google/analytics/b/a/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    return-void
.end method

.method public static a()Lcom/google/analytics/b/a/a/b;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Lcom/google/analytics/b/a/a/b;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lcom/google/analytics/b/a/a/b;->r()Lcom/google/analytics/b/a/a/d;

    move-result-object v5

    .line 186
    instance-of v0, p0, Lcom/google/analytics/b/a/a/b;

    if-eqz v0, :cond_d

    .line 187
    check-cast p0, Lcom/google/analytics/b/a/a/b;

    .line 241
    :goto_c
    return-object p0

    .line 188
    :cond_d
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 189
    sget-object v0, Lcom/google/analytics/b/a/a/g;->a:Lcom/google/analytics/b/a/a/g;

    invoke-virtual {v5, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/analytics/b/a/a/d;->a(Ljava/lang/String;)Lcom/google/analytics/b/a/a/d;

    .line 238
    :goto_1c
    if-eqz v1, :cond_21

    .line 239
    invoke-virtual {v5, v2}, Lcom/google/analytics/b/a/a/d;->b(Z)Lcom/google/analytics/b/a/a/d;

    .line 241
    :cond_21
    invoke-virtual {v5}, Lcom/google/analytics/b/a/a/d;->a()Lcom/google/analytics/b/a/a/b;

    move-result-object p0

    goto :goto_c

    .line 191
    :cond_26
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5c

    .line 192
    sget-object v0, Lcom/google/analytics/b/a/a/g;->b:Lcom/google/analytics/b/a/a/g;

    invoke-virtual {v5, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;

    .line 193
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 194
    invoke-static {v4}, Lcom/google/tagmanager/y;->a(Ljava/lang/Object;)Lcom/google/analytics/b/a/a/b;

    move-result-object v4

    .line 195
    sget-object v6, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    if-ne v4, v6, :cond_4b

    .line 198
    sget-object p0, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    goto :goto_c

    .line 200
    :cond_4b
    if-nez v0, :cond_53

    invoke-virtual {v4}, Lcom/google/analytics/b/a/a/b;->q()Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_53
    move v0, v2

    .line 201
    :goto_54
    invoke-virtual {v5, v4}, Lcom/google/analytics/b/a/a/d;->b(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    goto :goto_36

    :cond_58
    move v0, v1

    .line 200
    goto :goto_54

    :cond_5a
    move v1, v0

    .line 203
    goto :goto_1c

    .line 204
    :cond_5c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b4

    .line 205
    sget-object v0, Lcom/google/analytics/b/a/a/g;->c:Lcom/google/analytics/b/a/a/g;

    invoke-virtual {v5, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;

    .line 207
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/y;->a(Ljava/lang/Object;)Lcom/google/analytics/b/a/a/b;

    move-result-object v6

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/y;->a(Ljava/lang/Object;)Lcom/google/analytics/b/a/a/b;

    move-result-object v7

    .line 211
    sget-object v0, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    if-eq v6, v0, :cond_94

    sget-object v0, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    if-ne v7, v0, :cond_98

    .line 214
    :cond_94
    sget-object p0, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    goto/16 :goto_c

    .line 216
    :cond_98
    if-nez v3, :cond_a6

    invoke-virtual {v6}, Lcom/google/analytics/b/a/a/b;->q()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual {v7}, Lcom/google/analytics/b/a/a/b;->q()Z

    move-result v0

    if-eqz v0, :cond_af

    :cond_a6
    move v0, v2

    .line 217
    :goto_a7
    invoke-virtual {v5, v6}, Lcom/google/analytics/b/a/a/d;->c(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    .line 218
    invoke-virtual {v5, v7}, Lcom/google/analytics/b/a/a/d;->d(Lcom/google/analytics/b/a/a/b;)Lcom/google/analytics/b/a/a/d;

    move v3, v0

    .line 220
    goto :goto_70

    :cond_af
    move v0, v1

    .line 216
    goto :goto_a7

    :cond_b1
    move v1, v3

    .line 221
    goto/16 :goto_1c

    :cond_b4
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_c9

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_c9

    instance-of v0, p0, Lcom/google/tagmanager/x;

    if-eqz v0, :cond_db

    move-object v0, p0

    check-cast v0, Lcom/google/tagmanager/x;

    invoke-virtual {v0}, Lcom/google/tagmanager/x;->b()Z

    move-result v0

    if-eqz v0, :cond_db

    :cond_c9
    move v0, v2

    :goto_ca
    if-eqz v0, :cond_dd

    .line 224
    sget-object v0, Lcom/google/analytics/b/a/a/g;->a:Lcom/google/analytics/b/a/a/g;

    invoke-virtual {v5, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/analytics/b/a/a/d;->a(Ljava/lang/String;)Lcom/google/analytics/b/a/a/d;

    goto/16 :goto_1c

    :cond_db
    move v0, v1

    .line 221
    goto :goto_ca

    .line 226
    :cond_dd
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_fa

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_fa

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_fa

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_fa

    instance-of v0, p0, Lcom/google/tagmanager/x;

    if-eqz v0, :cond_112

    move-object v0, p0

    check-cast v0, Lcom/google/tagmanager/x;

    invoke-virtual {v0}, Lcom/google/tagmanager/x;->c()Z

    move-result v0

    if-eqz v0, :cond_112

    :cond_fa
    move v0, v2

    :goto_fb
    if-eqz v0, :cond_11c

    .line 227
    sget-object v0, Lcom/google/analytics/b/a/a/g;->f:Lcom/google/analytics/b/a/a/g;

    invoke-virtual {v5, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_114

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    :goto_10d
    invoke-virtual {v0, v3, v4}, Lcom/google/analytics/b/a/a/d;->a(J)Lcom/google/analytics/b/a/a/d;

    goto/16 :goto_1c

    :cond_112
    move v0, v1

    .line 226
    goto :goto_fb

    .line 227
    :cond_114
    const-string v3, "getInt64 received non-Number"

    invoke-static {v3}, Lcom/google/tagmanager/i;->a(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    goto :goto_10d

    .line 229
    :cond_11c
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_131

    .line 230
    sget-object v0, Lcom/google/analytics/b/a/a/g;->h:Lcom/google/analytics/b/a/a/g;

    invoke-virtual {v5, v0}, Lcom/google/analytics/b/a/a/d;->a(Lcom/google/analytics/b/a/a/g;)Lcom/google/analytics/b/a/a/d;

    move-result-object v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/analytics/b/a/a/d;->a(Z)Lcom/google/analytics/b/a/a/d;

    goto/16 :goto_1c

    .line 233
    :cond_131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Converting to Value from unknown object type: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_14b

    const-string v0, "null"

    :goto_13c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i;->a(Ljava/lang/String;)V

    .line 235
    sget-object p0, Lcom/google/tagmanager/y;->i:Lcom/google/analytics/b/a/a/b;

    goto/16 :goto_c

    .line 233
    :cond_14b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13c
.end method
