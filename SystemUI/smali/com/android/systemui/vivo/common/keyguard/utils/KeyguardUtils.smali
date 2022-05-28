.class public Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# static fields
.field public static final BROWSER_ACTIVITY:Ljava/lang/String; = "com.vivo.browser.BrowserActivity"

.field public static final BROWSER_PKG:Ljava/lang/String; = "com.vivo.browser"

.field public static final CAMERA_ACTIVITY:Ljava/lang/String; = "com.android.camera.CameraActivity"

.field public static final CAMERA_PKG:Ljava/lang/String; = "com.android.camera"

.field public static final COUNTRY_NUM:Ljava/lang/String;

.field public static final DIALER_ACTIVITY:Ljava/lang/String; = "com.android.dialer.BBKTwelveKeyDialer"

.field public static final DIALER_PKG:Ljava/lang/String; = "com.android.dialer"

.field public static final INTENT_CAMERA:I = 0x2

.field public static final INTENT_DIAL:I = 0x0

.field public static final INTENT_MMS:I = 0x1

.field public static final INTENT_SECURE_CAMERA:I = 0x5

.field public static final INTENT_UNREAD_CALL:I = 0x3

.field public static final INTENT_UNREAD_MMS:I = 0x4

.field public static final KEYGUARD_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "keyguard_settings"

.field public static final MMS_ACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field public static final MMS_PKG:Ljava/lang/String; = "com.android.mms"

.field public static final PRODUCT_MODEL:Ljava/lang/String;

.field public static final SETTING_FONT_ID:Ljava/lang/String; = "10641"

.field public static final SETTING_LEFT_PKG_ID:Ljava/lang/String; = "10644"

.field public static final SETTING_RIGHT_PKG_ID:Ljava/lang/String; = "10645"

.field public static final START_LEFT_PKG_ID:Ljava/lang/String; = "10642"

.field public static final START_RIGHT_PKG_ID:Ljava/lang/String; = "10643"

.field private static final TAG:Ljava/lang/String; = "KeyguardUtils"

.field public static final TYPE_WIDTH1080_HEIGHT1920:I = 0x5

.field public static final TYPE_WIDTH1440_HEIGHT2560:I = 0x6

.field public static final TYPE_WIDTH320_HEIGHT480:I = 0x0

.field public static final TYPE_WIDTH480_HEIGHT800:I = 0x1

.field public static final TYPE_WIDTH480_HEIGHT854:I = 0x2

.field public static final TYPE_WIDTH540_HEIGHT960:I = 0x3

.field public static final TYPE_WIDTH720_HEIGHT1080:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "ro.product.model.bbk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->PRODUCT_MODEL:Ljava/lang/String;

    .line 53
    const-string v0, "ro.product.customize.bbk"

    const-string v1, "N"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->COUNTRY_NUM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 289
    const-string v2, "keyguard_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    .local v0, "keyguardSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 291
    .local v1, "result":I
    const-string v2, "KeyguardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get value from SharedPreferences name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return v1
.end method

