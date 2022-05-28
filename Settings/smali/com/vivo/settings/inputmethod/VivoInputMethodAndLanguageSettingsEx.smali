.class public Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoInputMethodAndLanguageSettingsEx.java"


# static fields
.field private static final DLG_INPUT_METHOD_CHECK_CONFIRM:I = 0x0

.field private static final MSG_SET_ENABLED_INPUT_METHOD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InputMethodAndLanguageSettings"


# instance fields
.field public mAreaEntity:Lcom/vivo/settings/AreaEntity;

.field private mCheckboxDealwith:Landroid/preference/VivoCheckBoxPreference;

.field private mCurrentInputMethod:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImePrefs:Landroid/preference/PreferenceCategory;

.field private mInputMethodInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsOkClicked:Z

.field private mLastInputMethodId:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 52
    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    .line 53
    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCurrentInputMethod:Landroid/preference/Preference;

    .line 54
    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mImePrefs:Landroid/preference/PreferenceCategory;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mIsOkClicked:Z

    .line 57
    new-instance v0, Lcom/vivo/settings/AreaEntity;

    invoke-direct {v0}, Lcom/vivo/settings/AreaEntity;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    .line 59
    new-instance v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$1;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$2;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCheckboxDealwith:Landroid/preference/VivoCheckBoxPreference;

    .line 151
    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    return-void
.end method

