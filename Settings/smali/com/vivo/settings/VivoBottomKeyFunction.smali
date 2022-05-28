.class public Lcom/vivo/settings/VivoBottomKeyFunction;
.super Lcom/vivo/settings/VivoSettingsBaseActivity;
.source "VivoBottomKeyFunction.java"


# static fields
.field private static final BOTTOM_KEY_VALUE:Ljava/lang/String; = "virtural_key_mode"

.field private static final TAG:Ljava/lang/String; = "VivoBottomKeyFunction"


# instance fields
.field private mLeftRadioButton:Landroid/widget/RadioButton;

.field private mRightRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public leftRadioClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/vivo/settings/VivoBottomKeyFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "virtural_key_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0400ec

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoBottomKeyFunction;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/vivo/settings/VivoBottomKeyFunction;->showBBKBackButton()V

    .line 24
    const v0, 0x7f0b0981

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoBottomKeyFunction;->setTitle(I)V

    .line 25
    const v0, 0x7f0e0247

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoBottomKeyFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 26
    const v0, 0x7f0e024c

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoBottomKeyFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onResume()V

    .line 32
    invoke-virtual {p0}, Lcom/vivo/settings/VivoBottomKeyFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "virtural_key_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 33
    .local v0, "isNomal":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 34
    iget-object v3, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 35
    iget-object v1, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 40
    :goto_1
    return-void

    .end local v0    # "isNomal":Z
    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    .line 37
    .restart local v0    # "isNomal":Z
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 38
    iget-object v2, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public rightRadioClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/settings/VivoBottomKeyFunction;->mLeftRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/vivo/settings/VivoBottomKeyFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "virtural_key_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    return-void
.end method
