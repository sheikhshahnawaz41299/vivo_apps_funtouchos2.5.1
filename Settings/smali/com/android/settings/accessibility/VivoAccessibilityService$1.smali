.class Lcom/android/settings/accessibility/VivoAccessibilityService$1;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "VivoAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VivoAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VivoAccessibilityService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VivoAccessibilityService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/accessibility/VivoAccessibilityService$1;->this$0:Lcom/android/settings/accessibility/VivoAccessibilityService;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoAccessibilityService$1;->this$0:Lcom/android/settings/accessibility/VivoAccessibilityService;

    invoke-static {v2}, Lcom/android/settings/accessibility/VivoAccessibilityService;->access$000(Lcom/android/settings/accessibility/VivoAccessibilityService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "settingValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoAccessibilityService$1;->this$0:Lcom/android/settings/accessibility/VivoAccessibilityService;

    invoke-static {v2}, Lcom/android/settings/accessibility/VivoAccessibilityService;->access$100(Lcom/android/settings/accessibility/VivoAccessibilityService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 81
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoAccessibilityService$1;->this$0:Lcom/android/settings/accessibility/VivoAccessibilityService;

    invoke-static {v2}, Lcom/android/settings/accessibility/VivoAccessibilityService;->access$200(Lcom/android/settings/accessibility/VivoAccessibilityService;)Landroid/preference/VivoCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 83
    const-string v2, "VivoAccessibilityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSettingsContentObserver enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
