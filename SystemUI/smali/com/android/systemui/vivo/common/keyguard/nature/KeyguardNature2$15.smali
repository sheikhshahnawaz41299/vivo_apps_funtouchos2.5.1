.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1147
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V

    .line 1148
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3702(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I

    .line 1150
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z

    .line 1151
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1152
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1156
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1157
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z

    .line 1158
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1160
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1161
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I

    .line 1163
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 1164
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z

    .line 1165
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 1168
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1166
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z

    .line 1143
    :cond_0
    return-void
.end method
