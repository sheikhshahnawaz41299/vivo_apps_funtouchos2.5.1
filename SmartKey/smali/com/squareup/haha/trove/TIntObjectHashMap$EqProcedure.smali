.class final Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;
.super Ljava/lang/Object;
.source "TIntObjectHashMap.java"

# interfaces
.implements Lcom/squareup/haha/trove/TIntObjectProcedure;


# instance fields
.field private final _otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/TIntObjectHashMap;)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;

    .line 440
    return-void
.end method


# virtual methods
.method public final execute(ILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    iget-object v2, p0, Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v2, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->index(I)I

    move-result v2

    .line 445
    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v2, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1452
    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 445
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 1452
    goto :goto_0

    :cond_2
    move v0, v1

    .line 445
    goto :goto_1
.end method
