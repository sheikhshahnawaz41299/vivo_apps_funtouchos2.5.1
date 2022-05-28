.class public interface abstract Lcom/squareup/haha/trove/TObjectHashingStrategy;
.super Ljava/lang/Object;
.source "TObjectHashingStrategy.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy;-><init>()V

    .line 44
    new-instance v0, Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract computeHashCode(Ljava/lang/Object;)I
.end method

.method public abstract equals(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
