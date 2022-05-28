.class public Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VivoSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/vivo/settings/ISettingsCommonTitle;


# static fields
.field private static final DLG_ID_NO_ID:I = -0x3039

.field private static final TAG:Ljava/lang/String; = "VivoSettingsPreferenceFragment"


# instance fields
.field private mNeedSwitchToPref:Z

.field private mPreparedDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 28
    const/16 v0, -0x3039

    iput v0, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mPreparedDialogId:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mNeedSwitchToPref:Z

    return-void
.end method

.method private getBaseActivity()Lcom/vivo/app/VivoBaseActivity;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 162
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/vivo/app/VivoBaseActivity;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Lcom/vivo/app/VivoBaseActivity;

    .line 165
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTopBottomView(Landroid/content/Context;Landroid/widget/ListView;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040096

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 268
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {}, Lcom/android/settings/AppFeature;->getPixelPerDip()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 271
    return-object v1
.end method

.method public static updateList(Landroid/app/ListActivity;)V
    .locals 2
    .param p0, "listActivity"    # Landroid/app/ListActivity;

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 280
    const-string v0, "VivoSettingsPreferenceFragment"

    const-string v1, "preferenceActivity is null when updatePreferenceList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->updatePreferenceList(Landroid/content/Context;Landroid/widget/ListView;)V

    goto :goto_0
.end method

.method public static updateListAddTopBottom(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 295
    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 296
    invoke-static {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getTopBottomView(Landroid/content/Context;Landroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 297
    invoke-static {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getTopBottomView(Landroid/content/Context;Landroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 298
    return-void
.end method

.method public static updatePreferenceList(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 289
    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 290
    return-void
.end method


# virtual methods
.method protected addPreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 75
    :cond_0
    return-void
.end method

.method protected addPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->addPreference(Landroid/preference/Preference;)V

    .line 69
    return-void
.end method

.method protected varargs addPreferences([Landroid/preference/Preference;)V
    .locals 4
    .param p1, "prefs"    # [Landroid/preference/Preference;

    .prologue
    .line 78
    move-object v0, p1

    .local v0, "arr$":[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 79
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->addPreference(Landroid/preference/Preference;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method protected varargs addPreferences([Ljava/lang/String;)V
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 84
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 85
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->addPreference(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 150
    :try_start_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "VivoSettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException at finish()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getLayoutResouce()I
    .locals 1

    .prologue
    .line 232
    const v0, 0x7f04006b

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 239
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 240
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 242
    invoke-static {v0, v1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->updatePreferenceList(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 246
    :goto_0
    return-object v2

    .line 244
    :cond_0
    const-string v3, "VivoSettingsPreferenceFragment"

    const-string v4, "getActivity is null in onCreateView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/16 v1, -0x3039

    .line 33
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 34
    iget v0, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mPreparedDialogId:I

    if-eq v0, v1, :cond_0

    .line 35
    iget v0, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mPreparedDialogId:I

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->showDialog(I)V

    .line 36
    iput v1, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mPreparedDialogId:I

    .line 38
    :cond_0
    return-void
.end method

.method public onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 194
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 225
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 53
    const/16 v0, -0x3039

    iput v0, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mPreparedDialogId:I

    .line 54
    return-void
.end method

.method protected removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    :cond_0
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->removePreference(Landroid/preference/Preference;)V

    .line 59
    return-void
.end method

.method protected varargs removePreferences([Landroid/preference/Preference;)V
    .locals 4
    .param p1, "prefs"    # [Landroid/preference/Preference;

    .prologue
    .line 90
    move-object v0, p1

    .local v0, "arr$":[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 91
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->removePreference(Landroid/preference/Preference;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method protected varargs removePreferences([Ljava/lang/String;)V
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 96
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 97
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setPrefSummary(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "summaryRes"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    .line 113
    :cond_0
    return-void
.end method

.method protected setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 103
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-void
.end method

.method public showBBKBackButton()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 134
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleLeftButton()V

    .line 136
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonIcon(I)V

    .line 137
    new-instance v1, Lcom/vivo/settings/VivoSettingsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment$1;-><init>(Lcom/vivo/settings/VivoSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 44
    const/16 v0, -0x3039

    iput v0, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mPreparedDialogId:I

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput p1, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mPreparedDialogId:I

    goto :goto_0
.end method

.method public showTitleLeftButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->showTitleLeftButton(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public showTitleLeftButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 174
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleLeftButton()V

    .line 176
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    return-void
.end method

.method public showTitleRightButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public showTitleRightButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 205
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleRightButton()V

    .line 207
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    return-void
.end method

.method public switchToSearchPref()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 250
    iget-boolean v3, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mNeedSwitchToPref:Z

    if-eqz v3, :cond_0

    .line 251
    iput-boolean v5, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->mNeedSwitchToPref:Z

    .line 252
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/vivo/settings/xml/ItemUtils;->getExtraPreferenceIndex(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/content/Intent;)I

    move-result v1

    .line 255
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 256
    .local v2, "listView":Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 261
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "index":I
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return v5
.end method
