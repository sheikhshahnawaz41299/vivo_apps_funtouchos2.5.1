.class Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-static {v1}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->access$600(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->post(Ljava/lang/Runnable;)Z

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    iget-object v0, v0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    invoke-static {v0}, Lcom/android/systemui/recent/ScreenPinningRequest;->access$700(Lcom/android/systemui/recent/ScreenPinningRequest;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    iget-object v0, v0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ScreenPinningRequest;->clearPrompt()V

    goto :goto_0
.end method
