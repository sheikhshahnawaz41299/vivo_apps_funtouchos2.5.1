.class final Lcom/squareup/haha/trove/THashMap$Entry;
.super Ljava/lang/Object;
.source "THashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final index:I

.field private final key:Ljava/lang/Object;

.field private synthetic this$0:Lcom/squareup/haha/trove/THashMap;

.field private val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/THashMap;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p2, p0, Lcom/squareup/haha/trove/THashMap$Entry;->key:Ljava/lang/Object;

    .line 748
    iput-object p3, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    .line 749
    iput p4, p0, Lcom/squareup/haha/trove/THashMap$Entry;->index:I

    .line 750
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v0, v0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 765
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v0, v0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->index:I

    aput-object p1, v0, v1

    .line 768
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    .line 769
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    .line 771
    return-object v0
.end method
