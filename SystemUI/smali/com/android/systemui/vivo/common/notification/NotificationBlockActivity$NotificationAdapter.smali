.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationBlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .line 178
    .local v2, "info":Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    if-eqz v2, :cond_1

    .line 179
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040071

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    const v0, 0x7f1100bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 184
    .local v6, "appIcon":Landroid/widget/ImageView;
    const v0, 0x7f11012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 185
    .local v7, "appLabel":Landroid/widget/TextView;
    const v0, 0x7f1101cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 186
    .local v5, "notificationBlockTip":Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e01d0

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 187
    const v0, 0x7f1101d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 189
    .local v4, "notificationBlockBtn":Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v0

    if-lez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$700(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v1

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$700(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v1

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->changePkgFromNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 197
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxy;->createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 198
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->drawCloneBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 201
    :cond_0
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0e01b4

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 229
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .end local v4    # "notificationBlockBtn":Landroid/widget/TextView;
    .end local v5    # "notificationBlockTip":Landroid/widget/TextView;
    .end local v6    # "appIcon":Landroid/widget/ImageView;
    .end local v7    # "appLabel":Landroid/widget/TextView;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_3
    return-object p2

    .line 186
    .restart local v5    # "notificationBlockTip":Landroid/widget/TextView;
    .restart local v6    # "appIcon":Landroid/widget/ImageView;
    .restart local v7    # "appLabel":Landroid/widget/TextView;
    :cond_2
    const v0, 0x7f0e01d1

    goto :goto_0

    .line 193
    .restart local v4    # "notificationBlockBtn":Landroid/widget/TextView;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$700(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v0

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 228
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const v0, 0x7f0e01b3

    goto :goto_2

    .line 256
    .end local v4    # "notificationBlockBtn":Landroid/widget/TextView;
    .end local v5    # "notificationBlockTip":Landroid/widget/TextView;
    .end local v6    # "appIcon":Landroid/widget/ImageView;
    .end local v7    # "appLabel":Landroid/widget/TextView;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_0
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$1000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x1020016

    const v3, 0x7f0a0045

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_4
    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$1000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I

    move-result v11

    invoke-static {v0, p2, v1, v3, v11}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZI)V

    goto :goto_3

    .line 257
    :catch_0
    move-exception v9

    .line 258
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "NotificationBlockActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set notification title color error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
