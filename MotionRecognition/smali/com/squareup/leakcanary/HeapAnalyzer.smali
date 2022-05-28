.class public final Lcom/squareup/leakcanary/HeapAnalyzer;
.super Ljava/lang/Object;
.source "HeapAnalyzer.java"


# static fields
.field private static final ANONYMOUS_CLASS_NAME_PATTERN:Ljava/lang/String; = "^.+\\$\\d+$"


# instance fields
.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;


# direct methods
.method public constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 0
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 61
    return-void
.end method

.method private buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 25
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 205
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    if-nez v2, :cond_0

    .line 207
    const/4 v2, 0x0

    .line 282
    :goto_0
    return-object v2

    .line 209
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    iget-object v15, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 211
    .local v15, "holder":Lcom/squareup/haha/perflib/Instance;
    instance-of v2, v15, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v2, :cond_1

    .line 212
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/squareup/leakcanary/LeakNode;->referenceType:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 215
    .local v4, "type":Lcom/squareup/leakcanary/LeakTraceElement$Type;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/squareup/leakcanary/LeakNode;->referenceName:Ljava/lang/String;

    .line 219
    .local v3, "referenceName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 220
    .local v7, "extra":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v8, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v2, v15, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v2, :cond_4

    move-object v12, v15

    .line 222
    check-cast v12, Lcom/squareup/haha/perflib/ClassObj;

    .line 223
    .local v12, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 224
    .local v5, "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "className":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_3

    .line 282
    .end local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    :cond_2
    :goto_2
    new-instance v2, Lcom/squareup/leakcanary/LeakTraceElement;

    invoke-direct/range {v2 .. v8}, Lcom/squareup/leakcanary/LeakTraceElement;-><init>(Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;Lcom/squareup/leakcanary/LeakTraceElement$Holder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 225
    .restart local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 226
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/haha/perflib/Field;

    .line 227
    .local v14, "field":Lcom/squareup/haha/perflib/Field;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    .line 228
    .local v21, "value":Ljava/lang/Object;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "static "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6    # "className":Ljava/lang/String;
    .end local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    .end local v14    # "field":Lcom/squareup/haha/perflib/Field;
    .end local v21    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v2, v15, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v2, :cond_5

    move-object v10, v15

    .line 231
    check-cast v10, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 232
    .local v10, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 233
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 234
    .restart local v6    # "className":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v2

    sget-object v23, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    move-object/from16 v0, v23

    if-ne v2, v0, :cond_2

    .line 235
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v22

    .line 236
    .local v22, "values":[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v23, "["

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, "] = "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v23, v22, v16

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6    # "className":Ljava/lang/String;
    .end local v10    # "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v16    # "i":I
    .end local v22    # "values":[Ljava/lang/Object;
    :cond_5
    move-object v11, v15

    .line 241
    check-cast v11, Lcom/squareup/haha/perflib/ClassInstance;

    .line 242
    .local v11, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    invoke-virtual {v15}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v12

    .line 243
    .restart local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_6

    .line 246
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_7

    .line 249
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 251
    .restart local v6    # "className":Ljava/lang/String;
    invoke-static {v12}, Lcom/squareup/leakcanary/HahaHelper;->extendsThread(Lcom/squareup/haha/perflib/ClassObj;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 252
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 253
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-static {v15}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v20

    .line 254
    .local v20, "threadName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v23, "(named \'"

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, "\')"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 255
    goto/16 :goto_2

    .line 243
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6    # "className":Ljava/lang/String;
    .end local v20    # "threadName":Ljava/lang/String;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 244
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "static "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 246
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 247
    .local v14, "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-static {v14}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/ClassInstance$FieldValue;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 255
    .end local v14    # "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    .restart local v6    # "className":Ljava/lang/String;
    :cond_8
    const-string v2, "^.+\\$\\d+$"

    invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 256
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 257
    .local v19, "parentClassName":Ljava/lang/String;
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 258
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 263
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :try_start_0
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 264
    .local v9, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v18

    .line 265
    .local v18, "interfaces":[Ljava/lang/Class;
    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_9

    .line 266
    const/4 v2, 0x0

    aget-object v17, v18, v2

    .line 267
    .local v17, "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v23, "(anonymous class implements "

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, ")"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 268
    goto/16 :goto_2

    .line 269
    .end local v17    # "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    const-string v7, "(anonymous class extends java.lang.Object)"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 274
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v9    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "interfaces":[Ljava/lang/Class;
    :cond_a
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 276
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v23, "(anonymous class extends "

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, ")"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    goto/16 :goto_2

    .line 279
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_b
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    goto/16 :goto_2

    .line 271
    .restart local v19    # "parentClassName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_2
.end method

.method private buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;
    .locals 4
    .param p1, "leakingNode"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v3, 0x0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/LeakTraceElement;>;"
    new-instance v2, Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {v2, v3, p1, v3, v3}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 194
    .local v2, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_0
    if-nez v2, :cond_0

    .line 201
    new-instance v3, Lcom/squareup/leakcanary/LeakTrace;

    invoke-direct {v3, v1}, Lcom/squareup/leakcanary/LeakTrace;-><init>(Ljava/util/List;)V

    return-object v3

    .line 195
    :cond_0
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v0

    .line 196
    .local v0, "element":Lcom/squareup/leakcanary/LeakTraceElement;
    if-eqz v0, :cond_1

    .line 197
    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 199
    :cond_1
    iget-object v2, v2, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    goto :goto_0
.end method

.method private computeIgnoredBitmapRetainedSize(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)I
    .locals 12
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p2, "leakingInstance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "bitmapRetainedSize":I
    const-string v8, "android.graphics.Bitmap"

    invoke-virtual {p1, v8}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 149
    .local v0, "bitmapClass":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 166
    return v2

    .line 149
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    .line 150
    .local v1, "bitmapInstance":Lcom/squareup/haha/perflib/Instance;
    invoke-direct {p0, p2, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->isIgnoredDominator(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 151
    invoke-static {v1}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v9

    const-string v10, "mBuffer"

    invoke-static {v9, v10}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 153
    .local v3, "mBufferInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/ArrayInstance;->getTotalRetainedSize()J

    move-result-wide v6

    .line 157
    .local v6, "bufferSize":J
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Instance;->getTotalRetainedSize()J

    move-result-wide v4

    .line 160
    .local v4, "bitmapSize":J
    cmp-long v9, v4, v6

    if-gez v9, :cond_2

    .line 161
    add-long/2addr v4, v6

    .line 163
    :cond_2
    int-to-long v10, v2

    add-long/2addr v10, v4

    long-to-int v2, v10

    goto :goto_0
.end method

.method private findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 11
    .param p1, "analysisStartNanoTime"    # J
    .param p3, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p4, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 111
    new-instance v8, Lcom/squareup/leakcanary/ShortestPathFinder;

    iget-object v1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v8, v1}, Lcom/squareup/leakcanary/ShortestPathFinder;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 112
    .local v8, "pathFinder":Lcom/squareup/leakcanary/ShortestPathFinder;
    invoke-virtual {v8, p3, p4}, Lcom/squareup/leakcanary/ShortestPathFinder;->findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    move-result-object v9

    .line 115
    .local v9, "result":Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    if-nez v1, :cond_0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v1

    .line 132
    :goto_0
    return-object v1

    .line 119
    :cond_0
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {p0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;

    move-result-object v3

    .line 121
    .local v3, "leakTrace":Lcom/squareup/leakcanary/LeakTrace;
    invoke-virtual {p4}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/squareup/haha/perflib/Snapshot;->computeDominators()V

    .line 126
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    iget-object v0, v1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 128
    .local v0, "leakingInstance":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getTotalRetainedSize()J

    move-result-wide v4

    .line 130
    .local v4, "retainedSize":J
    invoke-direct {p0, p3, v0}, Lcom/squareup/leakcanary/HeapAnalyzer;->computeIgnoredBitmapRetainedSize(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 132
    iget-boolean v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->excludingKnownLeaks:Z

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v6

    .line 132
    invoke-static/range {v1 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;->leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;JJ)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v1

    goto :goto_0
.end method

.method private findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 94
    const-class v5, Lcom/squareup/leakcanary/KeyedWeakReference;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v3

    .line 95
    .local v3, "refClass":Lcom/squareup/haha/perflib/ClassObj;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "keysFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not find weak reference with key "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 97
    .local v0, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v0}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v6, "key"

    invoke-static {v4, v6}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "keyCandidate":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    const-string v5, "referent"

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/haha/perflib/Instance;

    return-object v5

    .line 102
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isIgnoredDominator(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)Z
    .locals 4
    .param p1, "dominator"    # Lcom/squareup/haha/perflib/Instance;
    .param p2, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "foundNativeRoot":Z
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v1

    .line 173
    .local v1, "immediateDominator":Lcom/squareup/haha/perflib/Instance;
    instance-of v2, v1, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 174
    check-cast v2, Lcom/squareup/haha/perflib/RootObj;

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v2

    sget-object v3, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    if-ne v2, v3, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getNextInstanceToGcRoot()Lcom/squareup/haha/perflib/Instance;

    move-result-object p2

    .line 177
    const/4 v0, 0x1

    .line 181
    :goto_0
    if-nez p2, :cond_2

    .line 182
    const/4 v0, 0x0

    .line 185
    .end local v0    # "foundNativeRoot":Z
    :goto_1
    return v0

    .line 179
    .restart local v0    # "foundNativeRoot":Z
    :cond_1
    move-object p2, v1

    goto :goto_0

    .line 184
    :cond_2
    if-ne p2, p1, :cond_0

    goto :goto_1
.end method

.method private since(J)J
    .locals 5
    .param p1, "analysisStartNanoTime"    # J

    .prologue
    .line 286
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public checkForLeak(Ljava/io/File;Ljava/lang/String;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 10
    .param p1, "heapDumpFile"    # Ljava/io/File;
    .param p2, "referenceKey"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 70
    .local v0, "analysisStartNanoTime":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 71
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "File does not exist: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    .line 89
    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 76
    :cond_0
    :try_start_0
    new-instance v2, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;

    invoke-direct {v2, p1}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;-><init>(Ljava/io/File;)V

    .line 77
    .local v2, "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    new-instance v6, Lcom/squareup/haha/perflib/HprofParser;

    invoke-direct {v6, v2}, Lcom/squareup/haha/perflib/HprofParser;-><init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V

    .line 78
    .local v6, "parser":Lcom/squareup/haha/perflib/HprofParser;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/HprofParser;->parse()Lcom/squareup/haha/perflib/Snapshot;

    move-result-object v7

    .line 80
    .local v7, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    invoke-direct {p0, p2, v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v5

    .line 83
    .local v5, "leakingRef":Lcom/squareup/haha/perflib/Instance;
    if-nez v5, :cond_1

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, v0, v1, v7, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 88
    .end local v2    # "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    .end local v5    # "leakingRef":Lcom/squareup/haha/perflib/Instance;
    .end local v6    # "parser":Lcom/squareup/haha/perflib/HprofParser;
    .end local v7    # "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0
.end method
