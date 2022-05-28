.class Lcom/android/settings/DeviceAdminAdd$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceAdminAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# static fields
.field private static final TYPE_APP:I = 0x0

.field private static final TYPE_CATEGORY:I = 0x3

.field private static final TYPE_COUNT:I = 0x5

.field private static final TYPE_DIVIDER:I = 0x2

.field private static final TYPE_EXPALIN:I = 0x1

.field private static final TYPE_ITEM:I = 0x4


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPermissionSummaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSummary1:Ljava/lang/CharSequence;

.field private mSummary2:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/DeviceAdminAdd;


# direct methods
.method public constructor <init>(Lcom/android/settings/DeviceAdminAdd;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionTitles:Ljava/util/ArrayList;

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionSummaries:Ljava/util/ArrayList;

    .line 609
    iput-object p2, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mContext:Landroid/content/Context;

    .line 610
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 611
    return-void
.end method

.method private bindView(IILandroid/view/View;)V
    .locals 12
    .param p1, "postion"    # I
    .param p2, "type"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const v11, 0x3010004

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 718
    if-nez p3, :cond_1

    .line 775
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;

    .line 722
    .local v1, "holder":Lcom/android/settings/DeviceAdminAdd$ViewHolder;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 724
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-static {v6}, Lcom/android/settings/DeviceAdminAdd;->access$100(Lcom/android/settings/DeviceAdminAdd;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mAppName:Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v9, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-static {v10}, Lcom/android/settings/DeviceAdminAdd;->access$000(Lcom/android/settings/DeviceAdminAdd;)Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 725
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-static {v6, v11}, Lvivo/util/VivoThemeUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 730
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary2:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 735
    :pswitch_3
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary1:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 738
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->getHeadCount()I

    move-result v0

    .line 739
    .local v0, "headCount":I
    sub-int v4, p1, v0

    .line 740
    .local v4, "readPos":I
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->getCount()I

    move-result v6

    sub-int v3, v6, v0

    .line 741
    .local v3, "readCount":I
    iget-object v7, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionTitles:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionSummaries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_3

    .line 743
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionSummaries:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 744
    .local v5, "summary":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 745
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 753
    .end local v5    # "summary":Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-static {v6, v11}, Lvivo/util/VivoThemeUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 754
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->divider:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 755
    add-int/lit8 v6, v3, -0x1

    if-ne v4, v6, :cond_4

    .line 756
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->divider:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 748
    .restart local v5    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 751
    .end local v5    # "summary":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 758
    :cond_4
    iget-object v6, v1, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private createView(I)Landroid/view/View;
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 778
    const/4 v2, 0x0

    .line 779
    .local v2, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 799
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    .line 800
    new-instance v0, Lcom/android/settings/DeviceAdminAdd$ViewHolder;

    invoke-direct {v0, v6}, Lcom/android/settings/DeviceAdminAdd$ViewHolder;-><init>(Lcom/android/settings/DeviceAdminAdd$1;)V

    .line 801
    .local v0, "holder":Lcom/android/settings/DeviceAdminAdd$ViewHolder;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 802
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->title:Landroid/widget/TextView;

    .line 803
    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->summary:Landroid/widget/TextView;

    .line 804
    const/high16 v3, 0x30d0000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/DeviceAdminAdd$ViewHolder;->divider:Landroid/view/View;

    .line 805
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 807
    .end local v0    # "holder":Lcom/android/settings/DeviceAdminAdd$ViewHolder;
    :cond_0
    return-object v2

    .line 781
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040070

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 782
    goto :goto_0

    .line 784
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040064

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 785
    goto :goto_0

    .line 787
    :pswitch_3
    new-instance v2, Landroid/widget/TextView;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 788
    .restart local v2    # "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x30c0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 790
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 796
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x3030001

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getHeadCount()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary1:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary2:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public addPermission(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "titile"    # Ljava/lang/CharSequence;
    .param p2, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionSummaries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->getHeadCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionTitles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 688
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 693
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 656
    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->getHeadCount()I

    move-result v0

    .line 657
    .local v0, "headCount":I
    if-lt p1, v0, :cond_1

    .line 658
    const/4 v1, 0x4

    .line 669
    :cond_0
    :goto_0
    return v1

    .line 660
    :cond_1
    if-nez p1, :cond_2

    .line 661
    const/4 v1, 0x0

    goto :goto_0

    .line 663
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary2:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_3

    .line 664
    const/4 v1, 0x3

    goto :goto_0

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary1:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eq p1, v1, :cond_0

    .line 669
    :cond_4
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getPermItemCount()I
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mPermissionTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->getItemViewType(I)I

    move-result v0

    .line 709
    .local v0, "type":I
    if-nez p2, :cond_0

    .line 710
    invoke-direct {p0, v0}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->createView(I)Landroid/view/View;

    move-result-object p2

    .line 712
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->bindView(IILandroid/view/View;)V

    .line 713
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x5

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 631
    return-void
.end method

.method public setAppName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mAppName:Ljava/lang/CharSequence;

    .line 635
    return-void
.end method

.method public setSummary1(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary1:Ljava/lang/CharSequence;

    .line 639
    return-void
.end method

.method public setSummary2(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->mSummary2:Ljava/lang/CharSequence;

    .line 643
    return-void
.end method
