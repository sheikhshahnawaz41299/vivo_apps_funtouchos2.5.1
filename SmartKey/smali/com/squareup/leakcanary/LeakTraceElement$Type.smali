.class public final enum Lcom/squareup/leakcanary/LeakTraceElement$Type;
.super Ljava/lang/Enum;
.source "LeakTraceElement.java"


# static fields
.field public static final enum ARRAY_ENTRY:Lcom/squareup/leakcanary/LeakTraceElement$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/squareup/leakcanary/LeakTraceElement$Type;

.field public static final enum INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

.field public static final enum LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

.field public static final enum STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;

    const-string v1, "INSTANCE_FIELD"

    invoke-direct {v0, v1, v2}, Lcom/squareup/leakcanary/LeakTraceElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;->INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;

    const-string v1, "STATIC_FIELD"

    invoke-direct {v0, v1, v3}, Lcom/squareup/leakcanary/LeakTraceElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v4}, Lcom/squareup/leakcanary/LeakTraceElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;->LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    new-instance v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;

    const-string v1, "ARRAY_ENTRY"

    invoke-direct {v0, v1, v5}, Lcom/squareup/leakcanary/LeakTraceElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ARRAY_ENTRY:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/leakcanary/LeakTraceElement$Type;

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Type;->INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Type;->LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ARRAY_ENTRY:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ENUM$VALUES:[Lcom/squareup/leakcanary/LeakTraceElement$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/leakcanary/LeakTraceElement$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;

    return-object v0
.end method

.method public static values()[Lcom/squareup/leakcanary/LeakTraceElement$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ENUM$VALUES:[Lcom/squareup/leakcanary/LeakTraceElement$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/squareup/leakcanary/LeakTraceElement$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
