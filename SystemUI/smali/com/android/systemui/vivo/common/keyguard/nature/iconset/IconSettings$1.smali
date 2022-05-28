.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$1;
.super Landroid/os/Handler;
.source "IconSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$200(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
