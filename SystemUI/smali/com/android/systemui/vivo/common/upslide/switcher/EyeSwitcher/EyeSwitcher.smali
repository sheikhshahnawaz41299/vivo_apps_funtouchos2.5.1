.class public Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "EyeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;
    }
.end annotation


# static fields
.field private static final EYE_PROTECTION_OPENED:Ljava/lang/String; = "eye_protection_opened"

.field private static final NIGHT_MODE_END_HOUR:Ljava/lang/String; = "night_mode_end_hour"

.field private static final NIGHT_MODE_END_MINUTE:Ljava/lang/String; = "night_mode_end_minute"

.field private static final NIGHT_MODE_SCHEDULE:Ljava/lang/String; = "night_mode_shecdul"

.field private static final NIGHT_MODE_START_HOUR:Ljava/lang/String; = "night_mode_start_hour"

.field private static final NIGHT_MODE_START_MINUTE:Ljava/lang/String; = "night_mode_start_minute"

.field private static final TAG:Ljava/lang/String; = "EyeSwitcher"


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mColorManager:Lvivo/common/FtColorManager;

.field private mEyeProtectionOn:Z

.field private mNightModeAlarmAlertedDuringScreenOff:Z

.field private mTaskOnScreenOn:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;

.field private mVivoCollectData:Lcom/vivo/common/VivoCollectData;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 43
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mColorManager:Lvivo/common/FtColorManager;

    .line 44
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z

    .line 45
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;ZZ)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTaskOnScreenOn:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;

    .line 47
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mNightModeAlarmAlertedDuringScreenOff:Z

    .line 48
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Lvivo/common/FtColorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mColorManager:Lvivo/common/FtColorManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;
    .param p1, "x1"    # Lvivo/common/FtColorManager;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mColorManager:Lvivo/common/FtColorManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->getTargetColorMode(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mNightModeAlarmAlertedDuringScreenOff:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mNightModeAlarmAlertedDuringScreenOff:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->isNowDuringTimeScope()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTaskOnScreenOn:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->showEyeProtectionTipIfNeeded()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->updateNightModeState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->collectUserData(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private collectUserData(Z)V
    .locals 12
    .param p1, "on"    # Z

    .prologue
    const/4 v10, 0x1

    .line 155
    const-string v2, "1023"

    .line 157
    .local v2, "eventId":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    invoke-virtual {v0, v2}, Lcom/vivo/common/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const-string v0, "EyeSwitcher"

    const-string v1, "collectUserData >>> can not collect user data!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v3, "102312"

    .line 163
    .local v3, "label":Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 164
    .local v11, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sw"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private getEndTime()Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 288
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "night_mode_end_hour"

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 289
    .local v1, "endHour":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "night_mode_end_minute"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 290
    .local v2, "endMinute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    .local v0, "end":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 292
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 294
    const-string v3, "EyeSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEndTime >>> endHour:endMinute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v0
.end method

.method private getStartTime()Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 276
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "night_mode_start_hour"

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 277
    .local v1, "startHour":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "night_mode_start_minute"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 278
    .local v2, "startMinute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 279
    .local v0, "start":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 280
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 282
    const-string v3, "EyeSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStartTime >>> startHour:startMinute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-object v0
.end method

