.class Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$2;
.super Ljava/lang/Object;
.source "WechatScanSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$702(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 133
    :cond_0
    return-void
.end method
