.class Lcom/squareup/leakcanary/AndroidHeapDumper$2;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidHeapDumper;->showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

.field private final synthetic val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2;->val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    invoke-static {v1}, Lcom/squareup/leakcanary/AndroidHeapDumper;->access$1(Lcom/squareup/leakcanary/AndroidHeapDumper;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Dumping memory, app will freeze. Brrrr."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 96
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 97
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;

    iget-object v3, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2;->val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;

    invoke-direct {v2, p0, v3, v0}, Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper$2;Lcom/squareup/leakcanary/internal/FutureResult;Landroid/widget/Toast;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 104
    return-void
.end method
