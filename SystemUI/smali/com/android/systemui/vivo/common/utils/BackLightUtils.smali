.class public Lcom/android/systemui/vivo/common/utils/BackLightUtils;
.super Ljava/lang/Object;
.source "BackLightUtils.java"


# static fields
.field private static final AUTO_BACKLIGHT:I = 0x72

.field private static final DEFAULT_BACKLIGHT:I = 0x82

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackLightValue(I)I
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 18
    const/16 v0, 0x72

    .line 19
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 21
    :pswitch_0
    const/16 v0, 0x14

    .line 22
    goto :goto_0

    .line 24
    :pswitch_1
    const/16 v0, 0x72

    .line 25
    const-string v1, "PD1302"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getProductModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/16 v0, 0x7a

    goto :goto_0

    .line 30
    :pswitch_2
    const/16 v0, 0x82

    .line 31
    goto :goto_0

    .line 33
    :pswitch_3
    const/16 v0, 0xff

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
