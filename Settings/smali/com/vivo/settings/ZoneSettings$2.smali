.class Lcom/vivo/settings/ZoneSettings$2;
.super Ljava/lang/Object;
.source "ZoneSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ZoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ZoneSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ZoneSettings;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/vivo/settings/ZoneSettings$2;->this$0:Lcom/vivo/settings/ZoneSettings;

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
    .line 537
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 517
    if-ne p2, v7, :cond_0

    .line 518
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings$2;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v4}, Lcom/vivo/settings/ZoneSettings;->access$200(Lcom/vivo/settings/ZoneSettings;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/ZoneSettings$2;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v5}, Lcom/vivo/settings/ZoneSettings;->access$100(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/common/BbkSearchTitleView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/common/BbkSearchTitleView;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 521
    :cond_0
    :try_start_0
    const-class v4, Landroid/widget/AbsListView;

    const-string v5, "getIsHoldingMode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 522
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 523
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings$2;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-virtual {v4}, Lcom/vivo/settings/ZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 524
    .local v3, "result":Ljava/lang/Object;
    const-string v5, "ZoneSettings"

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

    .line 525
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings$2;->this$0:Lcom/vivo/settings/ZoneSettings;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vivo/settings/ZoneSettings;->access$600(Lcom/vivo/settings/ZoneSettings;Z)V

    .line 533
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 528
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings$2;->this$0:Lcom/vivo/settings/ZoneSettings;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vivo/settings/ZoneSettings;->access$600(Lcom/vivo/settings/ZoneSettings;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings$2;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v4, v7}, Lcom/vivo/settings/ZoneSettings;->access$600(Lcom/vivo/settings/ZoneSettings;Z)V

    goto :goto_0
.end method
