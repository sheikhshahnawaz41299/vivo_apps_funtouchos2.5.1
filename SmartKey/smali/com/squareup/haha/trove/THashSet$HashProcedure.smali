.class final Lcom/squareup/haha/trove/THashSet$HashProcedure;
.super Ljava/lang/Object;
.source "THashSet.java"

# interfaces
.implements Lcom/squareup/haha/trove/TObjectProcedure;


# instance fields
.field h:I

.field private synthetic this$0:Lcom/squareup/haha/trove/THashSet;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/THashSet;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/squareup/haha/trove/THashSet$HashProcedure;->this$0:Lcom/squareup/haha/trove/THashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/squareup/haha/trove/THashSet$HashProcedure;->h:I

    iget-object v1, p0, Lcom/squareup/haha/trove/THashSet$HashProcedure;->this$0:Lcom/squareup/haha/trove/THashSet;

    iget-object v1, v1, Lcom/squareup/haha/trove/THashSet;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v1, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->computeHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/haha/trove/THashSet$HashProcedure;->h:I

    .line 182
    const/4 v0, 0x1

    return v0
.end method
