.class public Lcom/android/settings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"

# interfaces
.implements Landroid/preference/VivoPreferenceBackground;


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mIsShowDivider:Z

.field private mRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsShowDivider:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3010004

    invoke-static {v0, v1}, Lvivo/util/VivoThemeUtil;->getAttributeResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mRes:I

    .line 45
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 48
    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public SetRes(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/settings/accounts/ProviderPreference;->mRes:I

    .line 64
    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundRes()I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getRes()I

    move-result v0

    return v0
.end method

.method public getRes()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mRes:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 74
    const v1, 0x7f0e0009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "dividerView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsShowDivider:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsShowDivider:Z

    .line 68
    return-void
.end method
