.class Lcom/vivo/settings/VivoLocalePicker$1;
.super Ljava/lang/Object;
.source "VivoLocalePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoLocalePicker;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoLocalePicker;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoLocalePicker;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/vivo/settings/VivoLocalePicker$1;->this$0:Lcom/vivo/settings/VivoLocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vivo/settings/VivoLocalePicker$1;->this$0:Lcom/vivo/settings/VivoLocalePicker;

    invoke-static {v0}, Lcom/vivo/settings/VivoLocalePicker;->access$000(Lcom/vivo/settings/VivoLocalePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/vivo/settings/VivoLocalePicker$1;->this$0:Lcom/vivo/settings/VivoLocalePicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoLocalePicker;->access$100(Lcom/vivo/settings/VivoLocalePicker;Z)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoLocalePicker$1;->this$0:Lcom/vivo/settings/VivoLocalePicker;

    invoke-virtual {v0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method
