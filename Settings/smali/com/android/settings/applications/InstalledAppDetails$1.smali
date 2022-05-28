.class Lcom/android/settings/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 285
    :pswitch_1
    const-string v2, "InstalledAppDetails"

    const-string v3, "handle message : clear user data "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, p1}, Lcom/android/settings/applications/InstalledAppDetails;->access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 290
    :pswitch_2
    const-string v2, "InstalledAppDetails"

    const-string v3, "handle message : clear ucache "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :pswitch_3
    const-string v2, "InstalledAppDetails"

    const-string v3, "handle message : package move "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, p1}, Lcom/android/settings/applications/InstalledAppDetails;->access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 298
    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 299
    .local v0, "nowTime":J
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$400(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$400(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$400(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$500(Lcom/android/settings/applications/InstalledAppDetails;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 301
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle message : refresh move button state ! moveDisable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-boolean v4, v4, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-boolean v2, v2, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    if-nez v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$1;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$600(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 306
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails$1;->removeMessages(I)V

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
