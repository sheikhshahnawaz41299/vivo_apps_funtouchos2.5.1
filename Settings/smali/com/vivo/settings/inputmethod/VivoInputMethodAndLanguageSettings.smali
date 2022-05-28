.class public Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoInputMethodAndLanguageSettings.java"


# static fields
.field private static final DLG_INPUT_METHOD_CHECK_CONFIRM:I = 0x0

.field private static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"

.field private static final KEY_KEYBOARD_SETTINGS_CATEGORY:Ljava/lang/String; = "keyboard_settings_category"

.field private static final MSG_SET_ENABLED_INPUT_METHOD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InputMethodAndLanguageSettings"


# instance fields
.field private mCheckboxDealwith:Landroid/preference/CheckBoxPreference;

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
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mIsOkClicked:Z

    .line 62
    new-instance v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$1;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$2;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->updateCurrentIme()V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->setEnabledInputMethods()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mIsOkClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mIsOkClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mCheckboxDealwith:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
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
    .locals 12

    .prologue
    .line 307
    const-string v9, "InputMethodAndLanguageSettings"

    const-string v10, "setEnabledInputMethods"

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 314
    .local v2, "firstEnabled":I
    iget-object v9, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    if-nez v9, :cond_3

    const/4 v0, 0x0

    .line 315
    .local v0, "N":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 316
    iget-object v9, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 317
    .local v7, "property":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 320
    .local v6, "pref":Landroid/preference/CheckBoxPreference;
    invoke-direct {p0, v7}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v8

    .line 321
    .local v8, "systemIme":Z
    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    if-nez v8, :cond_0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 323
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 324
    const/16 v9, 0x3a

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    if-gez v2, :cond_2

    .line 327
    move v2, v3

    .line 315
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "pref":Landroid/preference/CheckBoxPreference;
    .end local v7    # "property":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "systemIme":Z
    :cond_3
    iget-object v9, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 342
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_4
    const-string v9, "InputMethodAndLanguageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setEnabledInputMethods mLastInputMethodId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->updateCurrentIme()V

    .line 347
    const-string v9, "InputMethodAndLanguageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setEnabledInputMethods final mLastInputMethodId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "newEnabledImes":Ljava/lang/String;
    const-string v9, "InputMethodAndLanguageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newEnabledImes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_input_methods"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_input_method"

    iget-object v9, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    :goto_2
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 361
    return-void

    .line 358
    :cond_5
    const-string v9, ""

    goto :goto_2
.end method

