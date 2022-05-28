.class public Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;
.super Ljava/lang/Object;
.source "BrightnessConstants.java"


# static fields
.field public static final ACTION_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.BRIGHTNESS_CHANGED"

.field public static final MAXIMUM_BACKLIGHT:I

.field public static final MINIMUM_BACKLIGHT:I

.field public static final TYPE_DRAWABLE:I = 0x1

.field public static final TYPE_VIEW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/BackLightUtils;->getBackLightValue(I)I

    move-result v0

    sput v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MINIMUM_BACKLIGHT:I

    .line 7
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/BackLightUtils;->getBackLightValue(I)I

    move-result v0

    sput v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MAXIMUM_BACKLIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
