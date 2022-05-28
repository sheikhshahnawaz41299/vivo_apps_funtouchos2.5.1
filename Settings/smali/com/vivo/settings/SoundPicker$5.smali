.class Lcom/vivo/settings/SoundPicker$5;
.super Ljava/lang/Object;
.source "SoundPicker.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/SoundPicker;
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
    .line 866
    iput-object p1, p0, Lcom/vivo/settings/SoundPicker$5;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 887
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v7, 0x1

    .line 871
    :try_start_0
    const-class v4, Landroid/widget/AbsListView;

    const-string v5, "getIsHoldingMode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 872
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 873
    iget-object v4, p0, Lcom/vivo/settings/SoundPicker$5;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-virtual {v4}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 874
    .local v3, "result":Ljava/lang/Object;
    const-string v5, "SoundPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 876
    iget-object v4, p0, Lcom/vivo/settings/SoundPicker$5;->this$0:Lcom/vivo/settings/SoundPicker;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vivo/settings/SoundPicker;->access$1400(Lcom/vivo/settings/SoundPicker;Z)V

    .line 883
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 878
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/SoundPicker$5;->this$0:Lcom/vivo/settings/SoundPicker;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vivo/settings/SoundPicker;->access$1400(Lcom/vivo/settings/SoundPicker;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/vivo/settings/SoundPicker$5;->this$0:Lcom/vivo/settings/SoundPicker;

    invoke-static {v4, v7}, Lcom/vivo/settings/SoundPicker;->access$1400(Lcom/vivo/settings/SoundPicker;Z)V

    goto :goto_0
.end method
