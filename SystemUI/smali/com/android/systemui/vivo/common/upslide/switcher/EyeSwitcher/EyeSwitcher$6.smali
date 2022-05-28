.class Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$6;
.super Ljava/lang/Object;
.source "EyeSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->showEyeProtectionTipIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$6;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$6;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    .line 265
    return-void
.end method
