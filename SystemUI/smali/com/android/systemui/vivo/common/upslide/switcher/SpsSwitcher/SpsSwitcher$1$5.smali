.class Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$5;
.super Ljava/lang/Object;
.source "SpsSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 153
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$5;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$5;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$202(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 158
    return-void
.end method
