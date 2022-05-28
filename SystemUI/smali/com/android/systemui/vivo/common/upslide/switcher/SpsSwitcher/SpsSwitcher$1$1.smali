.class Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$1;
.super Ljava/lang/Object;
.source "SpsSwitcher.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v1, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$502(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;I)I

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
