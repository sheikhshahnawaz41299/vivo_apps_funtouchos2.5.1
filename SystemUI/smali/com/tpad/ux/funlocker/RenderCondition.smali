.class public final enum Lcom/tpad/ux/funlocker/RenderCondition;
.super Ljava/lang/Enum;
.source "RenderCondition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tpad/ux/funlocker/RenderCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tpad/ux/funlocker/RenderCondition;

.field public static final enum RENDER_PAUSE:Lcom/tpad/ux/funlocker/RenderCondition;

.field public static final enum RENDER_START:Lcom/tpad/ux/funlocker/RenderCondition;

.field public static final enum RENDER_STOP:Lcom/tpad/ux/funlocker/RenderCondition;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/tpad/ux/funlocker/RenderCondition;

    const-string v1, "RENDER_START"

    invoke-direct {v0, v1, v2, v2}, Lcom/tpad/ux/funlocker/RenderCondition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_START:Lcom/tpad/ux/funlocker/RenderCondition;

    new-instance v0, Lcom/tpad/ux/funlocker/RenderCondition;

    const-string v1, "RENDER_PAUSE"

    invoke-direct {v0, v1, v3, v3}, Lcom/tpad/ux/funlocker/RenderCondition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_PAUSE:Lcom/tpad/ux/funlocker/RenderCondition;

    new-instance v0, Lcom/tpad/ux/funlocker/RenderCondition;

    const-string v1, "RENDER_STOP"

    invoke-direct {v0, v1, v4, v4}, Lcom/tpad/ux/funlocker/RenderCondition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_STOP:Lcom/tpad/ux/funlocker/RenderCondition;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tpad/ux/funlocker/RenderCondition;

    sget-object v1, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_START:Lcom/tpad/ux/funlocker/RenderCondition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_PAUSE:Lcom/tpad/ux/funlocker/RenderCondition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_STOP:Lcom/tpad/ux/funlocker/RenderCondition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tpad/ux/funlocker/RenderCondition;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/RenderCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/tpad/ux/funlocker/RenderCondition;->value:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tpad/ux/funlocker/RenderCondition;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tpad/ux/funlocker/RenderCondition;

    return-object v0
.end method

.method public static values()[Lcom/tpad/ux/funlocker/RenderCondition;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tpad/ux/funlocker/RenderCondition;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/RenderCondition;

    array-length v1, v0

    new-array v2, v1, [Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Value()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderCondition;->value:I

    return v0
.end method
