.class Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2$1;
.super Ljava/lang/Object;
.source "SpsSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$002(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;Z)Z

    .line 211
    return-void
.end method
