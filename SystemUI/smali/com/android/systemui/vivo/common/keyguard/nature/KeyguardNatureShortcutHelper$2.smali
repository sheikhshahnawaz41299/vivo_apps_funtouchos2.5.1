.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$2;
.super Ljava/lang/Object;
.source "KeyguardNatureShortcutHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->access$200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;)Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->onAnimationToSideEnded()V

    .line 70
    return-void
.end method
