.class public final Lcom/android/systemui/vivo/common/utils/VivoWhiteList;
.super Ljava/lang/Object;
.source "VivoWhiteList.java"


# static fields
.field public static final DESKTOP_ICON_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IM_THIRD_PART_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYGUARD_NOTIFICATION_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_ACTIVTY_START_CHANGED_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_TASK_EXCLUDE_ACTIVITY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_TASK_EXCLUDE_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_APP_AS_THIRD_PART_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PART_AS_SYSTEM_APP_AS_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_NOTIFICATION_WHITLE_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_MAIN_ACTIVTY_ICON_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v4

    const-string v1, "jp.naver.line.android"

    aput-object v1, v0, v5

    const-string v1, "com.bbm"

    aput-object v1, v0, v6

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.instagram.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.viber.voip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.facebook.orca"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->KEYGUARD_NOTIFICATION_APP_LIST:Ljava/util/ArrayList;

    .line 12
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.phone"

    aput-object v1, v0, v3

    const-string v1, "com.android.mms"

    aput-object v1, v0, v4

    const-string v1, "com.android.email"

    aput-object v1, v0, v5

    const-string v1, "com.bbk.appstore"

    aput-object v1, v0, v6

    const-string v1, "com.vivo.game"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.vivo.Tips"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.viber.voip"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.facebook.orca"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.minus.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.bbm"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.instagram.android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->DESKTOP_ICON_APP_LIST:Ljava/util/ArrayList;

    .line 16
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.apps.maps"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gms"

    aput-object v1, v0, v5

    const-string v1, "com.android.chrome"

    aput-object v1, v0, v6

    const-string v1, "com.quickoffice.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.google.android.apps.genie.geniewidget"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.plus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.android.play.games"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.google.android.syncadapters.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.android.apps.docs"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.google.android.apps.photos"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.nuance.swype.vivo"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.mediatek.mtklogger"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.emoji.keyboard.touchpal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->THIRD_PART_AS_SYSTEM_APP_AS_LIST:Ljava/util/ArrayList;

    .line 23
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.vivo.compass"

    aput-object v1, v0, v3

    const-string v1, "com.vivo.PCTools"

    aput-object v1, v0, v4

    const-string v1, "com.bbk.PCTools"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->SYSTEM_APP_AS_THIRD_PART_LIST:Ljava/util/ArrayList;

    .line 25
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.nuance.swype.vivo"

    aput-object v1, v0, v3

    const-string v1, "com.mediatek.mtklogger"

    aput-object v1, v0, v4

    const-string v1, "com.bbk.photoframewidget"

    aput-object v1, v0, v5

    const-string v1, "com.emoji.keyboard.touchpal"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->RECENT_TASK_EXCLUDE_APP_LIST:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "jp.naver.line.android"

    aput-object v1, v0, v3

    const-string v1, "com.whatsapp"

    aput-object v1, v0, v4

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v5

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v6

    const-string v1, "com.facebook.orca"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->IM_THIRD_PART_APP_LIST:Ljava/util/ArrayList;

    .line 32
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v3

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->MAIN_ACTIVTY_START_CHANGED_APP_LIST:Ljava/util/ArrayList;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->USE_MAIN_ACTIVTY_ICON_APP_LIST:Ljava/util/ArrayList;

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.facebook.composer.shareintent.ImplicitShareIntentHandler"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->RECENT_TASK_EXCLUDE_ACTIVITY_LIST:Ljava/util/ArrayList;

    .line 39
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.providers.downloads"

    aput-object v1, v0, v3

    const-string v1, "com.bbk.theme"

    aput-object v1, v0, v4

    const-string v1, "com.baidu.BaiduMap"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->UPDATE_NOTIFICATION_WHITLE_APP_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
