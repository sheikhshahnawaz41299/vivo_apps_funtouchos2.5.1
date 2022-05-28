.class public final enum Lcom/tpad/ux/funlocker/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tpad/ux/funlocker/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tpad/ux/funlocker/ActionType;

.field public static final enum FLAG_ACTION_OTHERS:Lcom/tpad/ux/funlocker/ActionType;

.field public static final enum FLAG_ACTION_TPADSZ:Lcom/tpad/ux/funlocker/ActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/tpad/ux/funlocker/ActionType;

    const-string v1, "FLAG_ACTION_TPADSZ"

    const-string v2, "ki.tp.action.broadcast.JS_INVOKED"

    invoke-direct {v0, v1, v3, v2}, Lcom/tpad/ux/funlocker/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tpad/ux/funlocker/ActionType;->FLAG_ACTION_TPADSZ:Lcom/tpad/ux/funlocker/ActionType;

    .line 6
    new-instance v0, Lcom/tpad/ux/funlocker/ActionType;

    const-string v1, "FLAG_ACTION_OTHERS"

    const-string v2, "ki.tp.action.broadcast.JS_INVOKED_OTHER"

    invoke-direct {v0, v1, v4, v2}, Lcom/tpad/ux/funlocker/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tpad/ux/funlocker/ActionType;->FLAG_ACTION_OTHERS:Lcom/tpad/ux/funlocker/ActionType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tpad/ux/funlocker/ActionType;

    sget-object v1, Lcom/tpad/ux/funlocker/ActionType;->FLAG_ACTION_TPADSZ:Lcom/tpad/ux/funlocker/ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tpad/ux/funlocker/ActionType;->FLAG_ACTION_OTHERS:Lcom/tpad/ux/funlocker/ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tpad/ux/funlocker/ActionType;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/tpad/ux/funlocker/ActionType;->value:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tpad/ux/funlocker/ActionType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/tpad/ux/funlocker/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tpad/ux/funlocker/ActionType;

    return-object v0
.end method

.method public static values()[Lcom/tpad/ux/funlocker/ActionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tpad/ux/funlocker/ActionType;->ENUM$VALUES:[Lcom/tpad/ux/funlocker/ActionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tpad/ux/funlocker/ActionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public Value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tpad/ux/funlocker/ActionType;->value:Ljava/lang/String;

    return-object v0
.end method
