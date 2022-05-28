.class Lcom/vivo/settings/MasterClear$3;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/MasterClear;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/vivo/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vivo/settings/MasterClear$3;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vivo/settings/MasterClear$3;->this$0:Lcom/vivo/settings/MasterClear;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/settings/MasterClear;->removeDialog(I)V

    .line 159
    return-void
.end method
