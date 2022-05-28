.class final Lcom/squareup/leakcanary/LeakNode;
.super Ljava/lang/Object;
.source "LeakNode.java"


# instance fields
.field final instance:Lcom/squareup/haha/perflib/Instance;

.field final parent:Lcom/squareup/leakcanary/LeakNode;

.field final referenceName:Ljava/lang/String;

.field final referenceType:Lcom/squareup/leakcanary/LeakTraceElement$Type;


# direct methods
.method constructor <init>(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 29
    iput-object p2, p0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    .line 30
    iput-object p3, p0, Lcom/squareup/leakcanary/LeakNode;->referenceName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/squareup/leakcanary/LeakNode;->referenceType:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 32
    return-void
.end method
