.class Lcom/vivo/settings/SoundPicker$2;
.super Ljava/lang/Object;
.source "SoundPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/SoundPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/SoundPicker;


# direct methods
.method constructor <init>(Lcom/vivo/settings/SoundPicker;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/vivo/settings/SoundPicker$2;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$2;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v0}, Lcom/vivo/settings/SoundPicker;->access$100(Lcom/vivo/settings/SoundPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$2;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v0}, Lcom/vivo/settings/SoundPicker;->access$600(Lcom/vivo/settings/SoundPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$2;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v0}, Lcom/vivo/settings/SoundPicker;->access$700(Lcom/vivo/settings/SoundPicker;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker$2;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-virtual {v0}, Lcom/vivo/settings/SoundPicker;->finish()V

    .line 409
    return-void
.end method
