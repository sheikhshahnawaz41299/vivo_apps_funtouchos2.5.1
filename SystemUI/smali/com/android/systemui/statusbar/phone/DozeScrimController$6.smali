.class Lcom/android/systemui/statusbar/phone/DozeScrimController$6;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "Pulse out finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$1500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    .line 264
    return-void
.end method
