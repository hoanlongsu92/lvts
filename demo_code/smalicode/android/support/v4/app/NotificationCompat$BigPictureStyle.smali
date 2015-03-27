.class public Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# instance fields
.field mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 611
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 612
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 2
    .parameter

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 615
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 616
    return-void
.end method


# virtual methods
.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .registers 2
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 638
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .registers 2
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 624
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .registers 3
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    .line 633
    return-object p0
.end method
