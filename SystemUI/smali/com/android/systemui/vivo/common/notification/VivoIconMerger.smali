.class public Lcom/android/systemui/vivo/common/notification/VivoIconMerger;
.super Landroid/widget/LinearLayout;
.source "VivoIconMerger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoIconMerger"


# instance fields
.field private mIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

.field private mIconSize:I

.field private mMoreIconWidth:I

.field private mMoreViewVisible:Z

.field private mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreViewVisible:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconSize:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreIconWidth:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mPadding:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/VivoIconMerger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreViewVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/notification/VivoIconMerger;)Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    return-object v0
.end method


# virtual methods
.method public getMoreViewActualVisibility()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreViewVisible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 62
    sub-int v16, p4, p2

    .line 63
    .local v16, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->getChildCount()I

    move-result v5

    .line 65
    .local v5, "N":I
    const/4 v11, 0x0

    .line 66
    .local v11, "full":Z
    const/4 v15, 0x0

    .line 67
    .local v15, "mVisibleIconsTotalWidth":I
    const/16 v17, 0x0

    .line 70
    .local v17, "moreRequired":Z
    const/4 v8, 0x0

    .line 71
    .local v8, "childViewNeedWidth":I
    const/16 v18, 0x0

    .line 73
    .local v18, "moreViewNeedWidth":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v5, :cond_f

    .line 74
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 75
    .local v7, "child":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v23

    move-object/from16 v0, v23

    iget v13, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 76
    .local v13, "iconId":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconSize:I

    .line 78
    .local v9, "childWidth":I
    if-nez v13, :cond_8

    .line 79
    :try_start_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconSize:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v22

    .line 108
    .local v22, "top":I
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v6

    .line 109
    .local v6, "bottom":I
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->isRedrawedIcon()Z

    move-result v23

    if-nez v23, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mPadding:I

    move/from16 v22, v0

    .line 111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconSize:I

    move/from16 v23, v0

    sub-int v6, v23, v22

    .line 112
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconSize:I

    .line 115
    :cond_1
    const/4 v14, 0x0

    .line 116
    .local v14, "isMore":Z
    const v23, 0x7f02049e

    move/from16 v0, v23

    if-eq v0, v13, :cond_2

    const v23, 0x7f02049f

    move/from16 v0, v23

    if-ne v0, v13, :cond_3

    .line 118
    :cond_2
    const/4 v14, 0x1

    .line 121
    :cond_3
    if-nez v11, :cond_d

    .line 122
    add-int v8, v15, v9

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreIconWidth:I

    move/from16 v23, v0

    add-int v23, v23, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mPadding:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v18, v23, v24

    .line 124
    move/from16 v0, v16

    if-gt v8, v0, :cond_4

    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_c

    .line 125
    :cond_4
    const/4 v11, 0x1

    .line 127
    add-int/lit8 v23, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 128
    .local v19, "prevChild":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/16 v20, 0x0

    .line 129
    .local v20, "prevChildWidth":I
    if-eqz v19, :cond_6

    .line 130
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    move/from16 v21, v0

    .line 131
    .local v21, "prevIconId":I
    if-nez v21, :cond_9

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconSize:I

    move/from16 v20, v0

    .line 157
    :cond_5
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->isRedrawedIcon()Z

    move-result v23

    if-nez v23, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconSize:I

    move/from16 v20, v0

    .line 162
    .end local v21    # "prevIconId":I
    :cond_6
    move/from16 v0, v16

    if-le v8, v0, :cond_7

    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 163
    sub-int v15, v15, v20

    .line 164
    if-eqz v19, :cond_7

    .line 165
    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v24

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 169
    :cond_7
    if-eqz v14, :cond_a

    .line 171
    add-int v23, v15, v9

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v15, v0, v1, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 73
    .end local v19    # "prevChild":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v20    # "prevChildWidth":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 94
    .end local v6    # "bottom":I
    .end local v14    # "isMore":Z
    .end local v22    # "top":I
    :cond_8
    :try_start_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 95
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    .line 96
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mPadding:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v9, v23, v24

    .line 97
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 98
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mPadding:I

    move/from16 v24, v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    mul-int/lit8 v24, v24, 0x2

    add-int v9, v23, v24

    goto/16 :goto_1

    .line 147
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "bottom":I
    .restart local v14    # "isMore":Z
    .restart local v19    # "prevChild":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v20    # "prevChildWidth":I
    .restart local v21    # "prevIconId":I
    .restart local v22    # "top":I
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 148
    .restart local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_5

    .line 149
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mPadding:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v20, v23, v24

    .line 150
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 151
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mPadding:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v20, v23, v24

    goto/16 :goto_2

    .line 175
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v21    # "prevIconId":I
    :cond_a
    move/from16 v0, v16

    if-le v8, v0, :cond_b

    .line 176
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 178
    const/16 v17, 0x1

    goto :goto_3

    .line 180
    :cond_b
    add-int v23, v15, v9

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v15, v0, v1, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 183
    add-int/2addr v15, v9

    goto :goto_3

    .line 188
    .end local v19    # "prevChild":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v20    # "prevChildWidth":I
    :cond_c
    add-int v23, v15, v9

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v15, v0, v1, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 191
    add-int/2addr v15, v9

    goto/16 :goto_3

    .line 195
    :cond_d
    if-nez v14, :cond_e

    .line 196
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    goto/16 :goto_3

    .line 198
    :cond_e
    add-int v23, v15, v9

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v15, v0, v1, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    goto/16 :goto_3

    .line 205
    .end local v6    # "bottom":I
    .end local v7    # "child":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v9    # "childWidth":I
    .end local v13    # "iconId":I
    .end local v14    # "isMore":Z
    .end local v22    # "top":I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreViewVisible:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    .line 206
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreViewVisible:Z

    .line 207
    new-instance v23, Lcom/android/systemui/vivo/common/notification/VivoIconMerger$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger$1;-><init>(Lcom/android/systemui/vivo/common/notification/VivoIconMerger;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->post(Ljava/lang/Runnable;)Z

    .line 215
    :cond_10
    return-void

    .line 103
    .restart local v7    # "child":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v9    # "childWidth":I
    .restart local v13    # "iconId":I
    :catch_0
    move-exception v23

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 56
    return-void
.end method

.method public setIconRedrawHelper(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .line 43
    return-void
.end method

.method public setMoreViewVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->mMoreViewVisible:Z

    .line 51
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    return-void
.end method
