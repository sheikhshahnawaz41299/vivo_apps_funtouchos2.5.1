.class final Lcom/squareup/haha/guava/base/CharMatcher$7;
.super Lcom/squareup/haha/guava/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public final or(Lcom/squareup/haha/guava/base/CharMatcher;)Lcom/squareup/haha/guava/base/CharMatcher;
    .locals 0
    .param p1, "other"    # Lcom/squareup/haha/guava/base/CharMatcher;

    .prologue
    .line 318
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method
