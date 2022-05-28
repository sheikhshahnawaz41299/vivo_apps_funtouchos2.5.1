.class abstract enum Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# static fields
.field private static enum STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private static enum STRONG_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private static enum STRONG_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private static enum STRONG_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private static enum WEAK:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private static enum WEAK_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private static enum WEAK_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private static enum WEAK_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 359
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$2;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 374
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$3;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 389
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$4;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 406
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$5;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 413
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$6;

    const-string v1, "WEAK_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 428
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$7;

    const-string v1, "WEAK_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 443
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$8;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    .line 351
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    .line 470
    new-array v0, v6, [[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    new-array v1, v7, [Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v3, [Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v4

    new-array v1, v7, [Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static copyEvictableEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 521
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->connectEvictables(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 522
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNextEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->connectEvictables(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 524
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullifyEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 525
    return-void
.end method

.method static copyExpirableEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2

    .prologue
    .line 509
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 511
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->connectExpirables(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 512
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->connectExpirables(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 514
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 515
    return-void
.end method


# virtual methods
.method copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2

    .prologue
    .line 502
    invoke-interface {p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method abstract newEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
.end method
