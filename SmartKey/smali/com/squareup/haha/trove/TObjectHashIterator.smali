.class final Lcom/squareup/haha/trove/TObjectHashIterator;
.super Lcom/squareup/haha/trove/THashIterator;
.source "TObjectHashIterator.java"


# instance fields
.field private _objectHash:Lcom/squareup/haha/trove/TObjectHash;


# direct methods
.method public constructor <init>(Lcom/squareup/haha/trove/TObjectHash;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/haha/trove/THashIterator;-><init>(Lcom/squareup/haha/trove/TObjectHash;)V

    .line 35
    iput-object p1, p0, Lcom/squareup/haha/trove/TObjectHashIterator;->_objectHash:Lcom/squareup/haha/trove/TObjectHash;

    .line 36
    return-void
.end method


# virtual methods
.method protected final objectAtIndex(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/squareup/haha/trove/TObjectHashIterator;->_objectHash:Lcom/squareup/haha/trove/TObjectHash;

    iget-object v0, v0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
