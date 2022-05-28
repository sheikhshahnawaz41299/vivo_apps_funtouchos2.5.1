.class final Lcom/squareup/haha/guava/base/CharMatcher$13;
.super Lcom/squareup/haha/guava/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# instance fields
.field private synthetic val$endInclusive:C

.field private synthetic val$startInclusive:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .prologue
    .line 559
    iput-char p2, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$startInclusive:C

    iput-char p3, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$endInclusive:C

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .locals 1

    .prologue
    .line 561
    iget-char v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$startInclusive:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$endInclusive:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
