.class Lcom/android/settings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 137
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/IccLockSettings;->access$000(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/IccLockSettings;->access$100(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/IccLockSettings;->finish()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
