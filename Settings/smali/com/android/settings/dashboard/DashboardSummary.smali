.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Landroid/app/Fragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# static fields
.field private static final MSG_REBUILD_UI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DashboardSummary"


# instance fields
.field private mDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mStatusManager:Lcom/android/settings/dashboard/DashboardTileStatusManager;

.field private mViewForScroll:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    const-string v4, "DashboardSummary"

    const-string v23, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 205
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 207
    .local v5, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v4, p1

    .line 209
    check-cast v4, Lcom/android/settings/SettingsActivity;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v10

    .line 212
    .local v10, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    .line 214
    .local v16, "count":I
    const/16 v17, 0x0

    .local v17, "n":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 215
    move/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/dashboard/DashboardCategory;

    .line 217
    .local v11, "category":Lcom/android/settings/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v23, 0x7f04003e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 220
    .local v15, "categoryView":Landroid/view/View;
    const v4, 0x7f0e00cd

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 221
    .local v13, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v11, v5}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v4, 0x7f0e00ce

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 227
    .local v12, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v11, v5}, Lcom/android/settings/dashboard/DashboardCategory;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 228
    .local v22, "summary":Ljava/lang/CharSequence;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    const v4, 0x1020010

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 230
    .local v14, "categorySummary":Landroid/widget/TextView;
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    .end local v14    # "categorySummary":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v11}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v9

    .line 236
    .local v9, "tilesCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v9, :cond_2

    .line 237
    invoke-virtual {v11, v8}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v6

    .line 239
    .local v6, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v7, Lcom/android/settings/dashboard/DashboardTileView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .local v7, "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    move-object/from16 v4, p1

    .line 240
    invoke-static/range {v4 .. v9}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Lcom/android/settings/dashboard/DashboardTileView;II)V

    .line 242
    invoke-virtual {v7, v6}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/DashboardSummary;->mStatusManager:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->registerTile(Lcom/android/settings/dashboard/DashboardTile;Lcom/android/settings/dashboard/DashboardTileView;)V

    .line 244
    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 236
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 247
    .end local v6    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v7    # "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/DashboardSummary;->mStatusManager:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {v4, v11, v15}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->registerCategroy(Lcom/android/settings/dashboard/DashboardCategory;Landroid/view/View;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 251
    .end local v8    # "i":I
    .end local v9    # "tilesCount":I
    .end local v11    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v12    # "categoryContent":Landroid/view/ViewGroup;
    .end local v13    # "categoryLabel":Landroid/widget/TextView;
    .end local v15    # "categoryView":Landroid/view/View;
    .end local v22    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v18, v24, v20

    .line 252
    .local v18, "delta":J
    const-string v4, "DashboardSummary"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "rebuildUI took: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 352
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    :cond_0
    return-void
.end method

.method public static updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Lcom/android/settings/dashboard/DashboardTileView;II)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p3, "tileView"    # Lcom/android/settings/dashboard/DashboardTileView;
    .param p4, "position"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v9

    .line 264
    .local v9, "tileIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v10

    .line 265
    .local v10, "tileTextView":Landroid/widget/TextView;
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v6

    .line 266
    .local v6, "statusTextView":Landroid/widget/TextView;
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v3

    .line 267
    .local v3, "checkBoxView":Landroid/widget/BbkMoveBoolButton;
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getNotiView()Landroid/widget/ImageView;

    move-result-object v5

    .line 268
    .local v5, "notiView":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/vivo/settings/SettingsItemsUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;

    move-result-object v4

    .line 270
    .local v4, "itemsUtils":Lcom/vivo/settings/SettingsItemsUtils;
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-nez v11, :cond_3

    .line 271
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/vivo/settings/SettingsItemsUtils;->loadIcon(Lcom/android/settings/dashboard/DashboardTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :goto_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-nez v11, :cond_5

    .line 280
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/vivo/settings/SettingsItemsUtils;->loadTitle(Lcom/android/settings/dashboard/DashboardTile;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/settings/dashboard/DashboardTile;->type:I

    packed-switch v11, :pswitch_data_0

    .line 316
    :cond_0
    :goto_2
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    if-nez v11, :cond_1

    .line 317
    const-string v11, "DashboardSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "disable tile view in id: 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/settings/dashboard/DashboardTile;->type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 320
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v11

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    invoke-virtual {v11, v12}, Landroid/widget/BbkMoveBoolButton;->setEnabled(Z)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v11

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    invoke-virtual {v11, v12}, Landroid/widget/BbkMoveBoolButton;->setChecked(Z)V

    .line 322
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    if-eqz v11, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/BbkMoveBoolButton;->isLoading()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 323
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/dashboard/DashboardTileView;->getCheckBoxView()Landroid/widget/BbkMoveBoolButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/BbkMoveBoolButton;->endLoading()Z

    .line 349
    :cond_2
    :goto_3
    return-void

    .line 272
    :cond_3
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v11, :cond_4

    .line 273
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 275
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 282
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 287
    :pswitch_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 288
    .local v7, "summary":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 289
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 292
    :cond_6
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 296
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :pswitch_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 297
    .local v8, "summaryNoti":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 298
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 299
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 301
    :cond_7
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 306
    .end local v8    # "summaryNoti":Ljava/lang/CharSequence;
    :pswitch_2
    if-eqz v3, :cond_8

    .line 307
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/BbkMoveBoolButton;->setVisibility(I)V

    .line 309
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/settings/dashboard/DashboardTileView;->setClickable(Z)V

    .line 310
    const v11, 0x7f0e0006

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/settings/dashboard/DashboardTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "arrow":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 312
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 326
    .end local v2    # "arrow":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/settings/dashboard/DashboardTileView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStatusManager:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 160
    const v2, 0x7f04003d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 161
    .local v1, "rootView":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 162
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 165
    new-instance v2, Lcom/android/settings/dashboard/DashboardSummary$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mViewForScroll:Landroid/widget/ListView;

    .line 195
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStatusManager:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->onActivityDestroy()V

    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStatusManager:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->onActivityPause()V

    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.vivo.action.NETLOCK_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "netlockFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getNewIntentAndSetNull()Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "newIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mViewForScroll:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStatusManager:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->onActivityResume()V

    .line 132
    return-void
.end method
