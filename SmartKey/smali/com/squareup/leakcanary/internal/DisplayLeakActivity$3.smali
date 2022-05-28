.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

.field private final synthetic val$adapter:Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iput-object p2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;->val$adapter:Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;->val$adapter:Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    invoke-virtual {v0, p3}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->toggleRow(I)V

    .line 285
    return-void
.end method
