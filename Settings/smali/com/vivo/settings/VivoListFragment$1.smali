.class Lcom/vivo/settings/VivoListFragment$1;
.super Ljava/lang/Object;
.source "VivoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoListFragment;->showBBKBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoListFragment;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoListFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vivo/settings/VivoListFragment$1;->this$0:Lcom/vivo/settings/VivoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment$1;->this$0:Lcom/vivo/settings/VivoListFragment;

    invoke-virtual {v0}, Lcom/vivo/settings/VivoListFragment;->finish()V

    .line 54
    return-void
.end method
