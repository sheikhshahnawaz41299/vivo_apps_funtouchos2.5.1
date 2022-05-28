.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;
.super Landroid/os/Handler;
.source "KeyguardShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;
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
    .line 166
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    .line 170
    .local v0, "what":I
    sparse-switch v0, :sswitch_data_0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$500(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->invalidate()V

    .line 190
    :goto_1
    return-void

    .line 172
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$000(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    goto :goto_1

    .line 175
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$100(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    goto :goto_1

    .line 178
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$200(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    goto :goto_1

    .line 181
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$300(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    goto :goto_0

    .line 184
    :sswitch_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$400(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f3 -> :sswitch_3
        0x3f4 -> :sswitch_4
        0x4b0 -> :sswitch_0
        0x4b1 -> :sswitch_1
        0x4b2 -> :sswitch_2
    .end sparse-switch
.end method
