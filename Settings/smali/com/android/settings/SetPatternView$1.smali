.class Lcom/android/settings/SetPatternView$1;
.super Ljava/lang/Object;
.source "SetPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/android/settings/SetPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/settings/SetPatternView$1;->this$0:Lcom/android/settings/SetPatternView;

    iput-object p2, p0, Lcom/android/settings/SetPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/settings/SetPatternView$1;->this$0:Lcom/android/settings/SetPatternView;

    iget-object v0, p0, Lcom/android/settings/SetPatternView$1;->this$0:Lcom/android/settings/SetPatternView;

    invoke-static {v0}, Lcom/android/settings/SetPatternView;->access$000(Lcom/android/settings/SetPatternView;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/settings/SetPatternView$1;->this$0:Lcom/android/settings/SetPatternView;

    invoke-static {v0}, Lcom/android/settings/SetPatternView;->access$100(Lcom/android/settings/SetPatternView;)I

    move-result v0

    int-to-float v3, v0

    const-wide/16 v4, 0xc0

    iget-object v0, p0, Lcom/android/settings/SetPatternView$1;->this$0:Lcom/android/settings/SetPatternView;

    invoke-static {v0}, Lcom/android/settings/SetPatternView;->access$200(Lcom/android/settings/SetPatternView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SetPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/settings/SetPatternView;->access$300(Lcom/android/settings/SetPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method
