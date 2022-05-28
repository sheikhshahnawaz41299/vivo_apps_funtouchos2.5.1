.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;
.super Ljava/lang/Thread;
.source "KeyguardNature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->finishIconSet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

.field final synthetic val$iconId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;->val$iconId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 717
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon_id"

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;->val$iconId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    return-void
.end method