.method public static getIntent(I)Landroid/content/Intent;
    .locals 5
    .param p0, "category"    # I

    .prologue
    const/4 v4, 0x1

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p0, :pswitch_data_0

    .line 113
    :goto_0
    return-object v1

    .line 74
    :pswitch_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.dialer.BBKTwelveKeyDialer"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, "component":Landroid/content/ComponentName;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 80
    .end local v0    # "component":Landroid/content/ComponentName;
    :pswitch_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .restart local v0    # "component":Landroid/content/ComponentName;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 86
    .end local v0    # "component":Landroid/content/ComponentName;
    :pswitch_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.CameraActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .restart local v0    # "component":Landroid/content/ComponentName;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 92
    .end local v0    # "component":Landroid/content/ComponentName;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 98
    :pswitch_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.dialer.BBKTwelveKeyDialer"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .restart local v0    # "component":Landroid/content/ComponentName;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "calllogmode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 106
    .end local v0    # "component":Landroid/content/ComponentName;
    :pswitch_5
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .restart local v0    # "component":Landroid/content/ComponentName;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    const-string v2, "keyguard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public static getNotificationTopPadding(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getScreenSizeType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x1e0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 138
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 139
    .local v2, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 140
    .local v1, "height":I
    const/16 v4, 0x140

    if-ne v2, v4, :cond_1

    if-ne v1, v5, :cond_1

    .line 141
    const/4 v3, 0x0

    .line 155
    :cond_0
    :goto_0
    return v3

    .line 142
    :cond_1
    if-ne v2, v5, :cond_2

    const/16 v4, 0x320

    if-eq v1, v4, :cond_0

    .line 144
    :cond_2
    if-ne v2, v5, :cond_3

    const/16 v4, 0x356

    if-ne v1, v4, :cond_3

    .line 145
    const/4 v3, 0x2

    goto :goto_0

    .line 146
    :cond_3
    const/16 v4, 0x21c

    if-ne v2, v4, :cond_4

    const/16 v4, 0x3c0

    if-ne v1, v4, :cond_4

    .line 147
    const/4 v3, 0x3

    goto :goto_0

    .line 148
    :cond_4
    const/16 v4, 0x2d0

    if-ne v2, v4, :cond_5

    const/16 v4, 0x500

    if-ne v1, v4, :cond_5

    .line 149
    const/4 v3, 0x4

    goto :goto_0

    .line 150
    :cond_5
    const/16 v4, 0x438

    if-ne v2, v4, :cond_6

    const/16 v4, 0x780

    if-ne v1, v4, :cond_6

    .line 151
    const/4 v3, 0x5

    goto :goto_0

    .line 152
    :cond_6
    const/16 v4, 0x5a0

    if-ne v2, v4, :cond_0

    const/16 v4, 0xa00

    if-ne v1, v4, :cond_0

    .line 153
    const/4 v3, 0x6

    goto :goto_0
.end method

.method public static getVisitHideApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v8, "hideApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 235
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.applications.hideappprovider/hideapps_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    const-string v3, "hided=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    if-eqz v6, :cond_1

    .line 242
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 247
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 248
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "KeyguardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVisitHideApps error msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    if-eqz v6, :cond_0

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 255
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v8

    .line 251
    :cond_1
    if-eqz v6, :cond_0

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 251
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isCmccEntry()Z
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v0

    return v0
.end method

.method public static isPowerSaveMode()Z
    .locals 2

    .prologue
    .line 164
    const-string v0, "sys.super_power_save"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportHomeShortCut()Z
    .locals 2

    .prologue
    .line 268
    const-string v0, "PD1523F_EX"

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->PRODUCT_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1524F_EX"

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->PRODUCT_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1309F_EX"

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->PRODUCT_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1505F_EX"

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->PRODUCT_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    const-string v0, "KeyguardUtils"

    const-string v1, "isHomeShortCut"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicomEntry()Z
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v0

    return v0
.end method

.method public static putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put int to settings failed, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static putIntToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 281
    const-string v2, "KeyguardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into SharedPreferences"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "keyguard_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, "keyguardSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    .local v0, "keyguardSharePreferencesEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return-void
.end method

.method public static putStringToSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put string to settings failed, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 200
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 198
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 199
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

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static settingsGetString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
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

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeCollectData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "p_n"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "1064"

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 173
    return-void
.end method

.method public static writeDoubleClickCollectData(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "1008"

    const-string v3, "10083"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 179
    return-void
.end method

.method public static writeOnlineCollectData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 184
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "partner"

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->getCurrentPartner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v2, "network_name"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v2, "network_type"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v2, "action"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v2, "KeyguardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "partner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->getCurrentPartner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network_name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v2

    const-string v3, "1071"

    const-string v4, "10711"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 193
    return-void
.end method
