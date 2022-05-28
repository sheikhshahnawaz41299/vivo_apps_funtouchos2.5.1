.class Lcom/vivo/settings/SoundPicker$3;
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
    .line 414
    iput-object p1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$000(Lcom/vivo/settings/SoundPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$700(Lcom/vivo/settings/SoundPicker;)V

    .line 427
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-virtual {v1}, Lcom/vivo/settings/SoundPicker;->finish()V

    .line 428
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$800(Lcom/vivo/settings/SoundPicker;)Lcom/vivo/settings/RingtonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/RingtonAdapter;->getCheckedPos()I

    move-result v0

    .line 421
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$800(Lcom/vivo/settings/SoundPicker;)Lcom/vivo/settings/RingtonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/settings/RingtonAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    iget-object v2, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v2, v0}, Lcom/vivo/settings/SoundPicker;->access$1000(Lcom/vivo/settings/SoundPicker;I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/SoundPicker;->access$902(Lcom/vivo/settings/SoundPicker;Landroid/net/Uri;)Landroid/net/Uri;

    .line 423
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vivo/settings/SoundPicker;->access$002(Lcom/vivo/settings/SoundPicker;Z)Z

    .line 424
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker$3;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v1}, Lcom/vivo/settings/SoundPicker;->access$700(Lcom/vivo/settings/SoundPicker;)V

    goto :goto_0
.end method
