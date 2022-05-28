.class Lcom/android/settings/ConfirmTipProblem$2;
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
    .line 99
    iput-object p1, p0, Lcom/android/settings/ConfirmTipProblem$2;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$2;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v0}, Lcom/android/settings/ConfirmTipProblem;->access$200(Lcom/android/settings/ConfirmTipProblem;)Landroid/app/Dialog;

    .line 103
    return-void
.end method