.method private updateCurrentIme()V
    .locals 10

    .prologue
    .line 371
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 372
    const-string v5, "InputMethodAndLanguageSettings"

    const-string v6, "mLastInputMethodId=null return"

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

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

    .line 376
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 377
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 379
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 381
    .local v1, "imLable":Ljava/lang/CharSequence;
    if-eqz v3, :cond_4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

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

    .line 387
    .local v4, "summary":Ljava/lang/CharSequence;
    :goto_2
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mCurrentInputMethod:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 381
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
    .locals 8

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "enabledIME":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 293
    const-string v5, "InputMethodAndLanguageSettings"

    const-string v6, "enabledIME=null return"

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void

    .line 296
    :cond_1
    const-string v5, "InputMethodAndLanguageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enabledIME="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

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

    .line 298
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 300
    .local v0, "checkBoxPreference":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateImePrefs(Landroid/preference/PreferenceGroup;)V
    .locals 19
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 242
    const-string v14, "InputMethodAndLanguageSettings"

    const-string v15, "updateImePrefs root=null return"

    invoke-static {v14, v15}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    if-nez v14, :cond_5

    const/4 v1, 0x0

    .line 247
    .local v1, "N":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 249
    .local v5, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "prefKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 251
    .local v7, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v13

    .line 252
    .local v13, "systemIME":Z
    invoke-static {}, Lcom/vivo/settings/Vlog;->getLogEnable()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 253
    const-string v14, "InputMethodAndLanguageSettings"

    const-string v15, "i=%s,pefKey=%s,settingsActivity=%s"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    const/16 v17, 0x2

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_2
    const/4 v14, 0x1

    if-le v1, v14, :cond_3

    if-nez v13, :cond_3

    .line 256
    new-instance v2, Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v2, v14}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 258
    .local v2, "checkBoxPref":Landroid/preference/CheckBoxPreference;
    const v14, 0x3030001

    invoke-virtual {v2, v14}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 259
    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 265
    .end local v2    # "checkBoxPref":Landroid/preference/CheckBoxPreference;
    :cond_3
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 266
    new-instance v9, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v9, v14, v15}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 267
    .local v9, "pref":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, "settingsActivity":Ljava/lang/String;
    const-string v8, ""

    .line 269
    .local v8, "packageName":Ljava/lang/String;
    const-string v3, ""

    .line 270
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 272
    .local v12, "slash":I
    if-gez v12, :cond_6

    .line 273
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 274
    move-object v3, v11

    .line 275
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

    .line 281
    :goto_2
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v8, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 284
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    .end local v3    # "className":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pref":Landroid/preference/Preference;
    .end local v11    # "settingsActivity":Ljava/lang/String;
    .end local v12    # "slash":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 246
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "label":Ljava/lang/CharSequence;
    .end local v10    # "prefKey":Ljava/lang/String;
    .end local v13    # "systemIME":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_0

    .line 278
    .restart local v1    # "N":I
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v7    # "label":Ljava/lang/CharSequence;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "pref":Landroid/preference/Preference;
    .restart local v10    # "prefKey":Ljava/lang/String;
    .restart local v11    # "settingsActivity":Ljava/lang/String;
    .restart local v12    # "slash":I
    .restart local v13    # "systemIME":Z
    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 279
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "InputMethodAndLanguageSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 89
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    const-string v0, "current_input_method"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mCurrentInputMethod:Landroid/preference/Preference;

    .line 91
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mImePrefs:Landroid/preference/PreferenceCategory;

    .line 92
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    const/4 v6, 0x0

    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 237
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 203
    :pswitch_0
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03d8

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 210
    const v1, 0x104000a

    new-instance v2, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$3;

    invoke-direct {v2, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$3;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$4;

    invoke-direct {v2, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$4;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    new-instance v1, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$5;

    invoke-direct {v1, p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$5;-><init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V

    invoke-virtual {p0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "InputMethodAndLanguageSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "InputMethodAndLanguageSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 138
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 150
    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick preference:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mCurrentInputMethod:Landroid/preference/Preference;

    if-ne p2, v6, :cond_0

    .line 152
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 195
    .end local p2    # "preference":Landroid/preference/Preference;
    :goto_0
    return v5

    .line 154
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    .line 155
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mCheckboxDealwith:Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mCheckboxDealwith:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mCheckboxDealwith:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    iput-object v9, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 159
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 160
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 161
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 162
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    iput-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 164
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v6}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->isSystemIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->setEnabledInputMethods()V

    .line 166
    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSystemIME return"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    .end local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v6, :cond_3

    .line 172
    const-string v6, "InputMethodAndLanguageSettings"

    const-string v7, "didn\'t match return"

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectInputMethodInfo is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mSelectInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v10}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 179
    iput-object v9, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 181
    :cond_5
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->setEnabledInputMethods()V

    goto/16 :goto_0

    .line 185
    .end local v3    # "id":Ljava/lang/String;
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 187
    :try_start_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to start a sub screen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b0825

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->showBBKBackButton()V

    .line 98
    const v4, 0x7f0b084a

    invoke-virtual {p0, v4}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->setTitle(I)V

    .line 99
    iget-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    .line 101
    iget-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    if-nez v4, :cond_2

    move v0, v3

    .line 102
    .local v0, "N":I
    :goto_0
    const-string v4, "InputMethodAndLanguageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number of imes is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 105
    iget-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 106
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {}, Lcom/vivo/settings/Vlog;->getLogEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const-string v4, "InputMethodAndLanguageSettings"

    const-string v5, "i=%s,flag is %s, packageName is %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 111
    const-string v4, "InputMethodAndLanguageSettings"

    const-string v5, "make current ime to first loc"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v4, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mInputMethodInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 117
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 118
    const-string v3, "InputMethodAndLanguageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastInputMethodId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 120
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->updateCurrentIme()V

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mImePrefs:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v3}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->updateImePrefs(Landroid/preference/PreferenceGroup;)V

    .line 123
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->updateIMECheck()V

    .line 124
    iget-object v3, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    :cond_5
    invoke-direct {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->setEnabledInputMethods()V

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 131
    return-void
.end method
