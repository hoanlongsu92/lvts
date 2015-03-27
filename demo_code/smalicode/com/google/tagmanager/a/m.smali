.class public final Lcom/google/tagmanager/a/m;
.super Ljava/io/IOException;
.source "CodedOutputStream.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 990
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 992
    return-void
.end method
