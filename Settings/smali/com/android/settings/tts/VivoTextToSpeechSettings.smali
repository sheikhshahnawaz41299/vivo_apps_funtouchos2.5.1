.class public Lcom/android/settings/tts/VivoTextToSpeechSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoTextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;


# static fields
.field private static final ALL:I = 0x2

.field private static final ALL_ROUND:I = 0x3

.field private static final BOTTOM_ROUND:I = 0x2

.field private static final DBG:Z = false

.field private static final GET_SAMPLE_TEXT:I = 0x7bf

.field private static final KEY_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final KEY_ENGINE_PREFERENCE_SECTION:Ljava/lang/String; = "tts_engine_preference_section"

.field private static final KEY_PLAY_EXAMPLE:Ljava/lang/String; = "tts_play_example"

.field private static final KEY_STATUS:Ljava/lang/String; = "tts_status"

.field private static final LEFT_PART:I = 0x0

.field private static final MIDDLE:I = 0x1

.field private static final RIGHT_PART:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VivoTextToSpeechSettings"

.field private static final TOP_ROUND:I = 0x0

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mEngineStatus:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Landroid/preference/Preference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mSampleText:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 101
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRate:I

    .line 120
    iput-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 121
    iput-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 123
    iput-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/android/settings/tts/VivoTextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/VivoTextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 154
    new-instance v0, Lcom/android/settings/tts/VivoTextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings$2;-><init>(Lcom/android/settings/tts/VivoTextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private checkDefaultLocale()V
    .locals 6

    .prologue
    .line 296
    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 297
    .local v1, "defaultLocale":Ljava/util/Locale;
    if-nez v1, :cond_1

    .line 298
    const-string v3, "VivoTextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get default language from engine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    .line 300
    const v3, 0x7f0b0522

    invoke-direct {p0, v3}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateEngineStatus(I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 307
    .local v2, "oldDefaultLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 308
    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 309
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 313
    .local v0, "defaultAvailable":I
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getSampleText()V

    goto :goto_0
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 595
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "VivoTextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayNetworkAlert()V
    .locals 5

    .prologue
    .line 523
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b051d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 530
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 531
    return-void
.end method

.method private evaluateDefaultLocale()Z
    .locals 11

    .prologue
    const v10, 0x7f0b0522

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 321
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    .line 364
    :goto_0
    return v6

    .line 325
    :cond_1
    const/4 v5, 0x1

    .line 328
    .local v5, "notInAvailableLangauges":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "defaultLocaleStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    :cond_2
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_3
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 337
    .local v4, "loc":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 338
    const/4 v5, 0x0

    .line 349
    .end local v4    # "loc":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v9, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 350
    .local v0, "defaultAvailable":I
    const/4 v8, -0x2

    if-eq v0, v8, :cond_6

    const/4 v8, -0x1

    if-eq v0, v8, :cond_6

    if-eqz v5, :cond_7

    .line 354
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateEngineStatus(I)V

    .line 355
    invoke-direct {p0, v7}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    move v6, v7

    .line 356
    goto/16 :goto_0

    .line 342
    .end local v0    # "defaultAvailable":I
    .end local v1    # "defaultLocaleStr":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/util/MissingResourceException;
    invoke-direct {p0, v10}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateEngineStatus(I)V

    .line 345
    invoke-direct {p0, v7}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    move v6, v7

    .line 346
    goto/16 :goto_0

    .line 358
    .end local v2    # "e":Ljava/util/MissingResourceException;
    .restart local v0    # "defaultAvailable":I
    .restart local v1    # "defaultLocaleStr":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 359
    const v7, 0x7f0b0521

    invoke-direct {p0, v7}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateEngineStatus(I)V

    .line 363
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    goto/16 :goto_0

    .line 361
    :cond_8
    const v7, 0x7f0b0520

    invoke-direct {p0, v7}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateEngineStatus(I)V

    goto :goto_1
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 409
    iget-object v4, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 411
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "currentLang":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "strings":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "langs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 418
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    aget-object v4, v3, v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "currentLang":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "langs":[Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 417
    .restart local v0    # "currentLang":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "langs":[Ljava/lang/String;
    .restart local v3    # "strings":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "currentLang":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "langs":[Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 427
    :cond_1
    const v4, 0x7f0b051e

    invoke-virtual {p0, v4}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getSampleText()V
    .locals 6

    .prologue
    .line 373
    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "currentEngine":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "language"

    iget-object v4, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v3, "country"

    iget-object v4, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v3, "variant"

    iget-object v4, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const/16 v3, 0x7bf

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "VivoTextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 237
    .local v7, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v8, "tts_default_rate"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRate:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v11, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRate:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 243
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    instance-of v8, v8, Lcom/android/settings/SettingsActivity;

    if-eqz v8, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 255
    .restart local v0    # "activity":Lcom/android/settings/SettingsActivity;
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 257
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v8}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 259
    if-nez v3, :cond_2

    move v4, v9

    .line 260
    .local v4, "isFirst":Z
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_3

    move v5, v9

    .line 261
    .local v5, "isLast":Z
    :goto_3
    new-instance v6, Lcom/android/settings/tts/VivoTtsEnginePreference;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v6, v11, v8, p0, v0}, Lcom/android/settings/tts/VivoTtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/VivoTtsEnginePreference$RadioButtonGroupState;Lcom/android/settings/SettingsActivity;)V

    .line 263
    .local v6, "pref":Lcom/android/settings/tts/VivoTtsEnginePreference;
    if-eqz v4, :cond_4

    .line 264
    if-eqz v5, :cond_0

    .line 276
    :cond_0
    :goto_4
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    .end local v2    # "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "isFirst":Z
    .end local v5    # "isLast":Z
    .end local v6    # "pref":Lcom/android/settings/tts/VivoTtsEnginePreference;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v8, 0x64

    iput v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRate:I

    goto :goto_0

    .line 251
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .restart local v2    # "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .restart local v3    # "i":I
    :cond_2
    move v4, v10

    .line 259
    goto :goto_2

    .restart local v4    # "isFirst":Z
    :cond_3
    move v5, v10

    .line 260
    goto :goto_3

    .line 270
    .restart local v5    # "isLast":Z
    .restart local v6    # "pref":Lcom/android/settings/tts/VivoTtsEnginePreference;
    :cond_4
    if-eqz v5, :cond_0

    goto :goto_4

    .line 279
    .end local v4    # "isFirst":Z
    .end local v5    # "isLast":Z
    .end local v6    # "pref":Lcom/android/settings/tts/VivoTtsEnginePreference;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private isNetworkRequiredForSynthesis()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v2, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 432
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "embeddedTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "sample":Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 443
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 452
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 453
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_1
    const-string v1, "VivoTextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 609
    iget-object v5, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "engine":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 612
    const-string v5, "VivoTextToSpeechSettings"

    const-string v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    if-nez p1, :cond_2

    .line 617
    const-string v5, "VivoTextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 624
    const-string v5, "availableVoices"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 626
    iget-object v5, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v5, :cond_3

    .line 627
    const-string v5, "VivoTextToSpeechSettings"

    const-string v6, "Voice data check complete, but no available voices found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 631
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 632
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getSampleText()V

    .line 635
    :cond_4
    iget-object v5, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 636
    .local v1, "engineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 637
    iget-object v5, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 638
    .local v4, "p":Landroid/preference/Preference;
    instance-of v5, v4, Lcom/android/settings/tts/VivoTtsEnginePreference;

    if-eqz v5, :cond_5

    move-object v2, v4

    .line 639
    check-cast v2, Lcom/android/settings/tts/VivoTtsEnginePreference;

    .line 640
    .local v2, "enginePref":Lcom/android/settings/tts/VivoTtsEnginePreference;
    invoke-virtual {v2}, Lcom/android/settings/tts/VivoTtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 641
    invoke-virtual {v2, p1}, Lcom/android/settings/tts/VivoTtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    goto :goto_0

    .line 636
    .end local v2    # "enginePref":Lcom/android/settings/tts/VivoTtsEnginePreference;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/VivoTextToSpeechSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/VivoTextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0
