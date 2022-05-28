.class Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;
.super Ljava/lang/Thread;
.source "OfflineSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;Z)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;

    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;->val$on:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->toggleAirplaneMode(Z)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
