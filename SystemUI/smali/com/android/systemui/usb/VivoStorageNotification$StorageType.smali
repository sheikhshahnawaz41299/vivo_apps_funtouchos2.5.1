.class final enum Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
.super Ljava/lang/Enum;
.source "VivoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/VivoStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/usb/VivoStorageNotification$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

.field public static final enum ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

.field public static final enum InternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

.field public static final enum OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

.field public static final enum UnkownStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    const-string v1, "InternalStorage"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->InternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    new-instance v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    const-string v1, "ExternalStorage"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    new-instance v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    const-string v1, "OtgStorage"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    new-instance v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    const-string v1, "UnkownStorage"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->UnkownStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    sget-object v1, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->InternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->ExternalStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->OtgStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->UnkownStorage:Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->$VALUES:[Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/usb/VivoStorageNotification$StorageType;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->$VALUES:[Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    invoke-virtual {v0}, [Lcom/android/systemui/usb/VivoStorageNotification$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/usb/VivoStorageNotification$StorageType;

    return-object v0
.end method
