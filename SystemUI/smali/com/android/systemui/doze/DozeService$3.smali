.class Lcom/android/systemui/doze/DozeService$3;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$200(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeService;->access$202(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$600(Lcom/android/systemui/doze/DozeService;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$300(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 273
    return-void
.end method

.method public onPulseStarted()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$200(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$500(Lcom/android/systemui/doze/DozeService;)V

    .line 264
    :cond_0
    return-void
.end method
