.class Lcom/vivo/settings/notification/VivoZenModeDowntime$3;
.super Ljava/lang/Object;
.source "VivoZenModeDowntime.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/notification/VivoZenModeDowntime;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

.field final synthetic val$dialog:Lcom/vivo/app/VivoContextListDialog;


# direct methods
.method constructor <init>(Lcom/vivo/settings/notification/VivoZenModeDowntime;Lcom/vivo/app/VivoContextListDialog;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    iput-object p2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->val$dialog:Lcom/vivo/app/VivoContextListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->val$dialog:Lcom/vivo/app/VivoContextListDialog;

    invoke-virtual {v0}, Lcom/vivo/app/VivoContextListDialog;->dismiss()V

    .line 339
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$100(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$200(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->downtimeInfos:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$100(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$400(Lcom/vivo/settings/notification/VivoZenModeDowntime;)V

    .line 342
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-virtual {v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->finish()V

    .line 344
    :cond_0
    return-void
.end method
