.class Lcom/vivo/settings/OneHandSettings$1;
.super Ljava/lang/Object;
.source "OneHandSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/OneHandSettings;->getMiniScreenDemoDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/OneHandSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/OneHandSettings;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/vivo/settings/OneHandSettings$1;->this$0:Lcom/vivo/settings/OneHandSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 200
    iget-object v1, p0, Lcom/vivo/settings/OneHandSettings$1;->this$0:Lcom/vivo/settings/OneHandSettings;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/vivo/settings/OneHandSettings;->access$000(Lcom/vivo/settings/OneHandSettings;Z)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
