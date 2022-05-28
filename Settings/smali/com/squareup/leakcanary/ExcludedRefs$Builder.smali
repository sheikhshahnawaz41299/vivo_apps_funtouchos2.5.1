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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->threadNames:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->classNames:Ljava/util/Map;

    .line 67
    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/leakcanary/ExcludedRefs;
    .locals 6

    .prologue
    .line 122
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    iget-object v2, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    iget-object v3, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->threadNames:Ljava/util/Map;

    iget-object v4, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->classNames:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ExcludedRefs;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/squareup/leakcanary/ExcludedRefs;)V

    return-object v0
.end method

.method public clazz(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 112
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
    .line 116
    const-string v0, "className"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->classNames:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object p0
.end method

.method public instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 70
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
    .line 74
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 77
    .local v0, "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .restart local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->fieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object p0
.end method

.method public staticField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 86
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
    .line 90
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string v1, "fieldName"

    invoke-static {p2, v1}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 93
    .local v0, "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .restart local v0    # "excludedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object p0
.end method

.method public thread(Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 102
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
    .line 106
    const-string v0, "threadName"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->threadNames:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object p0
.end method
