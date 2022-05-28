.class Lcom/vivo/settings/VisitMode$2;
.super Ljava/lang/Object;
.source "VisitMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VisitMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VisitMode;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VisitMode;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/vivo/settings/VisitMode$2;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 165
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "VistModeSwitch"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    const-string v0, "switch_password"

    const-string v1, "fromVisitMode"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$2;->this$0:Lcom/vivo/settings/VisitMode;

    iget-object v1, p0, Lcom/vivo/settings/VisitMode$2;->this$0:Lcom/vivo/settings/VisitMode;

    const-class v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b032a

    const/16 v4, 0x7d

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/settings/VisitMode;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 170
    return-void
.end method
