.class Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$1;
.super Ljava/lang/Object;
.source "GpsSwitcher.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->refreshDisplay()V

    .line 65
    return-void
.end method
