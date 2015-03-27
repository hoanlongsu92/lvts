.class public final Lcom/antispycell/connmonitor/aw;
.super Landroid/os/AsyncTask;
.source "IPDetails.java"


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Landroid/view/ViewGroup;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/antispycell/connmonitor/aw;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 1042
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1044
    iput-object p2, p0, Lcom/antispycell/connmonitor/aw;->b:Landroid/view/ViewGroup;

    .line 1045
    iput-object p3, p0, Lcom/antispycell/connmonitor/aw;->c:Landroid/content/Context;

    .line 1046
    iput p4, p0, Lcom/antispycell/connmonitor/aw;->d:I

    .line 1047
    iput-object p5, p0, Lcom/antispycell/connmonitor/aw;->e:Landroid/view/LayoutInflater;

    .line 1048
    return-void
.end method

.method static synthetic a(Lcom/antispycell/connmonitor/aw;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/antispycell/connmonitor/aw;->c:Landroid/content/Context;

    return-object v0
.end method

.method private varargs a()Landroid/view/View;
    .registers 15

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/antispycell/connmonitor/aw;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/antispycell/connmonitor/aw;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1054
    new-instance v0, Lcom/antispycell/connmonitor/ax;

    invoke-direct {v0, p0}, Lcom/antispycell/connmonitor/ax;-><init>(Lcom/antispycell/connmonitor/aw;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    const v0, 0x7f080030

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    check-cast v0, Landroid/widget/TextView;

    .line 1069
    const v1, 0x7f080006

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1068
    check-cast v1, Landroid/widget/TextView;

    .line 1071
    const v2, 0x7f080034

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1070
    check-cast v2, Landroid/widget/TextView;

    .line 1073
    const v3, 0x7f080033

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1072
    check-cast v3, Landroid/widget/TextView;

    .line 1074
    const v4, 0x7f080003

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1077
    const/4 v6, 0x0

    .line 1079
    sget-object v5, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v7, p0, Lcom/antispycell/connmonitor/aw;->d:I

    if-le v5, v7, :cond_a6

    sget-object v5, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    iget v7, p0, Lcom/antispycell/connmonitor/aw;->d:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v5}, Lcom/antispycell/connmonitor/ao;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a6

    .line 1080
    new-instance v6, Ljava/util/Date;

    sget-object v5, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    iget v7, p0, Lcom/antispycell/connmonitor/aw;->d:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/antispycell/connmonitor/ao;

    .line 1081
    invoke-virtual {v5}, Lcom/antispycell/connmonitor/ao;->e()Ljava/lang/String;

    move-result-object v5

    .line 1080
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1081
    const-wide/16 v11, 0x3e8

    mul-long/2addr v7, v11

    .line 1080
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1083
    iget-object v5, p0, Lcom/antispycell/connmonitor/aw;->c:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 1085
    iget-object v7, p0, Lcom/antispycell/connmonitor/aw;->c:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 1086
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1087
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1086
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 1090
    :cond_a6
    const/4 v7, 0x0

    .line 1092
    sget-object v5, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v8, p0, Lcom/antispycell/connmonitor/aw;->d:I

    if-le v5, v8, :cond_197

    sget-object v5, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    iget v8, p0, Lcom/antispycell/connmonitor/aw;->d:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v5}, Lcom/antispycell/connmonitor/ao;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_197

    .line 1093
    sget-object v5, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    iget v7, p0, Lcom/antispycell/connmonitor/aw;->d:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v5}, Lcom/antispycell/connmonitor/ao;->d()Ljava/lang/String;

    move-result-object v5

    .line 1095
    :goto_cf
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1098
    if-eqz v5, :cond_192

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_192

    .line 1099
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1100
    const/4 v8, 0x0

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v13, v7

    move-object v7, v5

    move-object v5, v13

    .line 1104
    :goto_100
    const/4 v8, 0x0

    .line 1106
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_16d

    .line 1107
    const-string v7, "Android system"

    .line 1108
    const/4 v5, 0x0

    move-object v8, v7

    move-object v13, v5

    move-object v5, v7

    move-object v7, v13

    .line 1119
    :goto_10e
    if-eqz v7, :cond_189

    .line 1120
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    :goto_113
    if-nez v5, :cond_190

    if-eqz v8, :cond_190

    const-string v4, ":"

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_190

    .line 1127
    const/4 v4, 0x0

    const-string v5, ":"

    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1130
    :goto_12a
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_134

    const-string v4, "n/a"

    .line 1132
    :cond_134
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Port: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/antispycell/connmonitor/IPDetails;->b:Ljava/util/List;

    iget v4, p0, Lcom/antispycell/connmonitor/aw;->d:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Last: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    return-object v10

    .line 1111
    :cond_16d
    iget-object v9, p0, Lcom/antispycell/connmonitor/aw;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v9, v7, v5}, Lcom/antispycell/connmonitor/IPDetails;->a(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1114
    :try_start_177
    iget-object v5, p0, Lcom/antispycell/connmonitor/aw;->a:Lcom/antispycell/connmonitor/IPDetails;

    iget-object v5, v5, Lcom/antispycell/connmonitor/IPDetails;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17e} :catch_184

    move-result-object v5

    move-object v8, v9

    move-object v13, v5

    move-object v5, v7

    move-object v7, v13

    .line 1115
    goto :goto_10e

    :catch_184
    move-exception v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_10e

    .line 1122
    :cond_189
    const v7, 0x7f020009

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_113

    :cond_190
    move-object v4, v5

    goto :goto_12a

    :cond_192
    move-object v13, v7

    move-object v7, v5

    move-object v5, v13

    goto/16 :goto_100

    :cond_197
    move-object v5, v7

    goto/16 :goto_cf
.end method

.method static synthetic b(Lcom/antispycell/connmonitor/aw;)I
    .registers 2
    .parameter

    .prologue
    .line 1039
    iget v0, p0, Lcom/antispycell/connmonitor/aw;->d:I

    return v0
.end method

.method static synthetic c(Lcom/antispycell/connmonitor/aw;)Lcom/antispycell/connmonitor/IPDetails;
    .registers 2
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/antispycell/connmonitor/aw;->a:Lcom/antispycell/connmonitor/IPDetails;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/antispycell/connmonitor/aw;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/antispycell/connmonitor/aw;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
