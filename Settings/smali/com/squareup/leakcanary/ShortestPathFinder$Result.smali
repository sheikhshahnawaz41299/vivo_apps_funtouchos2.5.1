.class final Lcom/squareup/leakcanary/ShortestPathFinder$Result;
.super Ljava/lang/Object;
.source "ShortestPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/ShortestPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field final excludingKnownLeaks:Z

.field final leakingNode:Lcom/squareup/leakcanary/LeakNode;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/LeakNode;Z)V
    .locals 0
    .param p1, "leakingNode"    # Lcom/squareup/leakcanary/LeakNode;
    .param p2, "excludingKnownLeaks"    # Z

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    .line 282
    iput-boolean p2, p0, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->excludingKnownLeaks:Z

    .line 283
    return-void
.end method
