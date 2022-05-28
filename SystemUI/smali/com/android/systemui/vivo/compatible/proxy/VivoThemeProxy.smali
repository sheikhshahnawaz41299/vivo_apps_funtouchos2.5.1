.class public Lcom/android/systemui/vivo/compatible/proxy/VivoThemeProxy;
.super Ljava/lang/Object;
.source "VivoThemeProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSystemIcon(Landroid/content/res/Resources;I)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/vivo/content/VivoTheme;->isSystemIcon(Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method
