.class Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$2;
.super Landroid/os/Handler;
.source "ResourceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->initSettingsHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$2;->this$0:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    .line 67
    return-void
.end method
