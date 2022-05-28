.class Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2$3;
.super Ljava/lang/Object;
.source "WechatScanSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2$3;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2$3;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$702(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 237
    return-void
.end method
