.class Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$2;
.super Landroid/os/Handler;
.source "FlashlightSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    .line 181
    return-void
.end method
