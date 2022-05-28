.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$1;
.super Ljava/lang/Object;
.source "SwitcherOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->finish()V

    .line 90
    return-void
.end method
