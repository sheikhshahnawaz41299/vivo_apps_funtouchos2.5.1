.class Lcom/vivo/settings/applications/HideAppManager$2;
.super Ljava/lang/Object;
.source "HideAppManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/applications/HideAppManager;->showTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/HideAppManager;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/HideAppManager;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vivo/settings/applications/HideAppManager$2;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager$2;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v0}, Lcom/vivo/settings/applications/HideAppManager;->access$000(Lcom/vivo/settings/applications/HideAppManager;)V

    .line 119
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager$2;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-virtual {v0}, Lcom/vivo/settings/applications/HideAppManager;->finish()V

    .line 120
    return-void
.end method
