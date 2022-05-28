.class final enum Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# static fields
.field public static final enum INSTANCE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 720
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;

    .line 719
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 747
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getHash()I
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNextEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 0

    .prologue
    .line 771
    return-object p0
.end method

.method public final getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 0

    .prologue
    .line 755
    return-object p0
.end method

.method public final getPreviousEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 0

    .prologue
    .line 779
    return-object p0
.end method

.method public final getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 0

    .prologue
    .line 763
    return-object p0
.end method

.method public final getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public final setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method public final setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 759
    return-void
.end method

.method public final setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 783
    return-void
.end method

.method public final setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 767
    return-void
.end method

.method public final setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V
    .locals 0

    .prologue
    .line 728
    return-void
.end method
