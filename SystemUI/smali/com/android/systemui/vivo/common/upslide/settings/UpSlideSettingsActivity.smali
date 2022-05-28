.class public Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "UpSlideSettingsActivity.java"


# instance fields
.field private mEnableInAppCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f040084

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->addPreferencesFromResource(I)V

    .line 28
    const v2, 0x7f11026a

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/BbkTitleView;

    .line 29
    .local v1, "title":Lcom/vivo/common/BbkTitleView;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/common/BbkTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 30
    const-string v2, ""

    const/4 v3, 0x2

    new-instance v4, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity$1;-><init>(Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/common/BbkTitleView;->initLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v1}, Lcom/vivo/common/BbkTitleView;->showLeftButton()V

    .line 37
    invoke-virtual {v1, v5}, Lcom/vivo/common/BbkTitleView;->setLeftButtonEnable(Z)V

    .line 39
    const-string v2, "enable_in_app"

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->mEnableInAppCheckBox:Landroid/preference/CheckBoxPreference;

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "enable_in_app"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    .local v0, "enable":Z
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->mEnableInAppCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->mEnableInAppCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->mEnableInAppCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 50
    .local v1, "isChecked":Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "vivo.intent.action.ENABLE_IN_APP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enable_in_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/settings/UpSlideSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isChecked":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method
