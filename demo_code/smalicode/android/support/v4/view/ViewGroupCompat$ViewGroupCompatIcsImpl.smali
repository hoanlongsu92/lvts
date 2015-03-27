.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.source "ViewGroupCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewGroupCompatIcs;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
