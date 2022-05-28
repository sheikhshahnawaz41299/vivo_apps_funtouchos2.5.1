.class public final enum Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;
.super Ljava/lang/Enum;
.source "StorageManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

.field public static final enum NoStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

.field public static final enum SDStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

.field public static final enum UStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

.field public static final enum UsbStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    const-string v1, "UStorage"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    const-string v1, "SDStorage"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->SDStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    const-string v1, "UsbStorage"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    const-string v1, "NoStorage"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->NoStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->SDStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->NoStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->$VALUES:[Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->$VALUES:[Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    invoke-virtual {v0}, [Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    return-object v0
.end method
