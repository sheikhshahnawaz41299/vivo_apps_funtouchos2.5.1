.class Lcom/android/systemui/vivo/common/network/VivoWifiIcons;
.super Ljava/lang/Object;
.source "VivoWifiIcons.java"


# static fields
.field static final VIVO_WIFI_ACTIVITY_COLOR:[I

.field static final VIVO_WIFI_ACTIVITY_WHITE:[I

.field static final VIVO_WIFI_SIGNAL_STRENGTH_COLOR:[I

.field static final VIVO_WIFI_SIGNAL_STRENGTH_WHITE:[I

.field static final VIVO_WIFI_TO_WIFI_COLOR:[I

.field static final VIVO_WIFI_TO_WIFI_WHITE:[I

.field static final WIFI_LEVEL_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 11
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_SIGNAL_STRENGTH_COLOR:[I

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_SIGNAL_STRENGTH_WHITE:[I

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_ACTIVITY_COLOR:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_ACTIVITY_WHITE:[I

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_TO_WIFI_COLOR:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_TO_WIFI_WHITE:[I

    .line 53
    sget-object v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->VIVO_WIFI_SIGNAL_STRENGTH_COLOR:[I

    array-length v0, v0

    sput v0, Lcom/android/systemui/vivo/common/network/VivoWifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 11
    nop

    :array_0
    .array-data 4
        0x7f020623
        0x7f020625
        0x7f020627
        0x7f020629
    .end array-data

    .line 18
    :array_1
    .array-data 4
        0x7f020624
        0x7f020626
        0x7f020628
        0x7f02062a
    .end array-data

    .line 25
    :array_2
    .array-data 4
        0x0
        0x7f02061d
        0x7f020621
        0x7f02061f
    .end array-data

    .line 32
    :array_3
    .array-data 4
        0x0
        0x7f02061e
        0x7f020622
        0x7f020620
    .end array-data

    .line 39
    :array_4
    .array-data 4
        0x7f02062c
        0x7f02062e
        0x7f020630
        0x7f020632
    .end array-data

    .line 46
    :array_5
    .array-data 4
        0x7f02062d
        0x7f02062f
        0x7f020631
        0x7f020633
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
