.class public final Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy;
.super Ljava/lang/Object;
.source "TObjectIdentityHashingStrategy.java"

# interfaces
.implements Lcom/squareup/haha/trove/TObjectHashingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final computeHashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
