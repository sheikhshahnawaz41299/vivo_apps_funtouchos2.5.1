.class public Lcom/vivo/settings/OneHandSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "OneHandSettings.java"


# static fields
.field private static final KEY_DIAL_PAD:Ljava/lang/String; = "dial_pad"

.field private static final KEY_GESTURE_ENABLE:Ljava/lang/String; = "gesture_enable"

.field private static final KEY_GESTURE_EXPLAIN:Ljava/lang/String; = "gesture_explain"

.field private static final KEY_NEED_MINI_SCREEN_DEMO:Ljava/lang/String; = "need_mini_screen_demo"

.field private static final KEY_ONEHANDGESTURE:Ljava/lang/String; = "OneHandGesture"

.field private static final KEY_PIN_LOCK:Ljava/lang/String; = "pin_lock"

.field private static final KEY_VIVO_KEYBOARD:Ljava/lang/String; = "vivo_keyboard"

.field public static final SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OneHandSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialPad:Landroid/preference/CheckBoxPreference;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMiniScreenAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mMiniScreenDemoDialog:Landroid/app/AlertDialog;

.field private mMiniScreenGesture:Landroid/preference/CheckBoxPreference;

.field private mOnehandgesture:Landroid/preference/CheckBoxPreference;

.field private mOnehandkeyboardsummary:Landroid/preference/PreferenceCategory;

.field private mPinLock:Landroid/preference/CheckBoxPreference;

