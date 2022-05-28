.class Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "PortraitSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarRotationPolicyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->setIntermediateState(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)V

    .line 131
    return-void
.end method
