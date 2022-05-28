.class Lcom/squareup/leakcanary/AndroidWatchExecutor$2;
.super Ljava/lang/Object;
.source "AndroidWatchExecutor.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidWatchExecutor;->executeDelayedAfterIdleUnsafe(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;->this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;->val$runnable:Ljava/lang/Runnable;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;->this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

    invoke-static {v0}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->access$1(Lcom/squareup/leakcanary/AndroidWatchExecutor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;->val$runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    const/4 v0, 0x0

    return v0
.end method
