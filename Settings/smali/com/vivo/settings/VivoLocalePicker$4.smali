.class Lcom/vivo/settings/VivoLocalePicker$4;
.super Ljava/lang/Object;
.source "VivoLocalePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoLocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 316
    iput-object p1, p0, Lcom/vivo/settings/VivoLocalePicker$4;->this$0:Lcom/vivo/settings/VivoLocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vivo/settings/VivoLocalePicker$4;->this$0:Lcom/vivo/settings/VivoLocalePicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoLocalePicker;->access$100(Lcom/vivo/settings/VivoLocalePicker;Z)V

    .line 320
    return-void
.end method
