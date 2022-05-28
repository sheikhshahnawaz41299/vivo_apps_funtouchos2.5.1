.class Lcom/vivo/settings/ProfileSettings$3$1;
.super Ljava/lang/Object;
.source "ProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ProfileSettings$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/ProfileSettings$3;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ProfileSettings$3;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$600(Lcom/vivo/settings/ProfileSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget v1, v1, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/SingleChoiseAdapter;->getCheckPos()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget v1, v1, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    if-le v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v1, v1, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v1}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/SingleChoiseAdapter;->getCheckPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/SingleChoiseAdapter;->setCheckPos(I)V

    .line 394
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$700(Lcom/vivo/settings/ProfileSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectedProfile"

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v2, v2, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v2}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/SingleChoiseAdapter;->getCheckPos()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetChanged()V

    .line 397
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3$1;->this$1:Lcom/vivo/settings/ProfileSettings$3;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$800(Lcom/vivo/settings/ProfileSettings;)V

    .line 398
    return-void
.end method
