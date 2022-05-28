.class Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$3;
.super Ljava/lang/Object;
.source "RecentScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$3;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$3;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$002(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Z)Z

    .line 500
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$3;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$800(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Z)V

    .line 501
    return-void
.end method
