.class Lcom/vivo/settings/AreaPicker$2;
.super Ljava/lang/Object;
.source "AreaPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AreaPicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 282
    iput-object p1, p0, Lcom/vivo/settings/AreaPicker$2;->this$0:Lcom/vivo/settings/AreaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vivo/settings/AreaPicker$2;->this$0:Lcom/vivo/settings/AreaPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/AreaPicker;->access$100(Lcom/vivo/settings/AreaPicker;Z)V

    .line 286
    return-void
.end method
