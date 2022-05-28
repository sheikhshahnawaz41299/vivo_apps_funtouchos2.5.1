.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;
.super Ljava/lang/Object;
.source "VivoNaivgationBarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->hideLockTaskToast()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    const v1, 0x10406a1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->showLockTaskToast(IZI)V

    .line 110
    :cond_0
    return-void
.end method
