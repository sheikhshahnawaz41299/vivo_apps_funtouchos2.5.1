.class public Lcom/vivo/settings/preference/RadioPreference;
.super Landroid/preference/Preference;
.source "RadioPreference.java"


# instance fields
.field isChecked:Z

.field private mDivider:Landroid/view/View;

.field private mIsShowDivider:Z

.field mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/preference/RadioPreference;->isChecked:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mIsShowDivider:Z

    .line 31
    const v0, 0x7f0400b1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/RadioPreference;->setLayoutResource(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/preference/RadioPreference;->isChecked:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mIsShowDivider:Z

    .line 26
    const v0, 0x7f0400b1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/RadioPreference;->setLayoutResource(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/preference/RadioPreference;->isChecked:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mIsShowDivider:Z

    .line 21
    const v0, 0x7f0400b1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/RadioPreference;->setLayoutResource(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e01d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 38
    iget-object v1, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/vivo/settings/preference/RadioPreference;->isChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 42
    :cond_0
    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/preference/RadioPreference;->mDivider:Landroid/view/View;

    .line 43
    iget-object v1, p0, Lcom/vivo/settings/preference/RadioPreference;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/vivo/settings/preference/RadioPreference;->mDivider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/vivo/settings/preference/RadioPreference;->mIsShowDivider:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_1
    return-object v0

    .line 44
    :cond_2
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vivo/settings/preference/RadioPreference;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/vivo/settings/preference/RadioPreference;->isChecked:Z

    .line 60
    iget-object v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/vivo/settings/preference/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/vivo/settings/preference/RadioPreference;->isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vivo/settings/preference/RadioPreference;->mIsShowDivider:Z

    .line 52
    return-void
.end method
