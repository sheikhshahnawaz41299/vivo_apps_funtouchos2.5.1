.class Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2;
.super Landroid/database/ContentObserver;
.source "ApnSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method
