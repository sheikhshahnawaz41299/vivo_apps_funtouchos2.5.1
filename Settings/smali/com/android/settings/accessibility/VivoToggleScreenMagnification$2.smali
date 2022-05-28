.class Lcom/android/settings/accessibility/VivoToggleScreenMagnification$2;
.super Landroid/database/ContentObserver;
.source "VivoToggleScreenMagnification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VivoToggleScreenMagnification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VivoToggleScreenMagnification;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$2;->this$0:Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$2;->this$0:Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    invoke-static {v0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->access$000(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)V

    .line 114
    return-void
.end method
