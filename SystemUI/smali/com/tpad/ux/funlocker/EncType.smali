.class public final enum Lcom/tpad/ux/funlocker/EncType;
.super Ljava/lang/Enum;
.source "EncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tpad/ux/funlocker/EncType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENC_OPPO:Lcom/tpad/ux/funlocker/EncType;

.field public static final enum ENC_OTHER:Lcom/tpad/ux/funlocker/EncType;

.field public static final enum ENC_TPAD:Lcom/tpad/ux/funlocker/EncType;

.field private static final synthetic ENUM$VALUES:[Lcom/tpad/ux/funlocker/EncType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/tpad/ux/funlocker/EncType;

    const-string v1, "ENC_TPAD"

    invoke-direct {v0, v1, v2, v2}, Lcom/tpad/ux/funlocker/EncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/EncType;->ENC_TPAD:Lcom/tpad/ux/funlocker/EncType;

    .line 6
    new-instance v0, Lcom/tpad/ux/funlocker/EncType;

    const-string v1, "ENC_OPPO"

    invoke-direct {v0, v1, v3, v3}, Lcom/tpad/ux/funlocker/EncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/EncType;->ENC_OPPO:Lcom/tpad/ux/funlocker/EncType;

    .line 7
    new-instance v0, Lcom/tpad/ux/funlocker/EncType;

    const-string v1, "ENC_OTHER"

    invoke-direct {v0, v1, v4, v4}, Lcom/tpad/ux/funlocker/EncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/EncType;->ENC_OTHER:Lcom/tpad/ux/funlocker/EncType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tpad/ux/funlocker/EncType;

    sget-object v1, Lcom/tpad/ux/funlocker/EncType;->ENC_TPAD:Lcom/tpad/ux/funlocker/EncType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tpad/ux/funlocker/EncType;->ENC_OPPO:Lcom/tpad/ux/funlocker/EncType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tpad/ux/funlocker/EncType;->ENC_OTHER:Lcom/tpad/ux/funlocker/EncType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tpad/ux/funlocker/EncType;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/EncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/tpad/ux/funlocker/EncType;->value:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tpad/ux/funlocker/EncType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tpad/ux/funlocker/EncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tpad/ux/funlocker/EncType;

    return-object v0
.end method

.method public static values()[Lcom/tpad/ux/funlocker/EncType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tpad/ux/funlocker/EncType;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/EncType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tpad/ux/funlocker/EncType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Value()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/tpad/ux/funlocker/EncType;->value:I

    return v0
.end method