.field private mVivoKeyboard:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/vivo/settings/OneHandSettings$4;

    invoke-direct {v0}, Lcom/vivo/settings/OneHandSettings$4;-><init>()V

    sput-object v0, Lcom/vivo/settings/OneHandSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/OneHandSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/OneHandSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/vivo/settings/OneHandSettings;->setMiniScreenDemoNeeded(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/OneHandSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/OneHandSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private getMiniScreenDemoDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    .line 191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04007f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, "dialogView":Landroid/view/View;
    const v4, 0x7f0e0159

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 194
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 195
    const v4, 0x7f0e015a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 196
    .local v1, "checkBox":Landroid/widget/CheckBox;
    invoke-direct {p0}, Lcom/vivo/settings/OneHandSettings;->isMiniScreenDemoNeeded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    new-instance v4, Lcom/vivo/settings/OneHandSettings$1;

    invoke-direct {v4, p0}, Lcom/vivo/settings/OneHandSettings$1;-><init>(Lcom/vivo/settings/OneHandSettings;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    const v4, 0x7f0b086f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 205
    const v4, 0x104000a

    new-instance v5, Lcom/vivo/settings/OneHandSettings$2;

    invoke-direct {v5, p0}, Lcom/vivo/settings/OneHandSettings$2;-><init>(Lcom/vivo/settings/OneHandSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    new-instance v4, Lcom/vivo/settings/OneHandSettings$3;

    invoke-direct {v4, p0}, Lcom/vivo/settings/OneHandSettings$3;-><init>(Lcom/vivo/settings/OneHandSettings;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenDemoDialog:Landroid/app/AlertDialog;

    .line 220
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenDemoDialog:Landroid/app/AlertDialog;

    return-object v4

    .line 196
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMiniScreenDemoNeeded()Z
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/vivo/settings/OneHandSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "need_mini_screen_demo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setMiniScreenDemoNeeded(Z)V
    .locals 3
    .param p1, "need"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lcom/vivo/settings/OneHandSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "need_mini_screen_demo"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v4, 0x7f06002a

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->showBBKBackButton()V

    .line 78
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mContext:Landroid/content/Context;

    .line 79
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 80
    const-string v4, "OneHandSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate getProductName==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "1408"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 82
    const-string v4, "vivo_keyboard"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    .line 83
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 84
    iget-object v7, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "VivoKeyboard"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "VivoKeyboard"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 87
    .local v3, "VivoKeyboar":I
    const-string v4, "dial_pad"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    .line 88
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 89
    iget-object v7, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "Dial_Pad"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "Dial_Pad"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "DialPad":I
    const-string v4, "OneHandSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate DialPad==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v4, "pin_lock"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 95
    iget-object v7, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "Pin_Lock"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "Pin_Lock"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "PinLock":I
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->removePreference(Landroid/preference/Preference;)V

    .line 98
    const-string v4, "OneHandSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate PinLock==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "DialPad":I
    .end local v2    # "PinLock":I
    .end local v3    # "VivoKeyboar":I
    :goto_3
    const-string v4, "OneHandGesture"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mOnehandgesture:Landroid/preference/CheckBoxPreference;

    .line 111
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mOnehandgesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 112
    iget-object v7, p0, Lcom/vivo/settings/OneHandSettings;->mOnehandgesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "onehand"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "onehand"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "Onehandgesture":I
    const-string v4, "OneHandSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate Onehandgesture==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v4, "gesture_enable"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenGesture:Landroid/preference/CheckBoxPreference;

    .line 118
    sget-object v4, Lcom/vivo/settings/OneHandSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    iget-object v7, p0, Lcom/vivo/settings/OneHandSettings;->mContext:Landroid/content/Context;

    const-string v8, "gesture_explain"

    invoke-virtual {v4, v7, v8}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 119
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenGesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vivo_mini_screen_gesture_enable"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    :goto_5
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    :goto_6
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 126
    return-void

    .end local v1    # "Onehandgesture":I
    :cond_0
    move v4, v6

    .line 84
    goto/16 :goto_0

    .restart local v3    # "VivoKeyboar":I
    :cond_1
    move v4, v6

    .line 89
    goto/16 :goto_1

    .restart local v0    # "DialPad":I
    :cond_2
    move v4, v6

    .line 95
    goto/16 :goto_2

    .line 100
    .end local v0    # "DialPad":I
    .end local v3    # "VivoKeyboar":I
    :cond_3
    const-string v4, "vivo_keyboard"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v4, "dial_pad"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    .line 102
    const-string v4, "pin_lock"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    .line 103
    const-string v4, "onehandkeyboardsummary"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mOnehandkeyboardsummary:Landroid/preference/PreferenceCategory;

    .line 104
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->removePreference(Landroid/preference/Preference;)V

    .line 105
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->removePreference(Landroid/preference/Preference;)V

    .line 106
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->removePreference(Landroid/preference/Preference;)V

    .line 107
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mOnehandkeyboardsummary:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_4
    move v4, v6

    .line 112
    goto/16 :goto_4

    .restart local v1    # "Onehandgesture":I
    :cond_5
    move v5, v6

    .line 119
    goto :goto_5

    .line 121
    :cond_6
    iget-object v4, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenGesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->removePreference(Landroid/preference/Preference;)V

    .line 122
    const-string v4, "gesture_explain"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/OneHandSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 149
    const-string v0, "OneHandSettings"

    const-string v1, "rain=onDestroy====="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 143
    const-string v0, "OneHandSettings"

    const-string v1, "rain=onPause====="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 155
    const-string v3, "OneHandSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "VivoKeyboard"

    iget-object v5, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    :cond_1
    :goto_0
    return v2

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Dial_Pad"

    iget-object v5, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 162
    :cond_4
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 163
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Pin_Lock"

    iget-object v5, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 165
    :cond_6
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mOnehandgesture:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 166
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand"

    iget-object v5, p0, Lcom/vivo/settings/OneHandSettings;->mOnehandgesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 168
    :cond_8
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenGesture:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenGesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 170
    .local v0, "isChecked":Z
    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/vivo/settings/OneHandSettings;->isMiniScreenDemoNeeded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 171
    invoke-direct {p0}, Lcom/vivo/settings/OneHandSettings;->getMiniScreenDemoDialog()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 172
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 174
    :cond_9
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_mini_screen_gesture_enable"

    iget-object v5, p0, Lcom/vivo/settings/OneHandSettings;->mMiniScreenGesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 131
    const v0, 0x7f0b07a5

    invoke-virtual {p0, v0}, Lcom/vivo/settings/OneHandSettings;->setTitle(I)V

    .line 132
    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1408"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mDialPad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "Dial_Pad"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    iget-object v3, p0, Lcom/vivo/settings/OneHandSettings;->mPinLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "Pin_Lock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/vivo/settings/OneHandSettings;->mVivoKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "VivoKeyboard"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    :cond_2
    move v0, v2

    .line 134
    goto :goto_1

    :cond_3
    move v1, v2

    .line 135
    goto :goto_2
.end method
