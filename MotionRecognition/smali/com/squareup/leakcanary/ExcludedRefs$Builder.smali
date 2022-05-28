.class public final Lcom/squareup/leakcanary/ExcludedRefs$Builder;
.super Ljava/lang/Object;
.source "ExcludedRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/ExcludedRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final classNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rootSuperClassNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final staticFieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->threadNames:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->classNames:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->rootSuperClassNames:Ljava/util/Map;

    .line 85
    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/leakcanary/ExcludedRefs;
    .locals 6

    .prologue
    .line 157
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    iget-object v2, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    iget-object v3, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->threadNames:Ljava/util/Map;

    .line 158
    iget-object v4, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->classNames:Ljava/util/Map;

    iget-object v5, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->rootSuperClassNames:Ljava/util/Map;

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ExcludedRefs;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->thread(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clazz(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 140
    const-string v0, "className"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->classNames:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object p0
.end method

.method public instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->instanceField(Ljava/lang/String;Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public instanceField(Ljava/lang/String;Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "always"    # Z

    .prologue
    .line 98
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 101
    .local v0, "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    .restart local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object p0
.end method

.method public rootSuperClass(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "rootSuperClassName"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->rootSuperClass(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public rootSuperClass(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 2
    .param p1, "rootSuperClassName"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 151
    const-string v0, "rootSuperClassName"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->rootSuperClassNames:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-object p0
.end method

.method public staticField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticField(Ljava/lang/String;Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public staticField(Ljava/lang/String;Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "always"    # Z

    .prologue
    .line 114
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 117
    .local v0, "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    .restart local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object p0
.end method

.method public thread(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->thread(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public thread(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 130
    const-string v0, "threadName"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->threadNames:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object p0
.end method