.method static synthetic access$002(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->updateCurrentIme()V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->setEnabledInputMethods()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mIsOkClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mIsOkClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCheckboxDealwith:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method private isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setEnabledInputMethods()V
    .locals 13

    .prologue
    .line 297
    const-string v10, "InputMethodAndLanguageSettings"

    const-string v11, "setEnabledInputMethods"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 303
    .local v2, "firstEnabled":I
    const/4 v6, 0x0

    .line 304
    .local v6, "isContainsDefaultMethod":Z
    iget-object v10, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    if-nez v10, :cond_3

    const/4 v0, 0x0

    .line 305
    .local v0, "N":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 306
    iget-object v10, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 307
    .local v8, "property":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/VivoCheckBoxPreference;

    .line 309
    .local v7, "pref":Landroid/preference/VivoCheckBoxPreference;
    iget-object v10, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 310
    .local v3, "hasIt":Z
    invoke-direct {p0, v8}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    .line 311
    .local v9, "systemIme":Z
    const/4 v10, 0x1

    if-eq v0, v10, :cond_0

    if-nez v9, :cond_0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 313
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 314
    const/16 v10, 0x3a

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    if-gez v2, :cond_2

    .line 317
    move v2, v4

    .line 305
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "N":I
    .end local v3    # "hasIt":Z
    .end local v4    # "i":I
    .end local v5    # "id":Ljava/lang/String;
    .end local v7    # "pref":Landroid/preference/VivoCheckBoxPreference;
    .end local v8    # "property":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "systemIme":Z
    :cond_3
    iget-object v10, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 332
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    :cond_4
    const-string v10, "InputMethodAndLanguageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setEnabledInputMethods mLastInputMethodId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->updateCurrentIme()V

    .line 337
    const-string v10, "InputMethodAndLanguageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setEnabledInputMethods final mLastInputMethodId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_input_methods"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_input_method"

    iget-object v10, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    return-void

    .line 346
    :cond_5
    const-string v10, ""

    goto :goto_2
.end method

.method private updateCurrentIme()V
    .locals 10

    .prologue
    .line 359
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 362
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 365
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 367
    .local v1, "imLable":Ljava/lang/CharSequence;
    if-eqz v3, :cond_4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ""

    :goto_1
    aput-object v5, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 373
    .local v4, "summary":Ljava/lang/CharSequence;
    :goto_2
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCurrentInputMethod:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v4, v1

    goto :goto_2
.end method

.method private updateIMECheck()V
    .locals 7

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "enabledIME":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 294
    :cond_0
    return-void

    .line 287
    :cond_1
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 288
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    .line 290
    .local v0, "checkBoxPreference":Landroid/preference/VivoCheckBoxPreference;
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateImePrefs(Landroid/preference/PreferenceGroup;)V
    .locals 16
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 280
    :cond_0
    return-void

    .line 240
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    if-nez v14, :cond_4

    const/4 v1, 0x0

    .line 242
    .local v1, "N":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 244
    .local v5, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "prefKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 246
    .local v7, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v13

    .line 247
    .local v13, "systemIME":Z
    const/4 v14, 0x1

    if-le v1, v14, :cond_2

    if-nez v13, :cond_2

    .line 248
    new-instance v2, Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v2, v14}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 250
    .local v2, "checkBoxPref":Landroid/preference/VivoCheckBoxPreference;
    const v14, 0x3030001

    invoke-virtual {v2, v14}, Landroid/preference/VivoCheckBoxPreference;->setLayoutResource(I)V

    .line 251
    invoke-virtual {v2, v9}, Landroid/preference/VivoCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, v7}, Landroid/preference/VivoCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/preference/VivoCheckBoxPreference;->setPersistent(Z)V

    .line 254
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    .end local v2    # "checkBoxPref":Landroid/preference/VivoCheckBoxPreference;
    :cond_2
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 258
    new-instance v10, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v10, v14, v15}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    .local v10, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, "settingsActivity":Ljava/lang/String;
    const-string v8, ""

    .line 262
    .local v8, "packageName":Ljava/lang/String;
    const-string v3, ""

    .line 263
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 265
    .local v12, "slash":I
    if-gez v12, :cond_5

    .line 266
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 267
    move-object v3, v11

    .line 268
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 274
    :goto_2
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v8, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {v10, v6}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 277
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    .end local v3    # "className":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "prefScreen":Landroid/preference/PreferenceScreen;
    .end local v11    # "settingsActivity":Ljava/lang/String;
    .end local v12    # "slash":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 241
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "label":Ljava/lang/CharSequence;
    .end local v9    # "prefKey":Ljava/lang/String;
    .end local v13    # "systemIME":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_0

    .line 271
    .restart local v1    # "N":I
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v7    # "label":Ljava/lang/CharSequence;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "prefKey":Ljava/lang/String;
    .restart local v10    # "prefScreen":Landroid/preference/PreferenceScreen;
    .restart local v11    # "settingsActivity":Ljava/lang/String;
    .restart local v12    # "slash":I
    .restart local v13    # "systemIME":Z
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 272
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->addPreferencesFromResource(I)V

    .line 82
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 83
    const-string v1, "current_input_method"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCurrentInputMethod:Landroid/preference/Preference;

    .line 84
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "phone_area"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->removePreference(Landroid/preference/Preference;)V

    .line 87
    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->removePreference(Landroid/preference/Preference;)V

    .line 88
    const-string v1, "keyboard_inputmethod_category"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->removePreference(Landroid/preference/Preference;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "areaCode":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 93
    const-string v1, "phone_area"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->removePreference(Landroid/preference/Preference;)V

    .line 95
    :cond_1
    const-string v1, "keyboard_settings_category"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mImePrefs:Landroid/preference/PreferenceCategory;

    .line 96
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    const/4 v6, 0x0

    .line 197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 234
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 200
    :pswitch_0
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03d8

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 207
    const v1, 0x104000a

    new-instance v2, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$3;

    invoke-direct {v2, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$3;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$4;

    invoke-direct {v2, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$4;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    new-instance v1, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$5;

    invoke-direct {v1, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$5;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 148
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 156
    const-string v5, "InputMethodAndLanguageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick preference:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCurrentInputMethod:Landroid/preference/Preference;

    if-ne p2, v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 190
    .end local p2    # "preference":Landroid/preference/Preference;
    :goto_0
    return v4

    .line 160
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_6

    .line 161
    check-cast p2, Landroid/preference/VivoCheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCheckboxDealwith:Landroid/preference/VivoCheckBoxPreference;

    .line 162
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCheckboxDealwith:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/VivoCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mCheckboxDealwith:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    iput-object v8, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 165
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 166
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 167
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 168
    .local v3, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    iput-object v3, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 170
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->setEnabledInputMethods()V

    .line 172
    const-string v5, "InputMethodAndLanguageSettings"

    const-string v6, "isSystemIME return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    .end local v3    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v5, :cond_3

    .line 178
    const-string v5, "InputMethodAndLanguageSettings"

    const-string v6, "didn\'t match return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->showDialog(I)V

    goto :goto_0

    .line 183
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 184
    iput-object v8, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    .line 186
    :cond_5
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->setEnabledInputMethods()V

    goto :goto_0

    .line 190
    .end local v2    # "id":Ljava/lang/String;
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 101
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->showBBKBackButton()V

    .line 103
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v5

    if-nez v5, :cond_2

    .line 104
    const v5, 0x7f0b084a

    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->setTitle(I)V

    .line 108
    :goto_0
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mInputMethodInfos:Ljava/util/List;

    .line 109
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    .line 111
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->updateCurrentIme()V

    .line 114
    :cond_0
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mImePrefs:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->updateImePrefs(Landroid/preference/PreferenceGroup;)V

    .line 115
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->updateIMECheck()V

    .line 117
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vivo/settings/AreaEntity;->getAreas(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "areas":[Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mAreaEntity:Lcom/vivo/settings/AreaEntity;

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vivo/settings/AreaEntity;->getAreaCodes(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "areaCode":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 124
    .local v4, "int_cur_locale_postion":I
    const-string v5, "persist.sys.vivo.product.cust"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "countside":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 126
    aget-object v5, v0, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    move v4, v3

    .line 125
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "areaCode":[Ljava/lang/String;
    .end local v1    # "areas":[Ljava/lang/String;
    .end local v2    # "countside":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "int_cur_locale_postion":I
    :cond_2
    const v5, 0x7f0b03d3

    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->setTitle(I)V

    goto :goto_0

    .line 130
    .restart local v0    # "areaCode":[Ljava/lang/String;
    .restart local v1    # "areas":[Ljava/lang/String;
    .restart local v2    # "countside":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "int_cur_locale_postion":I
    :cond_3
    const-string v5, "phone_area"

    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 131
    const-string v5, "phone_area"

    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    :cond_4
    const-string v5, "phone_language"

    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 134
    const-string v5, "phone_language"

    invoke-virtual {p0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/settings/VivoLocalePicker;->getCurrentDisplayLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    :cond_5
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->mLastInputMethodId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "eng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 137
    :cond_6
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->setEnabledInputMethods()V

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->updateDefaultDateFormat()V

    .line 140
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 141
    return-void
.end method

.method public updateDefaultDateFormat()V
    .locals 7

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "dateFormats":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "currFormat":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 385
    .local v2, "listDateFormats":Ljava/util/List;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 389
    .local v3, "sFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "InputMethodAndLanguageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultDateFormat to sFormat.toPattern() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currFormat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    .end local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method
