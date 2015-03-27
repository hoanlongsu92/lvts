.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    .line 754
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 755
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 756
    return-void
.end method
