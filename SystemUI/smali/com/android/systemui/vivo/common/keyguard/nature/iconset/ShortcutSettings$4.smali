.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;
.super Landroid/os/Handler;
.source "ShortcutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->setShortcutList(Ljava/util/ArrayList;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->notifyDataSetChanged()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$1000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->finish()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
