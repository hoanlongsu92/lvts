.class final Landroid/support/v4/app/BackStackState$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackState;
    .registers 3
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/support/v4/app/BackStackState;

    invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/support/v4/app/BackStackState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackState;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Landroid/support/v4/app/BackStackState;
    .registers 3
    .parameter

    .prologue
    .line 161
    new-array v0, p1, [Landroid/support/v4/app/BackStackState;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/support/v4/app/BackStackState$1;->newArray(I)[Landroid/support/v4/app/BackStackState;

    move-result-object v0

    return-object v0
.end method
