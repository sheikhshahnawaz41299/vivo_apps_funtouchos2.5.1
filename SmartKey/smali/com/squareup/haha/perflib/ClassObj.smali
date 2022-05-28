.class public Lcom/squareup/haha/perflib/ClassObj;
.super Lcom/squareup/haha/perflib/Instance;
.source "ClassObj.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field mClassLoaderId:J

.field final mClassName:Ljava/lang/String;

.field mFields:[Lcom/squareup/haha/perflib/Field;

.field mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

.field private mInstanceSize:I

.field private mIsSoftReference:Z

.field mStaticFields:[Lcom/squareup/haha/perflib/Field;

.field private final mStaticFieldsOffset:J

.field mSubclasses:Ljava/util/Set;

.field mSuperClassId:J


# direct methods
.method public constructor <init>(JLcom/squareup/haha/perflib/StackTrace;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/haha/perflib/Instance;-><init>(JLcom/squareup/haha/perflib/StackTrace;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mIsSoftReference:Z

    .line 50
    new-instance v0, Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TIntObjectHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mSubclasses:Ljava/util/Set;

    .line 59
    iput-object p4, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    .line 60
    iput-wide p5, p0, Lcom/squareup/haha/perflib/ClassObj;->mStaticFieldsOffset:J

    .line 61
    return-void
.end method

.method public static getReferenceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string v0, "java.lang.ref.Reference"

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/squareup/haha/perflib/Visitor;)V
    .locals 4

    .prologue
    .line 193
    invoke-interface {p1, p0}, Lcom/squareup/haha/perflib/Visitor;->visitClassObj(Lcom/squareup/haha/perflib/ClassObj;)V

    .line 194
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 196
    instance-of v1, v2, Lcom/squareup/haha/perflib/Instance;

    if-eqz v1, :cond_0

    .line 197
    iget-boolean v1, p0, Lcom/squareup/haha/perflib/ClassObj;->mReferencesAdded:Z

    if-nez v1, :cond_1

    move-object v1, v2

    .line 198
    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Field;

    invoke-virtual {v1, v0, p0}, Lcom/squareup/haha/perflib/Instance;->addReference(Lcom/squareup/haha/perflib/Field;Lcom/squareup/haha/perflib/Instance;)V

    .line 200
    :cond_1
    check-cast v2, Lcom/squareup/haha/perflib/Instance;

    invoke-interface {p1, p0, v2}, Lcom/squareup/haha/perflib/Visitor;->visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V

    goto :goto_0

    .line 203
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mReferencesAdded:Z

    .line 204
    return-void
.end method

.method public final addInstance(ILcom/squareup/haha/perflib/Instance;)V
    .locals 3

    .prologue
    .line 84
    instance-of v0, p2, Lcom/squareup/haha/perflib/ClassInstance;

    if-eqz v0, :cond_0

    .line 85
    iget v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mInstanceSize:I

    invoke-virtual {p2, v0}, Lcom/squareup/haha/perflib/Instance;->setSize(I)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    .line 89
    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    invoke-direct {v0}, Lcom/squareup/haha/perflib/ClassObj$HeapData;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/haha/trove/TIntObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    iget-object v1, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mInstances:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget v1, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mShallowSize:I

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mShallowSize:I

    .line 95
    return-void
.end method

.method public final addSubclass(Lcom/squareup/haha/perflib/ClassObj;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mSubclasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public final compareTo(Lcom/squareup/haha/perflib/ClassObj;)I
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/ClassObj;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 209
    const/4 v0, 0x0

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    iget-object v1, p1, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 213
    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/ClassObj;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/squareup/haha/perflib/ClassObj;

    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/ClassObj;->compareTo(Lcom/squareup/haha/perflib/ClassObj;)I

    move-result v0

    return v0
.end method

.method public final dump()V
    .locals 7

    .prologue
    .line 168
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+----------  ClassObj dump for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-----  Static fields"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v1

    .line 172
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Field;

    .line 173
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+-----  Instance fields"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/squareup/haha/perflib/ClassObj;->mFields:[Lcom/squareup/haha/perflib/Field;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 179
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object p0

    goto/16 :goto_0

    .line 184
    :cond_2
    return-void
.end method

.method public final dumpSubclasses()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mSubclasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj;

    .line 74
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "     "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 222
    instance-of v1, p1, Lcom/squareup/haha/perflib/ClassObj;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/squareup/haha/perflib/ClassObj;

    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/ClassObj;->compareTo(Lcom/squareup/haha/perflib/ClassObj;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllFieldsCount()I
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getFields()[Lcom/squareup/haha/perflib/Field;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 110
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_0
    return v0
.end method

.method public getClassLoader()Lcom/squareup/haha/perflib/Instance;
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v0, v0, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget-wide v2, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassLoaderId:J

    invoke-virtual {v0, v2, v3}, Lcom/squareup/haha/perflib/Snapshot;->findInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescendantClasses()Ljava/util/List;
    .locals 4

    .prologue
    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 294
    invoke-virtual {v2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj;

    .line 298
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getSubclasses()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj;

    .line 300
    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_1
    return-object v1
.end method

.method public getFields()[Lcom/squareup/haha/perflib/Field;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mFields:[Lcom/squareup/haha/perflib/Field;

    return-object v0
.end method

.method public getHeapInstances(I)Ljava/util/List;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    .line 260
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mInstances:Ljava/util/List;

    goto :goto_0
.end method

.method public getHeapInstancesCount(I)I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    .line 265
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getInstanceCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 269
    .line 270
    iget-object v1, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->getValues()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 271
    check-cast v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    iget-object v0, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 270
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :cond_0
    return v2
.end method

.method public getInstanceSize()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mInstanceSize:I

    return v0
.end method

.method public getInstancesList()Ljava/util/List;
    .locals 5

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getInstanceCount()I

    move-result v0

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/TIntObjectHashMap;->keys()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 252
    invoke-virtual {p0, v4}, Lcom/squareup/haha/perflib/ClassObj;->getHeapInstances(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-object v1
.end method

.method public getIsSoftReference()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mIsSoftReference:Z

    return v0
.end method

.method public getShallowSize()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 277
    .line 278
    iget-object v1, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->getValues()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 279
    check-cast v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    iget v0, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mShallowSize:I

    add-int/2addr v2, v0

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 281
    :cond_0
    return v2
.end method

.method public getShallowSize(I)I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    .line 137
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeapData:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;

    iget v0, v0, Lcom/squareup/haha/perflib/ClassObj$HeapData;->mShallowSize:I

    goto :goto_0
.end method

.method getStaticField(Lcom/squareup/haha/perflib/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/squareup/haha/perflib/Field;

    invoke-direct {v1, p1, p2}, Lcom/squareup/haha/perflib/Field;-><init>(Lcom/squareup/haha/perflib/Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFieldValues()Ljava/util/Map;
    .locals 5

    .prologue
    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getBuffer()Lcom/squareup/haha/perflib/io/HprofBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/haha/perflib/ClassObj;->mStaticFieldsOffset:J

    invoke-interface {v0, v2, v3}, Lcom/squareup/haha/perflib/io/HprofBuffer;->setPosition(J)V

    .line 154
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->readUnsignedShort()I

    move-result v2

    .line 155
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 156
    iget-object v3, p0, Lcom/squareup/haha/perflib/ClassObj;->mStaticFields:[Lcom/squareup/haha/perflib/Field;

    aget-object v3, v3, v0

    .line 158
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->readId()J

    .line 159
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->readUnsignedByte()I

    .line 161
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/squareup/haha/perflib/ClassObj;->readValue(Lcom/squareup/haha/perflib/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 162
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-object v1
.end method

.method public final getSubclasses()Ljava/util/Set;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mSubclasses:Ljava/util/Set;

    return-object v0
.end method

.method public getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v0, v0, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget-wide v2, p0, Lcom/squareup/haha/perflib/ClassObj;->mSuperClassId:J

    invoke-virtual {v0, v2, v3}, Lcom/squareup/haha/perflib/Snapshot;->findClass(J)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setClassLoaderId(J)V
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassLoaderId:J

    .line 103
    return-void
.end method

.method public setFields([Lcom/squareup/haha/perflib/Field;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/squareup/haha/perflib/ClassObj;->mFields:[Lcom/squareup/haha/perflib/Field;

    .line 121
    return-void
.end method

.method public setInstanceSize(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/squareup/haha/perflib/ClassObj;->mInstanceSize:I

    .line 129
    return-void
.end method

.method public setIsSoftReference()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mIsSoftReference:Z

    .line 142
    return-void
.end method

.method public setStaticFields([Lcom/squareup/haha/perflib/Field;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/squareup/haha/perflib/ClassObj;->mStaticFields:[Lcom/squareup/haha/perflib/Field;

    .line 125
    return-void
.end method

.method public final setSuperClassId(J)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/squareup/haha/perflib/ClassObj;->mSuperClassId:J

    .line 99
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
