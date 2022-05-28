.class public final enum Lcom/tpad/ux/funlocker/Sntype;
.super Ljava/lang/Enum;
.source "Sntype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tpad/ux/funlocker/Sntype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_3D:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_1:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_2:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_3:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_4:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_5:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_ANY:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_PARAM:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_EXT_STD:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_IMAGE:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_IMAGES:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_MOVIE:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_NONE:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_SOUND:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_STRING:Lcom/tpad/ux/funlocker/Sntype;

.field public static final enum UI_SNTYPE_STRINGS:Lcom/tpad/ux/funlocker/Sntype;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_NONE:Lcom/tpad/ux/funlocker/Sntype;

    .line 6
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_IMAGE"

    invoke-direct {v0, v1, v5, v5}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_IMAGE:Lcom/tpad/ux/funlocker/Sntype;

    .line 7
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_IMAGES"

    invoke-direct {v0, v1, v6, v6}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_IMAGES:Lcom/tpad/ux/funlocker/Sntype;

    .line 8
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_STRING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v7, v2}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_STRING:Lcom/tpad/ux/funlocker/Sntype;

    .line 9
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_STRINGS"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v8, v2}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_STRINGS:Lcom/tpad/ux/funlocker/Sntype;

    .line 10
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_SOUND"

    const/4 v2, 0x5

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_SOUND:Lcom/tpad/ux/funlocker/Sntype;

    .line 11
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_MOVIE"

    const/4 v2, 0x6

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_MOVIE:Lcom/tpad/ux/funlocker/Sntype;

    .line 12
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_3D"

    const/4 v2, 0x7

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_3D:Lcom/tpad/ux/funlocker/Sntype;

    .line 13
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_ANY"

    const/16 v2, 0x8

    const/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_ANY:Lcom/tpad/ux/funlocker/Sntype;

    .line 14
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_STD"

    const/16 v2, 0x9

    const/16 v3, 0x1100

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_STD:Lcom/tpad/ux/funlocker/Sntype;

    .line 15
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_PARAM"

    const/16 v2, 0xa

    const/16 v3, 0x1200

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_PARAM:Lcom/tpad/ux/funlocker/Sntype;

    .line 16
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_1"

    const/16 v2, 0xb

    const/16 v3, 0x1100

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_1:Lcom/tpad/ux/funlocker/Sntype;

    .line 17
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_2"

    const/16 v2, 0xc

    const/16 v3, 0x1200

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_2:Lcom/tpad/ux/funlocker/Sntype;

    .line 18
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_3"

    const/16 v2, 0xd

    const/16 v3, 0x1300

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_3:Lcom/tpad/ux/funlocker/Sntype;

    .line 19
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_4"

    const/16 v2, 0xe

    const/16 v3, 0x1400

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_4:Lcom/tpad/ux/funlocker/Sntype;

    .line 20
    new-instance v0, Lcom/tpad/ux/funlocker/Sntype;

    const-string v1, "UI_SNTYPE_EXT_5"

    const/16 v2, 0xf

    const/16 v3, 0x1500

    invoke-direct {v0, v1, v2, v3}, Lcom/tpad/ux/funlocker/Sntype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_5:Lcom/tpad/ux/funlocker/Sntype;

    .line 3
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/tpad/ux/funlocker/Sntype;

    sget-object v1, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_NONE:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_IMAGE:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_IMAGES:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_STRING:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_STRINGS:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_SOUND:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_MOVIE:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_3D:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_ANY:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_STD:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_PARAM:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_1:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_2:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_3:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_4:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_EXT_5:Lcom/tpad/ux/funlocker/Sntype;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tpad/ux/funlocker/Sntype;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/Sntype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/tpad/ux/funlocker/Sntype;->value:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tpad/ux/funlocker/Sntype;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tpad/ux/funlocker/Sntype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tpad/ux/funlocker/Sntype;

    return-object v0
.end method

.method public static values()[Lcom/tpad/ux/funlocker/Sntype;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tpad/ux/funlocker/Sntype;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/Sntype;

    array-length v1, v0

    new-array v2, v1, [Lcom/tpad/ux/funlocker/Sntype;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Value()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/tpad/ux/funlocker/Sntype;->value:I

    return v0
.end method
