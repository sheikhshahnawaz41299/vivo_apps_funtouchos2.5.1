.class final Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;
.super Ljava/lang/Object;
.source "TLongObjectHashMap.java"

# interfaces
.implements Lcom/squareup/haha/trove/TLongObjectProcedure;


# instance fields
.field private final _otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/TLongObjectHashMap;)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;

    .line 440
    return-void
.end method


# virtual methods
.method public final execute(JLjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v2, p1, p2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->index(J)I

    move-result v2

    .line 445
    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v2, p1, p2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    .line 1452
    if-eq p3, v2, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
