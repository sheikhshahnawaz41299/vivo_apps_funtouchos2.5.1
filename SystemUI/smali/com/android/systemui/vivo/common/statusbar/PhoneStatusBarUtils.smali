.class public Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;
.super Ljava/lang/Object;
.source "PhoneStatusBarUtils.java"


# static fields
.field private static NOTIFICATION_IGNORED_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarUtils"

.field private static final USE_REDRAW_ICON:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->NOTIFICATION_IGNORED_LIST:Ljava/util/ArrayList;

    .line 42
    sget-object v0, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->NOTIFICATION_IGNORED_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.bbkmusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->NOTIFICATION_IGNORED_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.VideoPlayer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearTextSpanned(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 293
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static invertSpannedToString(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V
    .locals 14
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 243
    const-string v11, "com.google.android.gm"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-eqz p0, :cond_0

    instance-of v11, p0, Landroid/view/ViewGroup;

    if-eqz v11, :cond_0

    .line 250
    const v11, 0x1020016

    :try_start_0
    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 251
    .local v10, "title":Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    .line 252
    const v11, 0x1020068

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 253
    .local v9, "text":Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    .line 256
    const v11, 0x102033a

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, "bigText":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    .line 260
    const v11, 0x1020340

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 261
    .local v2, "inboxText0":Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 264
    const v11, 0x1020341

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 265
    .local v3, "inboxText1":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 268
    const v11, 0x1020342

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 269
    .local v4, "inboxText2":Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 272
    const v11, 0x1020343

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 273
    .local v5, "inboxText3":Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 276
    const v11, 0x1020344

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 277
    .local v6, "inboxText4":Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 280
    const v11, 0x1020345

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 281
    .local v7, "inboxText5":Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 284
    const v11, 0x1020346

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 285
    .local v8, "inboxText6":Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->clearTextSpanned(Landroid/widget/TextView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_0

    .line 287
    .end local v0    # "bigText":Landroid/widget/TextView;
    .end local v2    # "inboxText0":Landroid/widget/TextView;
    .end local v3    # "inboxText1":Landroid/widget/TextView;
    .end local v4    # "inboxText2":Landroid/widget/TextView;
    .end local v5    # "inboxText3":Landroid/widget/TextView;
    .end local v6    # "inboxText4":Landroid/widget/TextView;
    .end local v7    # "inboxText5":Landroid/widget/TextView;
    .end local v8    # "inboxText6":Landroid/widget/TextView;
    .end local v9    # "text":Landroid/widget/TextView;
    .end local v10    # "title":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "PhoneStatusBarUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invertSpannedToString: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isIgnoredNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p0, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "result":Z
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 56
    :cond_0
    sget-object v1, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->NOTIFICATION_IGNORED_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 58
    const/4 v0, 0x1

    .line 61
    :cond_1
    return v0
.end method

.method public static isPhoneInCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 79
    :cond_1
    :goto_0
    return v0

    .line 76
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 77
    goto :goto_0
.end method

.method private static redrawAble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/CharSequence;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "expand"    # Z
    .param p3, "ticker"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-static {p1, p2, p3}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->needRedrawNotificationIcon(Ljava/lang/String;ZLjava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZI)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "forceRelease"    # Z
    .param p4, "instanceId"    # I

    .prologue
    .line 126
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public static redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "forceRelease"    # Z
    .param p4, "instanceId"    # I
    .param p5, "expand"    # Z
    .param p6, "ticker"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    invoke-static {p0, p2, p5, p6}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawAble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const v2, 0x1020006

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 138
    .local v1, "view":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 140
    if-eqz p3, :cond_2

    .line 141
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->releaseRedrawIcon(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p4}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIconLocked(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v1    # "view":Landroid/widget/ImageView;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneStatusBarUtils"

    const-string v3, "redraw icon error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static redrawIconLocked(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "instanceId"    # I

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->getBitmapForShade(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-lez p3, :cond_1

    .line 92
    invoke-static {p0, v0}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->drawCloneBitmapForNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 99
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 101
    .local v1, "iconPadding":I
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    .end local v1    # "iconPadding":I
    :cond_2
    return-void
.end method

.method public static redrawStatusBarIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "instanceId"    # I

    .prologue
    const/4 v0, 0x0

    .line 198
    const/4 v1, 0x0

    invoke-static {p0, p3, v0, v1}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawAble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIconLocked(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 202
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static releaseAllRedrawIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v1, 0x0

    .line 171
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawAble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->releaseRedrawIcon(Landroid/content/Context;Landroid/view/View;)V

    .line 180
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->releaseRedrawIcon(Landroid/content/Context;Landroid/view/View;)V

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->releaseRedrawIcon(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static releaseRedrawIcon(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 153
    const/4 v3, 0x0

    invoke-static {p0, v4, v3, v4}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawAble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 159
    .local v2, "view":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "object":Ljava/lang/Object;
    instance-of v3, v0, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 162
    check-cast v1, Landroid/graphics/Bitmap;

    .line 163
    .local v1, "tmpBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 165
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static releaseStatusBarRedrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconView"    # Landroid/view/View;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 212
    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v3}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawAble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, "object":Ljava/lang/Object;
    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 219
    check-cast v1, Landroid/graphics/Bitmap;

    .line 220
    .local v1, "tmpBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 222
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static setTextViewDirection(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 228
    const-string v1, "com.android.incallui"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    const/16 v2, 0x2712

    if-eq v1, v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 233
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    .local v0, "view":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 235
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 236
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
