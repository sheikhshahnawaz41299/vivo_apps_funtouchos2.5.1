.class Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/vivo/settings/widget/VivoToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/vivo/settings/widget/VivoToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p1, p2}, Lcom/vivo/settings/widget/VivoToggleSwitch;->setCheckedInternal(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_captioning_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$200(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$300(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->access$300(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v2

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 251
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 243
    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
