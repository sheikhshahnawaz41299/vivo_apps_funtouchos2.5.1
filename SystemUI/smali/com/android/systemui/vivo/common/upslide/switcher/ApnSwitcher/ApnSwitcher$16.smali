.class Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$16;
.super Ljava/lang/Object;
.source "ApnSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->showNetworkModeSettingTip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$16;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$16;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2800(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "set_network_mode_any_for_Ooredoo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 692
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 693
    return-void
.end method
