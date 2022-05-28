.class Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HideAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/HideAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/vivo/settings/applications/HideAppManager;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/applications/HideAppManager;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;>;"
    iput-object p1, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    .line 303
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->mContext:Landroid/content/Context;

    .line 304
    iput-object p2, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->mContext:Landroid/content/Context;

    .line 305
    iget-object v0, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 306
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b08ad

    const v5, 0x7f0b08ac

    const v4, 0x7f0b08a4

    .line 310
    invoke-virtual {p0, p1}, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;

    .line 312
    .local v1, "itemInfo":Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
    if-nez p2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04005f

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 315
    new-instance v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;

    iget-object v2, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-direct {v0, v2, v7}, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;-><init>(Lcom/vivo/settings/applications/HideAppManager;Lcom/vivo/settings/applications/HideAppManager$1;)V

    .line 316
    .local v0, "holder":Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;
    const v2, 0x7f0e0014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    .line 317
    const v2, 0x7f0e0114

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appCheckBox:Landroid/widget/CheckBox;

    .line 318
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    :goto_0
    if-eqz v1, :cond_0

    .line 323
    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 324
    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 352
    :goto_1
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appCheckBox:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 353
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->isSelected:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;

    invoke-direct {v3, p0}, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter$1;-><init>(Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :cond_0
    return-object p2

    .line 320
    .end local v0    # "holder":Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;

    .restart local v0    # "holder":Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;
    goto :goto_0

    .line 326
    :cond_2
    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v3, "com.android.gallery3d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v2}, Lcom/vivo/settings/applications/HideAppManager;->access$300(Lcom/vivo/settings/applications/HideAppManager;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 327
    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    const-string v3, "\u56fe\u5e93"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    const-string v3, "Gallery"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 328
    :cond_3
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 330
    :cond_4
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 333
    :cond_5
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 338
    :cond_6
    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 339
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 340
    :cond_7
    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    const-string v3, "com.android.gallery3d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/vivo/settings/applications/HideAppManager$AppInfoAdapter;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-static {v2}, Lcom/vivo/settings/applications/HideAppManager;->access$300(Lcom/vivo/settings/applications/HideAppManager;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 341
    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    const-string v3, "\u56fe\u5e93"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->appLable:Ljava/lang/CharSequence;

    const-string v3, "Gallery"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 342
    :cond_8
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 344
    :cond_9
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 347
    :cond_a
    iget-object v2, v0, Lcom/vivo/settings/applications/HideAppManager$AppItemHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
