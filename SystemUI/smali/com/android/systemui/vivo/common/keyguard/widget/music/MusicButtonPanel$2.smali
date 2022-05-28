.class Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MusicButtonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->handleUpdatePlayButtonState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 281
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->access$402(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 286
    return-void
.end method
