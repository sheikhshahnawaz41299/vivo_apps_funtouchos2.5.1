.class Lcom/android/keyguard/VivoBaseView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VivoBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoBaseView;->moveYAnim(Landroid/view/View;FFLcom/android/keyguard/KeyguardSecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoBaseView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoBaseView;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/keyguard/VivoBaseView$4;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$4;->this$0:Lcom/android/keyguard/VivoBaseView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoBaseView;->access$002(Lcom/android/keyguard/VivoBaseView;Z)Z

    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$4;->this$0:Lcom/android/keyguard/VivoBaseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoBaseView;->access$002(Lcom/android/keyguard/VivoBaseView;Z)Z

    .line 303
    return-void
.end method