.method private getTargetColorMode(Z)I
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/16 v5, 0x15

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "colorMode":I
    if-eqz p1, :cond_1

    .line 136
    const/4 v1, 0x1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->readScreenBrightness()I

    move-result v0

    .line 139
    .local v0, "brightness":I
    const-string v2, "EyeSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTargetColorMode >>> brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-lez v0, :cond_2

    if-gt v0, v5, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->isModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    const/4 v1, 0x2

    goto :goto_0

    .line 142
    :cond_2
    if-le v0, v5, :cond_0

    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->isModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private hasEyeProtectionOpened()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "eye_protection_opened"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 250
    .local v0, "result":I
    const-string v3, "EyeSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasEyeProtectionOpened >>> result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isModeAvailable(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mColorManager:Lvivo/common/FtColorManager;

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mColorManager:Lvivo/common/FtColorManager;

    invoke-virtual {v1, p1}, Lvivo/common/FtColorManager;->isModeExist(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNowDuringTimeScope()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->getStartTime()Ljava/util/Calendar;

    move-result-object v5

    .line 301
    .local v5, "start":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->getEndTime()Ljava/util/Calendar;

    move-result-object v0

    .line 302
    .local v0, "end":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 304
    .local v1, "now":Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 305
    .local v2, "nowHour":I
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 306
    .local v3, "nowMinute":I
    const-string v7, "EyeSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNowDuringTimeScope >>> nowHour:nowMinute = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 315
    .local v4, "result":Z
    :goto_0
    const-string v6, "EyeSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNowDuringTimeScope >>> result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return v4

    .end local v4    # "result":Z
    :cond_0
    move v4, v6

    .line 310
    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .restart local v4    # "result":Z
    :cond_2
    :goto_1
    goto :goto_0

    .end local v4    # "result":Z
    :cond_3
    move v4, v6

    goto :goto_1
.end method

.method public static readFileByline(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 364
    const/4 v4, 0x0

    .line 365
    .local v4, "result":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 368
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 374
    if-eqz v3, :cond_2

    .line 376
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 383
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v4

    .line 377
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    const-string v5, "EyeSwitcher"

    const-string v6, "readFileByline >>> failed to close BufferedReader!"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 380
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const-string v5, "EyeSwitcher"

    const-string v6, "readFileByline >>> failed to read the file!"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    if-eqz v2, :cond_0

    .line 376
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 377
    :catch_2
    move-exception v0

    .line 378
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    const-string v5, "EyeSwitcher"

    const-string v6, "readFileByline >>> failed to close BufferedReader!"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 376
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 380
    :cond_1
    :goto_3
    throw v5

    .line 377
    :catch_3
    move-exception v0

    .line 378
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    const-string v6, "EyeSwitcher"

    const-string v7, "readFileByline >>> failed to close BufferedReader!"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 374
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 370
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private readScreenBrightness()I
    .locals 5

    .prologue
    .line 353
    const-string v3, "/sys/class/leds/lcd-backlight/brightness"

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->readFileByline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "brightnessString":Ljava/lang/String;
    const/4 v2, -0x1

    .line 356
    .local v2, "result":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 360
    :goto_0
    return v2

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EyeSwitcher"

    const-string v4, "readScreenBrightness >>> cannot parse string to integer!"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshDisplayByRetrievingColorManager()V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V

    invoke-static {v2, v1, v3}, Lvivo/common/FtColorManager;->getInstanceWithCallBack(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)I

    move-result v0

    .line 92
    .local v0, "result":I
    const-string v1, "EyeSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshDisplayByRetrievingColorManager >>> result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private showEyeProtectionTipIfNeeded()V
    .locals 4

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->hasEyeProtectionOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0238

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0256

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0257

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$6;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    .line 268
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "eye_protection_opened"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private updateNightModeState(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 116
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;

    const-string v1, "update_night_mode_state"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Ljava/lang/String;Z)V

    .line 130
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 400
    :cond_0
    return-void
.end method

.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 113
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$7;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public onNightModeAlarmAlert()V
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 346
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    const-string v1, "EyeSwitcher"

    const-string v2, "onNightModeAlarmAlert >>> screen off"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mNightModeAlarmAlertedDuringScreenOff:Z

    .line 350
    :cond_0
    return-void
.end method

.method public onNightModeChanged()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->refreshDisplay()V

    .line 221
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "EyeSwitcher"

    const-string v1, "onScreenTurnOn"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTaskOnScreenOn:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;->valid:Z

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTaskOnScreenOn:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;->on:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->updateNightModeState(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTaskOnScreenOn:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$TaskOnScreenOn;->valid:Z

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "EyeSwitcher"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->getSwitcherIcon()V

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->refreshDisplayByRetrievingColorManager()V

    .line 105
    new-instance v0, Lcom/vivo/common/VivoCollectData;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 106
    return-void
.end method

.method public refreshDisplay()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mColorManager:Lvivo/common/FtColorManager;

    if-nez v4, :cond_1

    .line 57
    const-string v2, "EyeSwitcher"

    const-string v3, "refreshDisplay >>> mColorManager is null"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->refreshDisplayByRetrievingColorManager()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mColorManager:Lvivo/common/FtColorManager;

    invoke-virtual {v4}, Lvivo/common/FtColorManager;->getActiveMode()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_2
    const-string v2, "EyeSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshDisplay >>> mEyeProtectionOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTextColorLight:I

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 73
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_4
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v4, v3

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EyeSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshDisplay >>> getActiveMode() throws a exception! e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z

    if-nez v4, :cond_3

    :goto_5
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mEyeProtectionOn:Z

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_5

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mTextColorDark:I

    goto :goto_3

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 197
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$4;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 217
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
