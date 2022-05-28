.class public final enum Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;
.super Ljava/lang/Enum;
.source "VivoVolumeCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VolumeCategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

.field public static final enum TypeInternal:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

.field public static final enum TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

.field public static final enum TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

.field public static final enum TypeSD:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

.field public static final enum TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    const-string v1, "TypeSD"

    invoke-direct {v0, v1, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSD:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    const-string v1, "TypeInternal"

    invoke-direct {v0, v1, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeInternal:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    const-string v1, "TypeOtg"

    invoke-direct {v0, v1, v4}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    const-string v1, "TypeSystem"

    invoke-direct {v0, v1, v5}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    const-string v1, "TypeRam"

    invoke-direct {v0, v1, v6}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSD:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeInternal:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->$VALUES:[Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    return-object v0
.end method

.method public static values()[Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->$VALUES:[Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {v0}, [Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    return-object v0
.end method
