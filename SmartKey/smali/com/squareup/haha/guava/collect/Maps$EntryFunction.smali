.class abstract enum Lcom/squareup/haha/guava/collect/Maps$EntryFunction;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Lcom/squareup/haha/guava/base/Function;


# static fields
.field public static final enum KEY:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

.field public static final enum VALUE:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$EntryFunction$1;

    const-string v1, "KEY"

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/Maps$EntryFunction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;->KEY:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    .line 93
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$EntryFunction$2;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v3}, Lcom/squareup/haha/guava/collect/Maps$EntryFunction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;->VALUE:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    sget-object v1, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;->KEY:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;->VALUE:Lcom/squareup/haha/guava/collect/Maps$EntryFunction;

    aput-object v1, v0, v3

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/Maps$EntryFunction;-><init>(Ljava/lang/String;I)V

    return-void
.end method
