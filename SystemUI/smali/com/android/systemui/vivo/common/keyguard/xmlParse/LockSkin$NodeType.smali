.class final enum Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;
.super Ljava/lang/Enum;
.source "LockSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

.field public static final enum BOOLEAN:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

.field public static final enum DOUBLE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

.field public static final enum IMAGE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

.field public static final enum INT:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

.field public static final enum MOVIE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->IMAGE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->MOVIE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->DOUBLE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->INT:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->BOOLEAN:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->IMAGE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->MOVIE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->DOUBLE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->INT:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->BOOLEAN:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->$VALUES:[Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->$VALUES:[Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    invoke-virtual {v0}, [Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    return-object v0
.end method
