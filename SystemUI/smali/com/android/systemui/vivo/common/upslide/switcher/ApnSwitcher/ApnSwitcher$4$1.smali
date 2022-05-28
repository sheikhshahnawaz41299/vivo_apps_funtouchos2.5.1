.class Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4$1;
.super Ljava/util/TimerTask;
.source "ApnSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$4;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$102(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;Z)Z

    .line 219
    return-void
.end method
