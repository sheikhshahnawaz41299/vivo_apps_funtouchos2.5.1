.class Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$2;
.super Ljava/lang/Object;
.source "LockTaskPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->initPopupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$2;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$2;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->dismissPopupToolbar()V

    .line 164
    return-void
.end method
