.class Lcom/vivo/settings/AreaPicker$1;
.super Ljava/lang/Object;
.source "AreaPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AreaPicker;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/AreaPicker;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AreaPicker;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vivo/settings/AreaPicker$1;->this$0:Lcom/vivo/settings/AreaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vivo/settings/AreaPicker$1;->this$0:Lcom/vivo/settings/AreaPicker;

    invoke-static {v0}, Lcom/vivo/settings/AreaPicker;->access$000(Lcom/vivo/settings/AreaPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vivo/settings/AreaPicker$1;->this$0:Lcom/vivo/settings/AreaPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/AreaPicker;->access$100(Lcom/vivo/settings/AreaPicker;Z)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/AreaPicker$1;->this$0:Lcom/vivo/settings/AreaPicker;

    invoke-virtual {v0}, Lcom/vivo/settings/AreaPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method
