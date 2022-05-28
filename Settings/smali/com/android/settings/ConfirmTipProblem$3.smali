.class Lcom/android/settings/ConfirmTipProblem$3;
.super Ljava/lang/Object;
.source "ConfirmTipProblem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmTipProblem;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmTipProblem;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmTipProblem;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/ConfirmTipProblem$3;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$3;->this$0:Lcom/android/settings/ConfirmTipProblem;

    iget-object v0, v0, Lcom/android/settings/ConfirmTipProblem;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$3;->this$0:Lcom/android/settings/ConfirmTipProblem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmTipProblem;->setResult(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$3;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmTipProblem;->finish()V

    .line 121
    return-void
.end method
