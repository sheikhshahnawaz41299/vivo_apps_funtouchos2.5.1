.class public Lcom/android/keyguard/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final PROP_KEGUAR_FINGER:Ljava/lang/String; = "sys.fingerprint.keguard"

.field private static final TAG:Ljava/lang/String; = "KeyguardUtils"

.field private static mDrawingPattern:Z

.field private static mFingerMessageShow:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateFormatString:Ljava/lang/String;

.field private mDayFormatString:Ljava/lang/String;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mFingerMessageShow:Z

    .line 53
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mDrawingPattern:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    sget v0, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_month_no_year:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mDateFormatString:Ljava/lang/String;

    .line 63
    sget v0, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_no_year:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mDayFormatString:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public static getEyeLock(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_eye"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_open_unlock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 86
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getFingerMessageShow()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mFingerMessageShow:Z

    return v0
.end method

.method public static getNatureType(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_theme_id"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "id":I
    const-string v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYGUARD_THEME_ID id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v1, 0x1

    .line 77
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDrawingPattern()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mDrawingPattern:Z

    return v0
.end method

.method public static isPowerSaveMode()Z
    .locals 2

    .prologue
    .line 129
    const-string v0, "sys.super_power_save"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDrawingPattern(Z)V
    .locals 0
    .param p0, "drawingPattern"    # Z

    .prologue
    .line 146
    sput-boolean p0, Lcom/android/keyguard/KeyguardUtils;->mDrawingPattern:Z

    .line 147
    return-void
.end method

.method public static setFingerMessageShow(Z)V
    .locals 0
    .param p0, "fingerMessageShow"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/keyguard/KeyguardUtils;->mFingerMessageShow:Z

    .line 135
    return-void
.end method

.method public static settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 124
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 122
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get setting failed, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public refreshDate(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "DateView"    # Landroid/widget/TextView;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_month_no_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mDateFormatString:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mDateFormatString:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setBackDrawable(Landroid/view/View;)V
    .locals 5
    .param p1, "vivoView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 91
    const-string v2, "KeyguardUtils"

    const-string v3, "============setBackDrawable=========="

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v2, "ro.vivo.op.entry"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ro.vivo.op.entry"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMCC_RW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/VivoWallpaperManager;

    move-result-object v1

    .line 98
    .local v1, "vwm":Lcom/vivo/common/utils/VivoWallpaperManager;
    invoke-virtual {v1, v4}, Lcom/vivo/common/utils/VivoWallpaperManager;->getLockScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 100
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "vwm":Lcom/vivo/common/utils/VivoWallpaperManager;
    :cond_1
    return-void
.end method

.method public updateWeekInfo(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "WeekView"    # Landroid/widget/TextView;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_no_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mDayFormatString:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mDayFormatString:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method
