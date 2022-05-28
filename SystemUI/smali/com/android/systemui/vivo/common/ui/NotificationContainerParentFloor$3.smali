.class Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;
.super Ljava/lang/Object;
.source "NotificationContainerParentFloor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->refreshBg(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

.field final synthetic val$isWholeTheme:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;Z)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;->val$isWholeTheme:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->access$200(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;->val$isWholeTheme:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->access$200(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0205bd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 477
    :cond_0
    return-void
.end method
