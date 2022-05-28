.class public Lcom/vivo/settings/widget/VivoToggleSwitch;
.super Landroid/preference/VivoCheckBoxPreference;
.source "VivoToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/settings/widget/VivoToggleSwitch;->mOnBeforeListener:Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/widget/VivoToggleSwitch;->mOnBeforeListener:Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/vivo/settings/widget/VivoToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 59
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vivo/settings/widget/VivoToggleSwitch;->mOnBeforeListener:Lcom/vivo/settings/widget/VivoToggleSwitch$OnBeforeCheckedChangeListener;

    .line 46
    return-void
.end method
