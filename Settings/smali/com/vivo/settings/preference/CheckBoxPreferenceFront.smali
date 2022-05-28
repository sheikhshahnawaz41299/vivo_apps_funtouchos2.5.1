.class public Lcom/vivo/settings/preference/CheckBoxPreferenceFront;
.super Landroid/preference/Preference;
.source "CheckBoxPreferenceFront.java"


# instance fields
.field private isChecked:Z

.field private mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    .line 29
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->setLayoutResource(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    .line 24
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->setLayoutResource(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    .line 19
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->setLayoutResource(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    .line 36
    iget-object v1, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->toggle()V

    .line 61
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 62
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    .line 49
    iget-object v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    .line 42
    iget-object v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    :cond_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
