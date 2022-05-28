.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;
.super Ljava/lang/Object;
.source "NotificationBlockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

.field final synthetic val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

.field final synthetic val$notificationBlockBtn:Landroid/widget/TextView;

.field final synthetic val$notificationBlockTip:Landroid/widget/TextView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->this$1:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    iput p3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$position:I

    iput-object p4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$notificationBlockBtn:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$notificationBlockTip:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->this$1:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    iget-object v3, v2, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->this$1:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    iget-object v5, v5, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$position:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v2, v5}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$900(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;ZI)V

    .line 234
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$notificationBlockBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0e01b4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$notificationBlockTip:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0e01d0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->this$1:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v0

    .line 239
    .local v0, "collectData":Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 241
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    const-string v2, "status"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_3
    const-string v2, "tab"

    const-string v3, "BlockNotification"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v2, "pkg"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;->val$info:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v2, "1063"

    const-string v3, "10636"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 251
    return-void

    .line 233
    .end local v0    # "collectData":Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    :cond_1
    const v2, 0x7f0e01b3

    goto :goto_1

    .line 235
    :cond_2
    const v2, 0x7f0e01d1

    goto :goto_2

    .line 245
    .restart local v0    # "collectData":Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    .restart local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v2, "status"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
