.class Lcom/vivo/settings/applications/FactoryAppManager$1;
.super Ljava/lang/Object;
.source "FactoryAppManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/FactoryAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/FactoryAppManager;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$1;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vivo/settings/applications/FactoryAppManager$1;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-virtual {v0}, Lcom/vivo/settings/applications/FactoryAppManager;->finish()V

    .line 178
    return-void
.end method
