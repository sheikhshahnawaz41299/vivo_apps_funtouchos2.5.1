.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$5;
.super Ljava/lang/Object;
.source "KeyguardShortcut.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setMoveView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->downwardsAnimation()V

    .line 579
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
