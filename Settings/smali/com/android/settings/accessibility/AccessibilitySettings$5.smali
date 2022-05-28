.class Lcom/android/settings/accessibility/AccessibilitySettings$5;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    const-string v1, "accessibility_display_magnification_enabled"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$600(Lcom/android/settings/accessibility/AccessibilitySettings;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 254
    return-void
.end method
