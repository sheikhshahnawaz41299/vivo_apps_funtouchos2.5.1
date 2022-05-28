.class public final Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;
.super Ljava/lang/Object;
.source "VivoOperatorNumeric.java"


# static fields
.field public static final AIRTEL_OPERATOR_NUMERIC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CMCC_OPERATOR_NUMERIC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TELECOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNICOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;
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
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v2

    const-string v1, "46002"

    aput-object v1, v0, v3

    const-string v1, "46007"

    aput-object v1, v0, v4

    const-string v1, "46008"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->CMCC_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    .line 9
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v2

    const-string v1, "46009"

    aput-object v1, v0, v3

    const-string v1, "45407"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->UNICOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46003"

    aput-object v1, v0, v2

    const-string v1, "46011"

    aput-object v1, v0, v3

    const-string v1, "46012"

    aput-object v1, v0, v4

    const-string v1, "45502"

    aput-object v1, v0, v5

    const-string v1, "45507"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->TELECOM_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    .line 11
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "40552"

    aput-object v1, v0, v2

    const-string v1, "40498"

    aput-object v1, v0, v3

    const-string v1, "40431"

    aput-object v1, v0, v4

    const-string v1, "40490"

    aput-object v1, v0, v5

    const-string v1, "40493"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "40492"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "40501"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "40553"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "40470"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "40556"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "40416"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "40410"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "40440"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "40449"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "40496"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "40403"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "40555"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "40495"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "40445"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "40402"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "40494"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "40554"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "40497"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoOperatorNumeric;->AIRTEL_OPERATOR_NUMERIC:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
