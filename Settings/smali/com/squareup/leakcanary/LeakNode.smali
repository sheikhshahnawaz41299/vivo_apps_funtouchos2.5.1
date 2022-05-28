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
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;
    .param p2, "parent"    # Lcom/squareup/leakcanary/LeakNode;
    .param p3, "referenceName"    # Ljava/lang/String;
    .param p4, "referenceType"    # Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 18
    iput-object p2, p0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    .line 19
    iput-object p3, p0, Lcom/squareup/leakcanary/LeakNode;->referenceName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/squareup/leakcanary/LeakNode;->referenceType:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 21
    return-void
.end method
