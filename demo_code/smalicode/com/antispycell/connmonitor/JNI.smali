.class public Lcom/antispycell/connmonitor/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# static fields
.field private static a:Lcom/antispycell/connmonitor/JNI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/antispycell/connmonitor/JNI;->a:Lcom/antispycell/connmonitor/JNI;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/antispycell/connmonitor/JNI;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/antispycell/connmonitor/JNI;->a:Lcom/antispycell/connmonitor/JNI;

    if-nez v0, :cond_10

    .line 12
    const-string v0, "netmonitor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/antispycell/connmonitor/JNI;

    invoke-direct {v0}, Lcom/antispycell/connmonitor/JNI;-><init>()V

    sput-object v0, Lcom/antispycell/connmonitor/JNI;->a:Lcom/antispycell/connmonitor/JNI;

    .line 16
    :cond_10
    sget-object v0, Lcom/antispycell/connmonitor/JNI;->a:Lcom/antispycell/connmonitor/JNI;

    return-object v0
.end method

.method public static b()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/antispycell/connmonitor/JNI;->a:Lcom/antispycell/connmonitor/JNI;

    if-nez v0, :cond_a

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 23
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public native GetCounts()I
.end method

.method public native GetLocalIP(I)Ljava/lang/String;
.end method

.method public native GetLocalPort(I)I
.end method

.method public native GetProtocol(I)Ljava/lang/String;
.end method

.method public native GetRX(I)I
.end method

.method public native GetRemoteHost(I)Ljava/lang/String;
.end method

.method public native GetRemoteIP(I)Ljava/lang/String;
.end method

.method public native GetRemotePort(I)I
.end method

.method public native GetSND(I)I
.end method

.method public native GetStatus(I)Ljava/lang/String;
.end method

.method public native GetUID(I)I
.end method

.method public native SetNetworkIP6To4(I)I
.end method

.method public native ncData()I
.end method

.method public native ncDataLoad()I
.end method

.method public native ncDataTime(I)I
.end method

.method public native ncRefresh()I
.end method

.method public native ncStart()I
.end method

.method public native ncStop()I
.end method
