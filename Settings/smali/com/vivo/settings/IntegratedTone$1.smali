.class Lcom/vivo/settings/IntegratedTone$1;
.super Ljava/lang/Object;
.source "IntegratedTone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/IntegratedTone;->updateTitleRightButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/IntegratedTone;


# direct methods
.method constructor <init>(Lcom/vivo/settings/IntegratedTone;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 111
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-static {v1}, Lcom/vivo/settings/IntegratedTone;->access$100(Lcom/vivo/settings/IntegratedTone;)I

    move-result v0

    .line 112
    .local v0, "value":I
    if-eq v0, v4, :cond_0

    .line 113
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    iget-object v2, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-virtual {v2}, Lcom/vivo/settings/IntegratedTone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/settings/IntegratedTone;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-static {v1, v4}, Lcom/vivo/settings/IntegratedTone;->access$200(Lcom/vivo/settings/IntegratedTone;I)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    iget-object v2, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-virtual {v2}, Lcom/vivo/settings/IntegratedTone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/settings/IntegratedTone;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone$1;->this$0:Lcom/vivo/settings/IntegratedTone;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vivo/settings/IntegratedTone;->access$200(Lcom/vivo/settings/IntegratedTone;I)V

    goto :goto_0
.end method
