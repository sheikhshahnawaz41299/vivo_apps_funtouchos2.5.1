.class public Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings/net/UidDetailProvider;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/settings/net/UidDetailProvider;I)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "provider"    # Lcom/android/settings/net/UidDetailProvider;
    .param p3, "insetSide"    # I

    .prologue
    .line 1680
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1677
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1681
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 1682
    iput p3, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1683
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    .line 1684
    return-void
.end method

.method private accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V
    .locals 8
    .param p1, "collapseKey"    # I
    .param p3, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p4, "itemCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1781
    .local p2, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppItem;>;"
    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1782
    .local v1, "uid":I
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1783
    .local v0, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v0, :cond_0

    .line 1784
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v0    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-direct {v0, p1}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1785
    .restart local v0    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    iput p4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 1786
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    iget v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1789
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    .line 1790
    iget-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 1791
    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1792
    iget-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iput-wide v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1794
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1834
    const/4 v0, 0x0

    return v0
.end method

.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 22
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1691
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1693
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1694
    .local v6, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 1695
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 1697
    .local v11, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppItem;>;"
    const/4 v7, 0x0

    .line 1698
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v15

    .line 1699
    .local v15, "size":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_7

    .line 1700
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1703
    iget v0, v7, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v17, v0

    .line 1707
    .local v17, "uid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 1708
    .local v18, "userId":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1709
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1710
    move/from16 v0, v18

    if-eq v0, v6, :cond_0

    .line 1712
    invoke-static/range {v18 .. v18}, Lcom/android/settings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v12

    .line 1713
    .local v12, "managedKey":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v11, v7, v1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 1717
    .end local v12    # "managedKey":I
    :cond_0
    move/from16 v5, v17

    .line 1718
    .local v5, "collapseKey":I
    const/4 v4, 0x2

    .line 1738
    .local v4, "category":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v7, v4}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 1699
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1698
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v8    # "i":I
    .end local v15    # "size":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 1721
    .restart local v8    # "i":I
    .restart local v15    # "size":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 1722
    .local v9, "info":Landroid/content/pm/UserInfo;
    if-nez v9, :cond_3

    .line 1723
    const/4 v5, -0x4

    .line 1724
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_2

    .line 1727
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_3
    invoke-static/range {v18 .. v18}, Lcom/android/settings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    .line 1728
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x0

    .restart local v4    # "category":I
    goto :goto_2

    .line 1731
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v9    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/16 v19, -0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, -0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1732
    :cond_5
    move/from16 v5, v17

    .line 1733
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_2

    .line 1735
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    :cond_6
    const/16 v5, 0x3e8

    .line 1736
    .restart local v5    # "collapseKey":I
    const/4 v4, 0x2

    .restart local v4    # "category":I
    goto :goto_2

    .line 1741
    .end local v4    # "category":I
    .end local v5    # "collapseKey":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_7
    move-object/from16 v0, p2

    array-length v14, v0

    .line 1742
    .local v14, "restrictedUidsMax":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v14, :cond_a

    .line 1743
    aget v17, p2, v8

    .line 1745
    .restart local v17    # "uid":I
    new-instance v19, Landroid/os/UserHandle;

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1742
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1749
    :cond_8
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1750
    .local v10, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v10, :cond_9

    .line 1751
    new-instance v10, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v10    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    move/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1752
    .restart local v10    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    iget v0, v10, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1756
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    goto :goto_4

    .line 1759
    .end local v10    # "item":Lcom/android/settings/DataUsageSummary$AppItem;
    .end local v17    # "uid":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_b

    .line 1760
    new-instance v16, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>()V

    .line 1761
    .local v16, "title":Lcom/android/settings/DataUsageSummary$AppItem;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    .end local v16    # "title":Lcom/android/settings/DataUsageSummary$AppItem;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1766
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1767
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1824
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1825
    .local v0, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    iget v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    if-ne v2, v1, :cond_0

    .line 1828
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 1847
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1848
    .local v1, "item":Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1849
    if-nez p2, :cond_0

    .line 1850
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/android/settings/DataUsageSummary;->access$3200(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1854
    :cond_0
    const v6, 0x1020016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1855
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f0b05e1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1888
    .end local v5    # "title":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 1858
    :cond_1
    if-nez p2, :cond_2

    .line 1859
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04004a

    invoke-virtual {v6, v7, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1862
    iget v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v6, :cond_2

    .line 1863
    iget v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v7, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v6, v2, v7, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1867
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1869
    .local v0, "context":Landroid/content/Context;
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1870
    .local v4, "text1":Landroid/widget/TextView;
    const v6, 0x102000d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1874
    .local v3, "progress":Landroid/widget/ProgressBar;
    iget-object v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-static {v6, v1, p2}, Lcom/android/settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings/net/UidDetailProvider;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 1876
    iget-boolean v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v6, :cond_4

    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    .line 1877
    const v6, 0x7f0b05f3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1878
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1884
    :goto_1
    iget-wide v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 1885
    .local v2, "percentTotal":I
    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1880
    .end local v2    # "percentTotal":I
    :cond_4
    iget-wide v6, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1816
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1840
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1842
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
