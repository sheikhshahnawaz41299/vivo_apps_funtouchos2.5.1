.class Lcom/vivo/settings/ClearAllDataConfirm$4$1;
.super Ljava/lang/Object;
.source "ClearAllDataConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ClearAllDataConfirm$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/ClearAllDataConfirm$4;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ClearAllDataConfirm$4;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm$4$1;->this$1:Lcom/vivo/settings/ClearAllDataConfirm$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm$4$1;->this$1:Lcom/vivo/settings/ClearAllDataConfirm$4;

    iget-object v1, v1, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/ClearAllDataConfirm;->startActivity(Landroid/content/Intent;)V

    .line 308
    return-void
.end method
