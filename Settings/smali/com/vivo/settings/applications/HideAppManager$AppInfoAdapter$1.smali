.class Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;
.super Ljava/lang/Object;
.source "HideAppManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    .line 359
    .local v1, "postion1":Ljava/lang/Integer;
    const-string v4, "HideAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckBox itemInfo:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$400(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz v1, :cond_1

    .line 363
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$400(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    .line 365
    .local v0, "appItemInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    const-string v4, "HideAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckBox isCheck appItemInfo:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  before selected:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v0, :cond_1

    .line 367
    iget-boolean v3, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 368
    .local v2, "select":Z
    :goto_2
    iput-boolean v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    .line 369
    iget-boolean v3, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 370
    iget-object v3, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$600(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v4}, Lcom/vivo/settings/applications/HideAppManager;->access$600(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v4}, Lcom/vivo/settings/applications/HideAppManager;->access$600(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v0    # "appItemInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    .end local v2    # "select":Z
    :cond_1
    :goto_3
    return-void

    .line 359
    :cond_2
    const-string v3, "is null"

    goto/16 :goto_0

    .line 365
    .restart local v0    # "appItemInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    :cond_3
    const-string v3, "is null"

    goto :goto_1

    .line 367
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 375
    .restart local v2    # "select":Z
    :cond_5
    iget-boolean v3, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    iget-object v3, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$600(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v4}, Lcom/vivo/settings/applications/HideAppManager;->access$600(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 377
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v4}, Lcom/vivo/settings/applications/HideAppManager;->access$600(Lcom/vivo/settings/applications/HideAppManager;)Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    :cond_6
    iget-object v3, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;->this$1:Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;

    iget-object v3, v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/HideAppManager;->access$500(Lcom/vivo/settings/applications/HideAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3
.end method
