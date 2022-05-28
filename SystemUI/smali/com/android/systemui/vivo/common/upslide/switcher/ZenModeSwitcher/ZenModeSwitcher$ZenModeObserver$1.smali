.class Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver$1;
.super Ljava/lang/Object;
.source "ZenModeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->refreshDisplay()V

    .line 154
    return-void
.end method
