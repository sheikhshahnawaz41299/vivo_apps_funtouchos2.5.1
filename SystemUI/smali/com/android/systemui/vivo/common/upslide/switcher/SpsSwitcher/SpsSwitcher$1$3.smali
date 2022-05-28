.class Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$3;
.super Ljava/lang/Object;
.source "SpsSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 125
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$3;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$3;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "SpsSwitcher"

    const-string v1, "mAlertDialog is null"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$3;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$3;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$3;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$202(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
