.class public Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;
.super Ljava/lang/Object;
.source "KeyguardTheme.java"


# static fields
.field public static final LOCK_SCREEN_NATURE:I = 0x8

.field public static final LOCK_SCREEN_NATURE_2:I = 0xc

.field public static final LOCK_SCREEN_NATURE_2_SIMPLE:I = 0xe

.field public static final LOCK_SCREEN_NATURE_GOLD:I = 0x10

.field public static final LOCK_SCREEN_ROM_3:I = 0xf

.field public static final LOCK_SCREEN_STYLE_ANDROID:I = 0x7

.field public static final LOCK_SCREEN_STYLE_CLASSICAL:I = 0x0

.field public static final LOCK_SCREEN_STYLE_CRASH:I = 0x3

.field public static final LOCK_SCREEN_STYLE_DEFAULT:I = 0x9

.field public static final LOCK_SCREEN_STYLE_FOUR:I = 0x2

.field public static final LOCK_SCREEN_STYLE_HALF_FOLD:I = 0x6

.field public static final LOCK_SCREEN_STYLE_LED:I = 0x1

.field public static final LOCK_SCREEN_STYLE_NATURE_PATTERN:I = 0x3e9

.field public static final LOCK_SCREEN_STYLE_OC:I = 0x5

.field public static final LOCK_SCREEN_STYLE_PAGE:I = 0xb

.field public static final LOCK_SCREEN_STYLE_PINK:I = 0x4

.field public static final LOCK_SCREEN_STYLE_RIPPLE:I = 0xd

.field public static final LOCK_SCREEN_STYLE_TP:I = -0xa

.field public static final LOCK_SCREEN_STYLE_TP_BABY:I = -0x5

.field public static final LOCK_SCREEN_STYLE_TP_BEAN:I = -0x1

.field public static final LOCK_SCREEN_STYLE_TP_BIRD:I = -0x2

.field public static final LOCK_SCREEN_STYLE_TP_PHOTO:I = -0x4

.field public static final LOCK_SCREEN_STYLE_TP_RABBIT:I = -0x3

.field public static final LOCK_SCREEN_STYLE_ZK:I = -0xc

.field public static final LOCK_SCREEN_VL:I = -0xb

.field private static mCurrentThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0xe

    sput v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canShowLiveWallpaper()Z
    .locals 2

    .prologue
    .line 181
    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableDoubleClick()Z
    .locals 2

    .prologue
    .line 189
    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableQuickChargeView()Z
    .locals 2

    .prologue
    .line 203
    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentPartner()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    const-string v0, "vivo"

    .line 161
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    packed-switch v1, :pswitch_data_0

    .line 173
    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    const-string v0, "tianping"

    .line 164
    goto :goto_0

    .line 166
    :pswitch_1
    const-string v0, "weile"

    .line 167
    goto :goto_0

    .line 169
    :pswitch_2
    const-string v0, "zhangku"

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentThemeId()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    return v0
.end method

.method public static getDefaultThemeId()I
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method public static setCurrentThemeId(I)V
    .locals 0
    .param p0, "themeId"    # I

    .prologue
    .line 156
    sput p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    .line 157
    return-void
.end method

.method public static shouldEnableShortcut(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 177
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showNotifications()Z
    .locals 2

    .prologue
    .line 195
    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->mCurrentThemeId:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
