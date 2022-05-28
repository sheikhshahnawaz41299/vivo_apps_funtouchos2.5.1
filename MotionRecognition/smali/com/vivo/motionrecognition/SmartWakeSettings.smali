.class public Lcom/vivo/motionrecognition/SmartWakeSettings;
.super Lcom/vivo/app/VivoPreferenceActivity;
.source "SmartWakeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;


# static fields
.field private static final ACTION_CUSTOM:Ljava/lang/String; = "android.vivo.custom.gesture.main"

.field private static final ACTION_GESTURE_EDIT:Ljava/lang/String; = "android.vivo.custom.gesture.edit"

.field private static final KEY_SCREEN_DISABLE_CHANGE_MUSIC_SETTING:Ljava/lang/String; = "screen_disable_change_music_setting"

.field private static final KEY_SCREEN_DISABLE_TO_UNLOCK_SETTING:Ljava/lang/String; = "screen_disable_to_unlock_setting"

.field private static final KEY_SCREEN_DISABLE_WAKE_BROWSER_SETTING:Ljava/lang/String; = "screen_disable_wake_browser_setting"

.field private static final KEY_SCREEN_DISABLE_WAKE_CAMERA_SETTING:Ljava/lang/String; = "screen_disable_wake_camera_setting"

.field private static final KEY_SCREEN_DISABLE_WAKE_DIAL_SETTING:Ljava/lang/String; = "screen_disable_wake_dial_setting"

.field private static final KEY_SCREEN_DISABLE_WAKE_EMAIL_SETTING:Ljava/lang/String; = "screen_disable_wake_email_setting"

.field private static final KEY_SCREEN_DISABLE_WAKE_FACEBOOK_SETTING:Ljava/lang/String; = "screen_disable_wake_facebook_setting"

.field private static final KEY_SCREEN_DISABLE_WAKE_MUSIC_SETTING:Ljava/lang/String; = "screen_disable_wake_music_setting"

.field private static final KEY_SCREEN_DISABLE_WAKE_WECHAT_SETTING:Ljava/lang/String; = "screen_disable_wake_wechat_setting"

.field private static TAG:Ljava/lang/String;

.field private static screen_disable_change_music_setting_state:I

.field private static screen_disable_to_unlock_setting_state:I

.field private static screen_disable_wake_browser_setting_state:I

.field private static screen_disable_wake_camera_setting_state:I

.field private static screen_disable_wake_dial_setting_state:I

.field private static screen_disable_wake_email_setting_state:I

.field private static screen_disable_wake_facebook_setting_state:I

.field private static screen_disable_wake_music_setting_state:I

.field private static screen_disable_wake_wechat_setting_state:I


# instance fields
.field private addGesture:Landroid/preference/Preference;

.field private height:I

.field private isCreate:Z

.field private isStartApp:Z

.field private learn_wake_msg:I

.field private learn_wake_title:I

.field private mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

.field private mPreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

.field private mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v0, "SmartWakeSettings"

    sput-object v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->TAG:Ljava/lang/String;

    .line 56
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_to_unlock_setting_state:I

    .line 57
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_camera_setting_state:I

    .line 58
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_dial_setting_state:I

    .line 59
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_music_setting_state:I

    .line 60
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_change_music_setting_state:I

    .line 61
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_browser_setting_state:I

    .line 62
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_wechat_setting_state:I

    .line 63
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_facebook_setting_state:I

    .line 64
    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_email_setting_state:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;-><init>()V

    .line 86
    const v0, 0x7f080037

    iput v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->learn_wake_msg:I

    .line 87
    const v0, 0x7f080036

    iput v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->learn_wake_title:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isStartApp:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isCreate:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    return-void
.end method

