.class Lcom/vivo/settings/VivoFragment$1;
.super Ljava/lang/Object;
.source "VivoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoFragment;->showBBKBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoFragment;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoFragment;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vivo/settings/VivoFragment$1;->this$0:Lcom/vivo/settings/VivoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/settings/VivoFragment$1;->this$0:Lcom/vivo/settings/VivoFragment;

    invoke-virtual {v0}, Lcom/vivo/settings/VivoFragment;->finish()V

    .line 40
    return-void
.end method
