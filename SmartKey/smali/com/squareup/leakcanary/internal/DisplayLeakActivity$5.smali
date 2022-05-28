.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v0, v0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iput-object v0, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-virtual {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 335
    return-void
.end method
