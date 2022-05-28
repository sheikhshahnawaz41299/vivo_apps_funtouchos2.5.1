.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 177
    sub-int v0, p4, p2

    sub-int v1, p8, p6

    if-eq v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 189
    return-void
.end method
