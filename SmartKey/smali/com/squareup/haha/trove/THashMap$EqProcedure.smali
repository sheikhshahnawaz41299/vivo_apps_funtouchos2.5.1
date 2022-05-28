.class final Lcom/squareup/haha/trove/THashMap$EqProcedure;
.super Ljava/lang/Object;
.source "THashMap.java"

# interfaces
.implements Lcom/squareup/haha/trove/TObjectObjectProcedure;


# instance fields
.field private final _otherMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$EqProcedure;->_otherMap:Ljava/util/Map;

    .line 227
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$EqProcedure;->_otherMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    if-eq v0, p2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