.method private IsEnable(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enableSP"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 787
    .local v0, "open":I
    if-ne v0, v3, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 790
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SmartWakeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method private addNewGesture(Lcom/vivo/motionrecognition/custom/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vivo/motionrecognition/custom/DataItem;

    .prologue
    .line 719
    const-string v1, "CUSTOM_VIVO"

    const-string v2, "-------addNewGesture-------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->removeAddGesture()V

    .line 721
    new-instance v0, Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-direct {v0, p0}, Lcom/vivo/motionrecognition/custom/CustomPreference;-><init>(Landroid/content/Context;)V

    .line 722
    .local v0, "newGesture":Lcom/vivo/motionrecognition/custom/CustomPreference;
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->width:I

    iget v3, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->height:I

    invoke-static {v1, v2, v3, p0}, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->drawThumbNail(Ljava/util/ArrayList;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setImage(Landroid/graphics/Bitmap;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->functionTip(Lcom/vivo/motionrecognition/custom/DataItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setFunction(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setIndex(I)V

    .line 725
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->IsEnable(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setStatus(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Lcom/vivo/motionrecognition/custom/CustomPreference;->notifyChangedData()V

    .line 727
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 728
    return-void
.end method

.method private functionTip(Lcom/vivo/motionrecognition/custom/DataItem;)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # Lcom/vivo/motionrecognition/custom/DataItem;

    .prologue
    .line 730
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "language":Ljava/lang/String;
    const-string v0, ""

    .line 732
    .local v0, "funStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "tipStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getFunction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 734
    const-string v3, "CUSTOM_VIVO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------item.getAppName()-------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 748
    :cond_0
    :goto_0
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 751
    :goto_1
    return-object v3

    .line 737
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getFunction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 738
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 742
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 743
    :cond_3
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getPkName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getPattern(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "strPoints"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 667
    .local v5, "patternPoint":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v6, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 669
    .local v7, "s":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "coordinate":[Ljava/lang/String;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 671
    .local v4, "p":Landroid/graphics/Point;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Point;->x:I

    .line 672
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Point;->y:I

    .line 673
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    .end local v1    # "coordinate":[Ljava/lang/String;
    .end local v4    # "p":Landroid/graphics/Point;
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method private static getPatternString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const-string v2, ""

    .line 550
    .local v2, "strPoint":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 551
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 552
    .local v1, "p":Landroid/graphics/Point;
    if-nez v0, :cond_0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 558
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_1
    return-object v2
.end method

.method private initCustomGesture()V
    .locals 2

    .prologue
    .line 658
    const-string v0, "custom_gesture_add_new"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->addGesture:Landroid/preference/Preference;

    .line 659
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->width:I

    .line 660
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->height:I

    .line 661
    const-string v0, "custom_gesture_gesture_new"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 662
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->addGesture:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 664
    return-void
.end method

.method private initNewGesture()V
    .locals 7

    .prologue
    .line 679
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 680
    .local v0, "dataitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/motionrecognition/custom/DataItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 681
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 682
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 683
    .local v2, "item":Lcom/vivo/motionrecognition/custom/DataItem;
    new-instance v3, Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-direct {v3, p0}, Lcom/vivo/motionrecognition/custom/CustomPreference;-><init>(Landroid/content/Context;)V

    .line 684
    .local v3, "newGesture":Lcom/vivo/motionrecognition/custom/CustomPreference;
    invoke-virtual {v2}, Lcom/vivo/motionrecognition/custom/DataItem;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->width:I

    iget v6, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->height:I

    invoke-static {v4, v5, v6, p0}, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->drawThumbNail(Ljava/util/ArrayList;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setImage(Landroid/graphics/Bitmap;)V

    .line 685
    invoke-direct {p0, v2}, Lcom/vivo/motionrecognition/SmartWakeSettings;->functionTip(Lcom/vivo/motionrecognition/custom/DataItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setFunction(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v2}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setIndex(I)V

    .line 687
    invoke-virtual {v2}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/vivo/motionrecognition/SmartWakeSettings;->IsEnable(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setStatus(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/CustomPreference;->notifyChangedData()V

    .line 689
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v2    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    .end local v3    # "newGesture":Lcom/vivo/motionrecognition/custom/CustomPreference;
    :cond_0
    return-void
.end method

.method private isAddPreference()V
    .locals 2

    .prologue
    .line 809
    const-string v0, "custom_gesture_gesture_new"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 810
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_0

    .line 811
    const-string v0, "CUSTOM_VIVO"

    const-string v1, "mPreferenceCategory is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->addPreferencesFromResource(I)V

    .line 813
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->initCustomGesture()V

    .line 815
    :cond_0
    return-void
.end method

.method private isLoadCustomGesture()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 801
    .local v0, "isVisitor":I
    const-string v2, "CUSTOM_VIVO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVisitor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    if-nez v0, :cond_0

    sget-boolean v2, Lcom/vivo/motionrecognition/MotionConfig;->mHasCustomGesture:Z

    if-eqz v2, :cond_0

    .line 803
    const/4 v1, 0x1

    .line 805
    :cond_0
    return v1
.end method

.method private queryGesture(Z)V
    .locals 4
    .param p1, "isQueryFunction"    # Z

    .prologue
    const/4 v3, 0x1

    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 705
    const-string v1, "operation"

    const-string v2, "query_function"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :goto_0
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    invoke-virtual {v1}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    invoke-virtual {v1, v3}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->cancel(Z)Z

    .line 713
    :cond_0
    new-instance v1, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    invoke-direct {v1, p0, p0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;-><init>(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    .line 714
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    new-array v2, v3, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 716
    return-void

    .line 707
    :cond_1
    const-string v1, "operation"

    const-string v2, "query"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeAddGesture()V
    .locals 4

    .prologue
    .line 778
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 779
    .local v0, "dataitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/motionrecognition/custom/DataItem;>;"
    const-string v1, "CUSTOM_VIVO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------removeAddGesture-------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 781
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->addGesture:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 783
    :cond_0
    return-void
.end method

.method private updateFunction()V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method private updateGestureDate(Lcom/vivo/motionrecognition/custom/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vivo/motionrecognition/custom/DataItem;

    .prologue
    .line 755
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-virtual {v2}, Lcom/vivo/motionrecognition/custom/CustomPreference;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->updateDataItemByIcNumber(ILcom/vivo/motionrecognition/custom/DataItem;)V

    .line 756
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-direct {p0, p1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->functionTip(Lcom/vivo/motionrecognition/custom/DataItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setFunction(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-virtual {v1}, Lcom/vivo/motionrecognition/custom/CustomPreference;->notifyChangedData()V

    .line 758
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "operation"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance v1, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    invoke-direct {v1, p0, p1}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;-><init>(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 761
    return-void
.end method


# virtual methods
.method public OnPostExecute(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 765
    const-string v1, "operation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "opreation":Ljava/lang/String;
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    const-string v1, "CUSTOM_VIVO"

    const-string v2, "-------DataBaseAsyncTask.QUERY-------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->removeAddGesture()V

    .line 769
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->initNewGesture()V

    .line 773
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    .line 774
    return-void

    .line 770
    :cond_1
    const-string v1, "query_function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->updateFunction()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 563
    new-instance v1, Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-direct {v1}, Lcom/vivo/motionrecognition/custom/DataItem;-><init>()V

    .line 564
    .local v1, "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    const-string v9, "CUSTOM_VIVO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---------onActivityResult----------resultCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isStartApp:Z

    .line 566
    const/16 v9, 0xc

    if-ne p2, v9, :cond_4

    .line 567
    const-string v9, "re_function"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 568
    .local v6, "isReFunction":Z
    if-eqz v6, :cond_3

    .line 569
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-virtual {v10}, Lcom/vivo/motionrecognition/custom/CustomPreference;->getIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getDataItemByIcNumber(I)Lcom/vivo/motionrecognition/custom/DataItem;

    move-result-object v1

    .line 570
    const-string v9, "clsName"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setClsName(Ljava/lang/String;)V

    .line 571
    const-string v9, "pkName"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setPkName(Ljava/lang/String;)V

    .line 572
    const-string v9, "CUSTOM_VIVO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isReFunction appName  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "appName"

    invoke-virtual {p3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v9, "appName"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setAppName(Ljava/lang/String;)V

    .line 574
    const-string v9, "name"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallName(Ljava/lang/String;)V

    .line 575
    const-string v9, "phoneNumber"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallNumber(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1}, Lcom/vivo/motionrecognition/custom/DataItem;->getAppName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 577
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setFunction(I)V

    .line 581
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->updateGestureDate(Lcom/vivo/motionrecognition/custom/DataItem;)V

    .line 655
    .end local v6    # "isReFunction":Z
    :cond_1
    :goto_1
    return-void

    .line 578
    .restart local v6    # "isReFunction":Z
    :cond_2
    invoke-virtual {v1}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 579
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setFunction(I)V

    goto :goto_0

    .line 583
    :cond_3
    const-string v9, "clsName"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setClsName(Ljava/lang/String;)V

    .line 584
    const-string v9, "pkName"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setPkName(Ljava/lang/String;)V

    .line 585
    const-string v9, "CUSTOM_VIVO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xxxx appName  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "appName"

    invoke-virtual {p3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v9, "appName"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setAppName(Ljava/lang/String;)V

    .line 587
    const-string v9, "name"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallName(Ljava/lang/String;)V

    .line 588
    const-string v9, "phoneNumber"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallNumber(Ljava/lang/String;)V

    .line 589
    const-string v9, "function"

    const/4 v10, -0x1

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setFunction(I)V

    .line 590
    const-string v9, "index"

    const/4 v10, -0x1

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setIndex(I)V

    .line 591
    const-string v9, "points"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getPattern(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/vivo/motionrecognition/custom/DataItem;->setPoints(Ljava/util/ArrayList;)V

    .line 592
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->removeAllDataItem()V

    .line 593
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->addNewGesture(Lcom/vivo/motionrecognition/custom/DataItem;)V

    .line 594
    invoke-direct {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->addNewGesture(Lcom/vivo/motionrecognition/custom/DataItem;)V

    goto/16 :goto_1

    .line 596
    .end local v6    # "isReFunction":Z
    :cond_4
    const/4 v9, 0x7

    if-ne p2, v9, :cond_8

    .line 597
    const-string v9, "index"

    const/4 v10, -0x1

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 598
    .local v5, "index":I
    const-string v9, "CUSTOM_VIVO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete: index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isCreate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isCreate:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isCreate:Z

    .line 600
    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 602
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_5

    .line 603
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mQueryAsyncTask:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->cancel(Z)Z

    .line 606
    :cond_5
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->removeAllDataItem()V

    .line 607
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_7

    .line 608
    const-string v9, "CUSTOM_VIVO"

    const-string v10, "mPreferenceCategory!=null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    if-eqz v9, :cond_6

    .line 610
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 612
    :cond_6
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->addGesture:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 614
    :cond_7
    const-string v9, "CUSTOM_VIVO"

    const-string v10, "mPreferenceCategory==null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 618
    .end local v5    # "index":I
    :cond_8
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 619
    .local v2, "dataitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/motionrecognition/custom/DataItem;>;"
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 621
    const-string v9, "update_function"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 622
    .local v7, "isUpdate":Z
    const-string v9, "index"

    const/4 v10, -0x1

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 623
    .restart local v5    # "index":I
    const-string v9, "CUSTOM_VIVO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cacenl: index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isUpdate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v9, -0x1

    if-eq v5, v9, :cond_a

    .line 625
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getIndexDataItem(I)Lcom/vivo/motionrecognition/custom/DataItem;

    move-result-object v8

    .line 626
    .local v8, "mDataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    if-eqz v7, :cond_a

    .line 627
    const-string v9, "function"

    const/4 v10, -0x1

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 628
    .local v3, "function":I
    const-string v9, "CUSTOM_VIVO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "re-function:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v9, 0x2

    if-ne v3, v9, :cond_9

    .line 630
    const-string v9, "callName"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "callName":Ljava/lang/String;
    const-string v9, "CUSTOM_VIVO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "re-callName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz v0, :cond_9

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 633
    invoke-virtual {v8, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallName(Ljava/lang/String;)V

    .line 636
    .end local v0    # "callName":Ljava/lang/String;
    :cond_9
    invoke-virtual {v8, v3}, Lcom/vivo/motionrecognition/custom/DataItem;->setFunction(I)V

    .line 637
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v9

    invoke-virtual {v9, v5, v8}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->updateDataItemByIcNumber(ILcom/vivo/motionrecognition/custom/DataItem;)V

    .line 641
    .end local v3    # "function":I
    .end local v8    # "mDataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    const/4 v9, 0x1

    if-ge v4, v9, :cond_1

    .line 642
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 643
    .restart local v8    # "mDataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    if-eqz v9, :cond_b

    .line 644
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-virtual {v8}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/vivo/motionrecognition/SmartWakeSettings;->IsEnable(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setStatus(Ljava/lang/String;)V

    .line 645
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-direct {p0, v8}, Lcom/vivo/motionrecognition/SmartWakeSettings;->functionTip(Lcom/vivo/motionrecognition/custom/DataItem;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vivo/motionrecognition/custom/CustomPreference;->setFunction(Ljava/lang/String;)V

    .line 646
    iget-object v9, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/CustomPreference;->notifyChangedData()V

    .line 641
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 648
    :cond_b
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->removeAddGesture()V

    .line 649
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->initNewGesture()V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f080039

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    invoke-super {p0, p1}, Lcom/vivo/app/VivoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->addPreferencesFromResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->showTitleLeftButton()V

    .line 110
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->setTitleLeftButtonIcon(I)V

    .line 111
    new-instance v1, Lcom/vivo/motionrecognition/SmartWakeSettings$1;

    invoke-direct {v1, p0}, Lcom/vivo/motionrecognition/SmartWakeSettings$1;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_to_unlock_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_to_unlock_setting_state:I

    .line 118
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_quick_open_camera_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_camera_setting_state:I

    .line 120
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_wake_dial_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_dial_setting_state:I

    .line 122
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_wake_music_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_music_setting_state:I

    .line 124
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_change_music_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_change_music_setting_state:I

    .line 126
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_wake_browser_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_browser_setting_state:I

    .line 128
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_wake_wechat_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_wechat_setting_state:I

    .line 130
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_wake_facebook_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_facebook_setting_state:I

    .line 132
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bbk_screen_disable_wake_email_setting"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_email_setting_state:I

    .line 135
    const-string v1, "screen_disable_to_unlock_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 136
    const-string v1, "screen_disable_wake_camera_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 137
    const-string v1, "screen_disable_wake_dial_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 138
    const-string v1, "screen_disable_wake_music_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 139
    const-string v1, "screen_disable_change_music_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 140
    const-string v1, "screen_disable_wake_browser_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 141
    const-string v1, "screen_disable_wake_wechat_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 142
    const-string v1, "screen_disable_wake_facebook_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 143
    const-string v1, "screen_disable_wake_email_setting"

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 145
    const-string v1, "persist.sys.vivo.product.cust"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/VivoCheckBoxPreference;->setTitle(I)V

    .line 148
    const v1, 0x7f08003a

    iput v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->learn_wake_msg:I

    .line 149
    iput v5, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->learn_wake_title:I

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 153
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 154
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 155
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 156
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 157
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 158
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 159
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 160
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 162
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_to_unlock_setting_state:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_camera_setting_state:I

    if-lez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_dial_setting_state:I

    if-lez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_music_setting_state:I

    if-lez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_change_music_setting_state:I

    if-lez v1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 172
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_browser_setting_state:I

    if-lez v1, :cond_8

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 174
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_wechat_setting_state:I

    if-lez v1, :cond_9

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 176
    iget-object v4, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v1, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_facebook_setting_state:I

    if-lez v1, :cond_a

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 178
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_email_setting_state:I

    if-lez v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 181
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    iget-object v1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->isLoadCustomGesture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-string v1, "CUSTOM_VIVO"

    const-string v3, "custom gesture start!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput-boolean v2, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isCreate:Z

    .line 195
    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v1}, Lcom/vivo/motionrecognition/SmartWakeSettings;->addPreferencesFromResource(I)V

    .line 196
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->initCustomGesture()V

    .line 200
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 162
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 164
    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 166
    goto/16 :goto_2

    :cond_6
    move v1, v3

    .line 168
    goto/16 :goto_3

    :cond_7
    move v1, v3

    .line 170
    goto :goto_4

    :cond_8
    move v1, v3

    .line 172
    goto :goto_5

    :cond_9
    move v1, v3

    .line 174
    goto :goto_6

    :cond_a
    move v1, v3

    .line 176
    goto :goto_7
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 546
    invoke-super {p0, p1}, Lcom/vivo/app/VivoPreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 539
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onPause()V

    .line 540
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 203
    sget-object v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smart onPreferenceChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_to_unlock_setting_state:I

    .line 208
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_to_unlock_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 296
    :cond_0
    :goto_0
    return v3

    .line 211
    :cond_1
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_to_unlock_setting_state:I

    .line 212
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_to_unlock_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_dial_setting_state:I

    .line 218
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_dial_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 221
    :cond_3
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_dial_setting_state:I

    .line 222
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_dial_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_music_setting_state:I

    .line 228
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_music_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 231
    :cond_5
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_music_setting_state:I

    .line 232
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_music_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_8

    .line 236
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_change_music_setting_state:I

    .line 238
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_change_music_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 241
    :cond_7
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_change_music_setting_state:I

    .line 242
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_change_music_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 247
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_camera_setting_state:I

    .line 248
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_quick_open_camera_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 251
    :cond_9
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_camera_setting_state:I

    .line 252
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_quick_open_camera_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 255
    :cond_a
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_c

    .line 256
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_browser_setting_state:I

    .line 258
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_browser_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 261
    :cond_b
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_browser_setting_state:I

    .line 262
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_browser_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 265
    :cond_c
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_e

    .line 266
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 267
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_wechat_setting_state:I

    .line 268
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_wechat_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 271
    :cond_d
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_wechat_setting_state:I

    .line 272
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_wechat_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 275
    :cond_e
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_10

    .line 276
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 277
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_facebook_setting_state:I

    .line 278
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_facebook_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 281
    :cond_f
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_facebook_setting_state:I

    .line 282
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_facebook_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 285
    :cond_10
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 287
    sput v4, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_email_setting_state:I

    .line 288
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_email_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 291
    :cond_11
    sput v3, Lcom/vivo/motionrecognition/SmartWakeSettings;->screen_disable_wake_email_setting_state:I

    .line 292
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_wake_email_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 18
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 302
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v14, 0x30f0004

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 304
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 305
    .local v10, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, "TopLevelView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 307
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 308
    sget-object v14, Lcom/vivo/motionrecognition/SmartWakeSettings;->TAG:Ljava/lang/String;

    const-string v15, "disable AlertDialog Hardware acceleration"

    invoke-static {v14, v15}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 311
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f030001

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 312
    .local v13, "view":Landroid/view/View;
    const v14, 0x7f0a0004

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 314
    .local v12, "text":Landroid/widget/TextView;
    const v14, 0x7f0a0005

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 316
    .local v5, "img":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 318
    .local v3, "anim":Landroid/graphics/drawable/AnimationDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableToUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 320
    const v14, 0x7f080025

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 321
    const v14, 0x7f04000c

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 322
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 323
    const v14, 0x7f080024

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 324
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$2;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 329
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$3;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .local v11, "ob":Landroid/graphics/drawable/Drawable;
    move-object v3, v11

    .line 499
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 500
    if-eqz v3, :cond_2

    .line 501
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 502
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 504
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/vivo/app/VivoPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v14

    return v14

    .line 335
    .end local v11    # "ob":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_4

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeDileSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 337
    const v14, 0x7f08002b

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 338
    const v14, 0x7f040011

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 339
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 340
    const v14, 0x7f08002a

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 341
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$4;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 346
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$5;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 352
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_5

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 354
    const v14, 0x7f08002e

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 355
    const v14, 0x7f040014

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 356
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 357
    const v14, 0x7f08002d

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 358
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$6;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 363
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$7;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 369
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_6

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableChangeMusicSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 371
    const v14, 0x7f080031

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 372
    const v14, 0x7f040002

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 373
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 374
    const v14, 0x7f080030

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 375
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$8;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 380
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$9;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 386
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeCameraSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 388
    const v14, 0x7f080029

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 389
    const v14, 0x7f040006

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 390
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 391
    const v14, 0x7f080027

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 392
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$10;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 397
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$11;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 403
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_8

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeBrowserSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 405
    const v14, 0x7f080034

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 406
    const v14, 0x7f040010

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 407
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 408
    const v14, 0x7f080033

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 409
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$12;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 414
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$13;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$13;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 420
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_9

    .line 421
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeWechatSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 422
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->learn_wake_msg:I

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 423
    const v14, 0x7f040015

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 424
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 425
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->learn_wake_title:I

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$14;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$14;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 431
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$15;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$15;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_a

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeFacebookSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 439
    const v14, 0x7f08003d

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 440
    const v14, 0x7f040013

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 441
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 442
    const v14, 0x7f08003c

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 443
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$16;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 448
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$17;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$17;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 454
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_b

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mScreenDisableWakeEmailSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 456
    const v14, 0x7f080040

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 457
    const v14, 0x7f040012

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 458
    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 459
    const v14, 0x7f08003f

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 460
    const v14, 0x7f08001f

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$18;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$18;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 465
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/vivo/motionrecognition/SmartWakeSettings$19;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vivo/motionrecognition/SmartWakeSettings$19;-><init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 473
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->addGesture:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_c

    .line 474
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v8, "intent":Landroid/content/Intent;
    const-string v14, "android.vivo.custom.gesture.main"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/vivo/motionrecognition/SmartWakeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 477
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    move-object/from16 v14, p2

    .line 478
    check-cast v14, Lcom/vivo/motionrecognition/custom/CustomPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/motionrecognition/SmartWakeSettings;->mCustomPreference:Lcom/vivo/motionrecognition/custom/CustomPreference;

    invoke-virtual {v14}, Lcom/vivo/motionrecognition/custom/CustomPreference;->getIndex()I

    move-result v6

    .line 480
    .local v6, "index":I
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getIndexDataItem(I)Lcom/vivo/motionrecognition/custom/DataItem;

    move-result-object v9

    .line 481
    .local v9, "item":Lcom/vivo/motionrecognition/custom/DataItem;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 482
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v14, "android.vivo.custom.gesture.edit"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v14, "index"

    invoke-virtual {v8, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    const-string v14, "function"

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getFunction()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getFunction()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_d

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getAppName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    .line 486
    :cond_d
    const-string v14, "appName"

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getAppName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v14, "pkgname"

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getPkName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v14, "clsName"

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getClsName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :goto_1
    const-string v14, "points"

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getPoints()Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v15}, Lcom/vivo/motionrecognition/SmartWakeSettings;->getPatternString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/vivo/motionrecognition/SmartWakeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 490
    :cond_e
    const-string v14, "callName"

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v14, "callnumber"

    invoke-virtual {v9}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onResume()V

    .line 510
    const-string v0, "CUSTOM_VIVO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------onResume()--------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isStartApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v0, "CUSTOM_VIVO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCreate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isCreate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, "CUSTOM_VIVO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GestureSingleton.getGestureSingleton().getGestureItems().size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-boolean v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isCreate:Z

    if-eqz v0, :cond_1

    .line 514
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-direct {p0, v3}, Lcom/vivo/motionrecognition/SmartWakeSettings;->queryGesture(Z)V

    .line 520
    :goto_0
    iput-boolean v3, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isCreate:Z

    .line 529
    :goto_1
    return-void

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->removeAddGesture()V

    .line 518
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->initNewGesture()V

    goto :goto_0

    .line 522
    :cond_1
    iget-boolean v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isStartApp:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->isLoadCustomGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-direct {p0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->isAddPreference()V

    .line 524
    invoke-direct {p0, v3}, Lcom/vivo/motionrecognition/SmartWakeSettings;->queryGesture(Z)V

    goto :goto_1

    .line 526
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings;->isStartApp:Z

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 533
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onStart()V

    .line 534
    return-void
.end method
