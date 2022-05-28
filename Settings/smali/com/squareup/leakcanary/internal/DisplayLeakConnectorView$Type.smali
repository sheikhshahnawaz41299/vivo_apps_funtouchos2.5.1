.class public final enum Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;
.super Ljava/lang/Enum;
.source "DisplayLeakConnectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

.field public static final enum NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

.field public static final enum START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    const-string v1, "START"

    const-string v2, "START"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 99
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    const-string v1, "NODE"

    const-string v2, "NODE"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 100
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    const-string v1, "END"

    const-string v2, "END"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->ENUM$VALUES:[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "n"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    return-object v0
.end method

.method public static values()[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->ENUM$VALUES:[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
