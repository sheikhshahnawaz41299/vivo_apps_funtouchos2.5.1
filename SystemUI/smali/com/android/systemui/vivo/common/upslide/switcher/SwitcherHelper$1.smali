.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$1;
.super Ljava/lang/Object;
.source "SwitcherHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
