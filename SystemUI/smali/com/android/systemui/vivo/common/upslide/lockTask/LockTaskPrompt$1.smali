.class Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$1;
.super Ljava/lang/Object;
.source "LockTaskPrompt.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$1;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$1;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->access$000(Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v1

    const-string v2, "show_lock_task_dialog_tip"

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->putSharePrefBooleanVaule(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
