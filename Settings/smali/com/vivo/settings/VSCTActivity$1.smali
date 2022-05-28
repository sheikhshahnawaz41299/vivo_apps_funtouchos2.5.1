.class Lcom/vivo/settings/VSCTActivity$1;
.super Ljava/lang/Object;
.source "VSCTActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VSCTActivity;->showBBKBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VSCTActivity;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VSCTActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vivo/settings/VSCTActivity$1;->this$0:Lcom/vivo/settings/VSCTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vivo/settings/VSCTActivity$1;->this$0:Lcom/vivo/settings/VSCTActivity;

    invoke-virtual {v0}, Lcom/vivo/settings/VSCTActivity;->finish()V

    .line 77
    return-void
.end method
