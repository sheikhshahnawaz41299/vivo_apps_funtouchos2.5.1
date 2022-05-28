.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2$1;
.super Ljava/lang/Object;
.source "WifiSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$102(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;Z)Z

    .line 242
    return-void
.end method
