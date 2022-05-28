.class public Lcom/android/settings/tts/VivoTtsEnginePreference;
.super Landroid/preference/Preference;
.source "VivoTtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"

.field private static final TAG:Ljava/lang/String; = "VivoTtsEnginePreference"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private mItemSettings:Landroid/view/View;

.field private mLeftBackground:I

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRightBackground:I

.field private final mSettingsActivity:Lcom/android/settings/SettingsActivity;

.field private final mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;Lcom/android/settings/SettingsActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/speech/tts/TextToSpeech$EngineInfo;
    .param p3, "state"    # Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;
    .param p4, "prefActivity"    # Lcom/android/settings/SettingsActivity;

    .prologue
    const/4 v0, -0x1

    .line 100
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 87
    iput v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mLeftBackground:I

    .line 88
    iput v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRightBackground:I

    .line 90
    new-instance v0, Lcom/android/settings/tts/VivoTtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/VivoTtsEnginePreference$1;-><init>(Lcom/android/settings/tts/VivoTtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 101
    const v0, 0x7f0400ef

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->setLayoutResource(I)V

    .line 103
    iput-object p3, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    .line 104
    iput-object p4, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 105
    iput-object p2, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/VivoTtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tts/VivoTtsEnginePreference;
    .param p1, "x1"    # Landroid/widget/CompoundButton;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/VivoTtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/VivoTtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tts/VivoTtsEnginePreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tts/VivoTtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tts/VivoTtsEnginePreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/tts/VivoTtsEnginePreference;)Lcom/android/settings/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tts/VivoTtsEnginePreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/tts/VivoTtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tts/VivoTtsEnginePreference;
    .param p1, "x1"    # Landroid/widget/Checkable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/tts/VivoTtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method private displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9
    .param p1, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v8, 0x1

    .line 199
    const-string v2, "VivoTtsEnginePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b051c

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v7, v7, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 210
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 211
    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 2
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 253
    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-eqz p2, :cond_3

    .line 223
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->shouldDisplayDataAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    new-instance v0, Lcom/android/settings/tts/VivoTtsEnginePreference$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/tts/VivoTtsEnginePreference$4;-><init>(Lcom/android/settings/tts/VivoTtsEnginePreference;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings/tts/VivoTtsEnginePreference$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/VivoTtsEnginePreference$5;-><init>(Lcom/android/settings/tts/VivoTtsEnginePreference;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/tts/VivoTtsEnginePreference;->displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/tts/VivoTtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private shouldDisplayDataAlert()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 114
    iget-object v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    if-nez v6, :cond_0

    .line 115
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, "view":Landroid/view/View;
    const v6, 0x7f0e0194

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 121
    .local v2, "rb":Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v7}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 124
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 125
    iget-object v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6, v2}, Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 128
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 129
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    iput-boolean v5, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 132
    iput-object v2, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 134
    const v6, 0x7f0e0011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "layout":Landroid/view/View;
    iget v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRightBackground:I

    if-le v6, v8, :cond_2

    .line 136
    iget v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRightBackground:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    :cond_2
    new-instance v6, Lcom/android/settings/tts/VivoTtsEnginePreference$2;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/tts/VivoTtsEnginePreference$2;-><init>(Lcom/android/settings/tts/VivoTtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v6, 0x7f0e0196

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    .line 146
    iget v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mLeftBackground:I

    if-le v6, v8, :cond_3

    .line 147
    iget-object v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    iget v7, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mLeftBackground:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    :cond_3
    iget-object v6, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v7, :cond_6

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 150
    if-nez v0, :cond_4

    .line 151
    iget-object v4, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 153
    :cond_4
    iget-object v4, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    new-instance v5, Lcom/android/settings/tts/VivoTtsEnginePreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings/tts/VivoTtsEnginePreference$3;-><init>(Lcom/android/settings/tts/VivoTtsEnginePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v4, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 170
    iget-object v4, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    :cond_5
    return-object v3

    :cond_6
    move v4, v5

    .line 149
    goto :goto_0
.end method

.method public setLeftBackground(II)V
    .locals 0
    .param p1, "leftres"    # I
    .param p2, "rightres"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mLeftBackground:I

    .line 271
    iput p2, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRightBackground:I

    .line 272
    return-void
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/tts/VivoTtsEnginePreference;->mItemSettings:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
