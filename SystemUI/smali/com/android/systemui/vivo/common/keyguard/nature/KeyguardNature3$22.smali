.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$22;
.super Ljava/lang/Object;
.source "KeyguardNature3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$22;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$22;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$22;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;ZI)V

    .line 1856
    :cond_0
    return-void
.end method