.end method

.method private speakSampleText()V
    .locals 5

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    .line 461
    .local v0, "networkRequired":Z
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 463
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 464
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    const-string v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v2, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mSampleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 471
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 468
    :cond_1
    const-string v2, "VivoTextToSpeechSettings"

    const-string v3, "Network required for sample synthesis for requested language"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 538
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    .line 539
    const v1, 0x7f0b0523

    invoke-direct {p0, v1}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateEngineStatus(I)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 549
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 552
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    :goto_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 563
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 564
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoTextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEngineStatus(I)V
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 516
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 517
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 520
    return-void
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 512
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 401
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 402
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 404
    invoke-direct {p0, p3}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->showBBKBackButton()V

    .line 165
    const v0, 0x7f0b0511

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->setTitle(I)V

    .line 166
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 170
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 171
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 174
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 176
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 178
    const-string v0, "tts_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    .line 179
    const v0, 0x7f0b0523

    invoke-direct {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateEngineStatus(I)V

    .line 181
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 182
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 184
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->initSettings()V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->setRetainInstance(Z)V

    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 230
    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->checkDefaultLocale()V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 475
    const-string v1, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRate:I

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_rate"

    iget v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRate:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "VivoTextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->speakSampleText()V

    .line 502
    const/4 v0, 0x1

    .line 505
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 195
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 199
    .local v0, "ttsDefaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateWidgetState(Z)V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->checkDefaultLocale()V

    goto :goto_0
.end method

.method public onUpdateEngine(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 583
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 585
    invoke-direct {p0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 587
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    .line 661
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/android/settings/tts/VivoTextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/VivoTextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    .line 667
    return-void
.end method
