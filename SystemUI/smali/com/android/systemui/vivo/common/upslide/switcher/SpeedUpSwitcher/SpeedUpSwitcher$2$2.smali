.class Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2$2;
.super Ljava/lang/Object;
.source "SpeedUpSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$802(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 134
    :cond_0
    return-void
.end method
