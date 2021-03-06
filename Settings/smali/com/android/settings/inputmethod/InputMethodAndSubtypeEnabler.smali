.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAutoSelectionPrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/TwoStatePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCollator:Ljava/text/Collator;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/text/Collator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private addInputMethodSubtypePreferences(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V
    .locals 19
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 159
    .local v5, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v14

    .line 160
    .local v14, "subtypeCount":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v14, v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "imiId":Ljava/lang/String;
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-direct {v8, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 165
    .local v8, "keyboardSettingsCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 167
    .local v10, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 169
    .local v9, "label":Ljava/lang/CharSequence;
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 172
    new-instance v3, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;

    invoke-direct {v3, v5}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 173
    .local v3, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, "activeInputMethodsCategory":Landroid/preference/PreferenceCategory;
    const v17, 0x7f0b0406

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 179
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    const/4 v4, 0x0

    .line 182
    .local v4, "autoSubtypeLabel":Ljava/lang/CharSequence;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v16, "subtypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    if-ge v7, v14, :cond_3

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 185
    .local v13, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 186
    if-nez v4, :cond_1

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v5, v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 183
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 191
    :cond_2
    new-instance v15, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    move-object/from16 v0, p1

    invoke-direct {v15, v5, v13, v0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 193
    .local v15, "subtypePref":Landroid/preference/Preference;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    .end local v13    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v15    # "subtypePref":Landroid/preference/Preference;
    :cond_3
    new-instance v17, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 205
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 206
    .local v12, "prefCount":I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v12, :cond_4

    .line 207
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    .line 208
    .local v11, "pref":Landroid/preference/Preference;
    invoke-virtual {v2, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    invoke-static {v11}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 212
    .end local v11    # "pref":Landroid/preference/Preference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 214
    const v17, 0x7f0b0407

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setTitle(I)V

    goto/16 :goto_0

    .line 217
    :cond_5
    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 87
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "fromIntent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 92
    .end local v1    # "fromIntent":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 91
    .restart local v1    # "fromIntent":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 223
    .local v2, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 224
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/preference/TwoStatePreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    const/4 v3, 0x0

    .line 228
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "autoSelectionEnabled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 233
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 234
    .local v0, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 238
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 239
    .local v3, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 240
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_2

    .line 244
    if-nez p2, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 245
    if-eqz p2, :cond_2

    .line 246
    check-cast v2, Landroid/preference/TwoStatePreference;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-virtual {v2, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_3
    move v4, v6

    .line 244
    goto :goto_2

    .line 250
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_4
    if-eqz p2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v7, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v4, v6, v7}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 253
    invoke-direct {p0, p1, v5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateAutoSelectionPreferences()V
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    .local v1, "imiId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 303
    .end local v1    # "imiId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 304
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "targetImiId"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    .line 259
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 260
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "imiId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 264
    .local v0, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p1, :cond_0

    .line 268
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;Z)V

    goto :goto_0

    .line 271
    .end local v0    # "autoSelectionPref":Landroid/preference/TwoStatePreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "imiId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;Z)V
    .locals 12
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "check"    # Z

    .prologue
    const/4 v11, 0x1

    .line 274
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "imiId":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 276
    .local v8, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9, p1, v11}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 278
    .local v4, "implicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v8, :cond_0

    if-nez v4, :cond_1

    .line 297
    :cond_0
    return-void

    .line 281
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    .line 282
    .local v5, "pref":Landroid/preference/Preference;
    instance-of v9, v5, Landroid/preference/TwoStatePreference;

    if-eqz v9, :cond_2

    move-object v7, v5

    .line 285
    check-cast v7, Landroid/preference/TwoStatePreference;

    .line 286
    .local v7, "subtypePref":Landroid/preference/TwoStatePreference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    if-eqz p2, :cond_2

    .line 288
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 289
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "implicitlyEnabledSubtypePrefKey":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 291
    invoke-virtual {v7, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    const-string v1, "android.intent.extra.TITLE"

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 61
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 67
    const-string v6, "input_method_id"

    invoke-direct {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "targetImi":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    .line 71
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mCollator:Ljava/text/Collator;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 74
    .local v4, "root":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 75
    .local v2, "imiCount":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 76
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 78
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    :cond_0
    invoke-direct {p0, v1, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->addInputMethodSubtypePreferences(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V

    .line 75
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "imiCount":I
    .end local v3    # "index":I
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    .end local v5    # "targetImi":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 82
    .restart local v2    # "imiCount":I
    .restart local v3    # "index":I
    .restart local v4    # "root":Landroid/preference/PreferenceScreen;
    .restart local v5    # "targetImi":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 124
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 128
    instance-of v7, p2, Ljava/lang/Boolean;

    if-nez v7, :cond_1

    .line 153
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 131
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 132
    .local v3, "isChecking":Z
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "imiId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_2

    move-object v0, p1

    .line 135
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 136
    .local v0, "autoSelectionPref":Landroid/preference/TwoStatePreference;
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    move v5, v6

    .line 139
    goto :goto_0

    .line 143
    .end local v0    # "autoSelectionPref":Landroid/preference/TwoStatePreference;
    .end local v2    # "imiId":Ljava/lang/String;
    :cond_3
    instance-of v7, p1, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 144
    check-cast v4, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    .line 145
    .local v4, "subtypePref":Lcom/android/settings/inputmethod/InputMethodSubtypePreference;
    invoke-virtual {v4, v3}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    .line 146
    invoke-virtual {v4}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionPreferences()V

    :cond_4
    move v5, v6

    .line 151
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 109
    const-string v0, "InputMethodAndSubtypeEnabler"

    const-string v1, "onResume refreshAllInputMethodAndSubtypes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionPreferences()V

    .line 115
    return-void
.end method
