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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 32
    return-void
.end method

.method private buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 27
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 92
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    if-nez v2, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 161
    :goto_0
    return-object v2

    .line 95
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    iget-object v0, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    move-object/from16 v18, v0

    .line 96
    .local v18, "holder":Lcom/squareup/haha/perflib/Instance;
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v2, :cond_1

    .line 97
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/squareup/leakcanary/LeakNode;->referenceType:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 100
    .local v4, "type":Lcom/squareup/leakcanary/LeakTraceElement$Type;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/squareup/leakcanary/LeakNode;->referenceName:Ljava/lang/String;

    .line 101
    .local v3, "referenceName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 102
    .local v7, "extra":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v8, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v2, :cond_4

    move-object/from16 v12, v18

    .line 106
    check-cast v12, Lcom/squareup/haha/perflib/ClassObj;

    .line 107
    .local v12, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 108
    .local v5, "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "className":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_3

    .line 161
    .end local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    :cond_2
    :goto_2
    new-instance v2, Lcom/squareup/leakcanary/LeakTraceElement;

    invoke-direct/range {v2 .. v8}, Lcom/squareup/leakcanary/LeakTraceElement;-><init>(Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;Lcom/squareup/leakcanary/LeakTraceElement$Holder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 109
    .restart local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 110
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/squareup/haha/perflib/Field;

    .line 111
    .local v16, "field":Lcom/squareup/haha/perflib/Field;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    .line 112
    .local v23, "value":Ljava/lang/Object;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "static "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6    # "className":Ljava/lang/String;
    .end local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    .end local v16    # "field":Lcom/squareup/haha/perflib/Field;
    .end local v23    # "value":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v2, :cond_5

    move-object/from16 v10, v18

    .line 116
    check-cast v10, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 117
    .local v10, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 118
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 119
    .restart local v6    # "className":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v2

    sget-object v25, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    move-object/from16 v0, v25

    if-ne v2, v0, :cond_2

    .line 120
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v24

    .line 121
    .local v24, "values":[Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v25, "["

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v25, "] = "

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v25, v24, v19

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6    # "className":Ljava/lang/String;
    .end local v10    # "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v19    # "i":I
    .end local v24    # "values":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v11, v18

    .line 127
    check-cast v11, Lcom/squareup/haha/perflib/ClassInstance;

    .line 128
    .local v11, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    invoke-virtual/range {v18 .. v18}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v13

    .line 129
    .local v13, "classObj2":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_6

    .line 132
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_7

    .line 135
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 136
    .restart local v6    # "className":Ljava/lang/String;
    invoke-static {v13}, Lcom/squareup/leakcanary/HahaHelper;->extendsThread(Lcom/squareup/haha/perflib/ClassObj;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 137
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 138
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-static/range {v18 .. v18}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v22

    .line 139
    .local v22, "threadName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v25, "(named \'"

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v25, "\')"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    goto/16 :goto_2

    .line 129
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6    # "className":Ljava/lang/String;
    .end local v22    # "threadName":Ljava/lang/String;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 130
    .local v15, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "static "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 132
    .end local v15    # "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 133
    .local v17, "field2":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-static/range {v17 .. v17}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/ClassInstance$FieldValue;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 141
    .end local v17    # "field2":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    .restart local v6    # "className":Ljava/lang/String;
    :cond_8
    const-string v2, "^.+\\$\\d+$"

    invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 142
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 143
    .local v21, "parentClassName":Ljava/lang/String;
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 144
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 146
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :try_start_0
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 147
    .local v9, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/16 v25, 0x0

    aget-object v20, v2, v25

    .line 148
    .local v20, "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v25, "(anonymous class implements "

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v25, ")"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_2

    .line 153
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v9    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 154
    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v25, "(anonymous class extends "

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v25, ")"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 156
    goto/16 :goto_2

    .line 158
    .end local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v21    # "parentClassName":Ljava/lang/String;
    :cond_a
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .restart local v5    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    goto/16 :goto_2

    .line 150
    .restart local v21    # "parentClassName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_2
.end method

.method private buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;
    .locals 4
    .param p1, "leakingNode"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/LeakTraceElement;>;"
    new-instance v2, Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {v2, v3, p1, v3, v3}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .local v2, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_0
    if-nez v2, :cond_0

    .line 88
    new-instance v3, Lcom/squareup/leakcanary/LeakTrace;

    invoke-direct {v3, v1}, Lcom/squareup/leakcanary/LeakTrace;-><init>(Ljava/util/List;)V

    return-object v3

    .line 83
    :cond_0
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v0

    .line 84
    .local v0, "element":Lcom/squareup/leakcanary/LeakTraceElement;
    if-eqz v0, :cond_1

    .line 85
    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    :cond_1
    iget-object v2, v2, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    goto :goto_0
.end method

.method private findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 9
    .param p1, "analysisStartNanoTime"    # J
    .param p3, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p4, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 70
    new-instance v2, Lcom/squareup/leakcanary/ShortestPathFinder;

    iget-object v4, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v2, v4}, Lcom/squareup/leakcanary/ShortestPathFinder;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 71
    .local v2, "pathFinder":Lcom/squareup/leakcanary/ShortestPathFinder;
    invoke-virtual {v2, p3, p4}, Lcom/squareup/leakcanary/ShortestPathFinder;->findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    move-result-object v3

    .line 72
    .local v3, "result":Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    iget-object v4, v3, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    if-nez v4, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v4

    .line 77
    :goto_0
    return-object v4

    .line 75
    :cond_0
    iget-object v4, v3, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {p0, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;

    move-result-object v1

    .line 76
    .local v1, "leakTrace":Lcom/squareup/leakcanary/LeakTrace;
    invoke-virtual {p4}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "className":Ljava/lang/String;
    iget-boolean v4, v3, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->excludingKnownLeaks:Z

    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v6

    invoke-static {v4, v0, v1, v6, v7}, Lcom/squareup/leakcanary/AnalysisResult;->leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v4

    goto :goto_0
.end method

.method private findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 56
    const-class v5, Lcom/squareup/leakcanary/KeyedWeakReference;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v3

    .line 57
    .local v3, "refClass":Lcom/squareup/haha/perflib/ClassObj;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "keysFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 66
    new-instance v5, Ljava/lang/IllegalStateException;

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

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 59
    .local v0, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v0}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v4

    .line 60
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v6, "key"

    invoke-static {v4, v6}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "keyCandidate":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    const-string v5, "referent"

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/haha/perflib/Instance;

    return-object v5

    .line 64
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private since(J)J
    .locals 5
    .param p1, "analysisStartNanoTime"    # J

    .prologue
    .line 165
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
    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 36
    .local v0, "analysisStartNanoTime":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 37
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "File does not exist: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .local v4, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    .line 51
    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 41
    :cond_0
    :try_start_0
    new-instance v2, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;

    invoke-direct {v2, p1}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;-><init>(Ljava/io/File;)V

    .line 42
    .local v2, "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    new-instance v6, Lcom/squareup/haha/perflib/HprofParser;

    invoke-direct {v6, v2}, Lcom/squareup/haha/perflib/HprofParser;-><init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V

    .line 43
    .local v6, "parser":Lcom/squareup/haha/perflib/HprofParser;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/HprofParser;->parse()Lcom/squareup/haha/perflib/Snapshot;

    move-result-object v7

    .line 44
    .local v7, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    invoke-direct {p0, p2, v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v5

    .line 45
    .local v5, "leakingRef":Lcom/squareup/haha/perflib/Instance;
    if-nez v5, :cond_1

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0

    .line 48
    :cond_1
    invoke-direct {p0, v0, v1, v7, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 50
    .end local v2    # "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    .end local v5    # "leakingRef":Lcom/squareup/haha/perflib/Instance;
    .end local v6    # "parser":Lcom/squareup/haha/perflib/HprofParser;
    .end local v7    # "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0
.end method
