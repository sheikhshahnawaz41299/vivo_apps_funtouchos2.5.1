.class final Lcom/vivo/settings/LightSettings$DbHandler;
.super Landroid/os/Handler;
.source "LightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/LightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/LightSettings;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/LightSettings;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/vivo/settings/LightSettings$DbHandler;->this$0:Lcom/vivo/settings/LightSettings;

    .line 288
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 289
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    const-string v0, "LightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/LightSettings$DbHandler;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-static {v0}, Lcom/vivo/settings/LightSettings;->access$400(Lcom/vivo/settings/LightSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/vivo/settings/LightSettings$DbHandler;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-static {v2}, Lcom/vivo/settings/LightSettings;->access$500(Lcom/vivo/settings/LightSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
