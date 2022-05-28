.class Lcom/vivo/settings/VivoVisitFingerPrint$2;
.super Ljava/lang/Object;
.source "VivoVisitFingerPrint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoVisitFingerPrint;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoVisitFingerPrint;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoVisitFingerPrint;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vivo/settings/VivoVisitFingerPrint$2;->this$0:Lcom/vivo/settings/VivoVisitFingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 71
    const-string v1, "VivoVisitFingerPrint"

    const-string v2, "preference pressed yes "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vivo.intent.action_REMOVE_VISIT_FINGER_PRINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/vivo/settings/VivoVisitFingerPrint$2;->this$0:Lcom/vivo/settings/VivoVisitFingerPrint;

    invoke-virtual {v1}, Lcom/vivo/settings/VivoVisitFingerPrint;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    iget-object v1, p0, Lcom/vivo/settings/VivoVisitFingerPrint$2;->this$0:Lcom/vivo/settings/VivoVisitFingerPrint;

    invoke-virtual {v1}, Lcom/vivo/settings/VivoVisitFingerPrint;->finish()V

    .line 76
    return-void
.end method
