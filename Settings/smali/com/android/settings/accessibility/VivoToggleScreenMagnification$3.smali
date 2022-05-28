.class Lcom/android/settings/accessibility/VivoToggleScreenMagnification$3;
.super Ljava/lang/Object;
.source "VivoToggleScreenMagnification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->showPerformanceAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VivoToggleScreenMagnification;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$3;->this$0:Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$3;->this$0:Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    invoke-static {v0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->access$100(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$3;->this$0:Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    invoke-static {v0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->access$200(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)Landroid/preference/VivoCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
