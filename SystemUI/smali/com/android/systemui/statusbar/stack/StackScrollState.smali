.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    }
.end annotation


# static fields
.field private static final CHILD_NOT_FOUND_TAG:Ljava/lang/String; = "StackScrollStateNoSuchChild"


# instance fields
.field private final mClearAllTopPadding:I

.field private final mClipRect:Landroid/graphics/Rect;

.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClipRect:Landroid/graphics/Rect;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    .line 54
    return-void
.end method

.method private getNextChildNotGone(I)Landroid/view/View;
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 237
    .local v1, "childCount":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 243
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 237
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateChildClip(Landroid/view/View;II)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "height"    # I
    .param p3, "clipInset"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClipRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, p3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 222
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 34

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    .line 91
    .local v25, "numChildren":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v25

    if-ge v15, v0, :cond_17

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 93
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .line 94
    .local v29, "state":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-nez v29, :cond_1

    .line 95
    const-string v4, "StackScrollStateNoSuchChild"

    const-string v5, "No child state was found when applying this state to the hostView"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 99
    :cond_1
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-nez v4, :cond_0

    .line 100
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v2

    .line 101
    .local v2, "alpha":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v32

    .line 102
    .local v32, "yTranslation":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v31

    .line 103
    .local v31, "xTranslation":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v33

    .line 104
    .local v33, "zTranslation":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v28

    .line 105
    .local v28, "scale":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    .line 106
    .local v14, "height":I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    move/from16 v17, v0

    .line 107
    .local v17, "newAlpha":F
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move/from16 v23, v0

    .line 108
    .local v23, "newYTranslation":F
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    move/from16 v24, v0

    .line 110
    .local v24, "newZTranslation":F
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_2

    .line 111
    const/16 v24, 0x0

    .line 114
    :cond_2
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move/from16 v21, v0

    .line 115
    .local v21, "newScale":F
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    move/from16 v18, v0

    .line 116
    .local v18, "newHeight":I
    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-nez v4, :cond_c

    const/4 v11, 0x1

    .line 117
    .local v11, "becomesInvisible":Z
    :goto_2
    cmpl-float v4, v2, v17

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    cmpl-float v4, v31, v4

    if-nez v4, :cond_4

    .line 119
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v17, v4

    if-nez v4, :cond_d

    const/4 v10, 0x1

    .line 120
    .local v10, "becomesFullyVisible":Z
    :goto_3
    if-nez v11, :cond_e

    if-nez v10, :cond_e

    const/16 v20, 0x1

    .line 121
    .local v20, "newLayerTypeIsHardware":Z
    :goto_4
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getLayerType()I

    move-result v16

    .line 122
    .local v16, "layerType":I
    if-eqz v20, :cond_f

    const/16 v19, 0x2

    .line 125
    .local v19, "newLayerType":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 126
    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 130
    :cond_3
    if-nez v11, :cond_4

    .line 131
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 136
    .end local v10    # "becomesFullyVisible":Z
    .end local v16    # "layerType":I
    .end local v19    # "newLayerType":I
    .end local v20    # "newLayerTypeIsHardware":Z
    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v27

    .line 137
    .local v27, "oldVisibility":I
    if-eqz v11, :cond_10

    const/16 v22, 0x4

    .line 138
    .local v22, "newVisibility":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 140
    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    .line 145
    :cond_5
    cmpl-float v4, v32, v23

    if-eqz v4, :cond_6

    .line 146
    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 150
    :cond_6
    cmpl-float v4, v33, v24

    if-eqz v4, :cond_7

    .line 151
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 155
    :cond_7
    cmpl-float v4, v28, v21

    if-eqz v4, :cond_8

    .line 156
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    .line 157
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    .line 161
    :cond_8
    move/from16 v0, v18

    if-eq v14, v0, :cond_9

    .line 162
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 166
    :cond_9
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 169
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 172
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 176
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 179
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v4

    int-to-float v0, v4

    move/from16 v26, v0

    .line 180
    .local v26, "oldClipTopAmount":F
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    int-to-float v4, v4

    cmpl-float v4, v26, v4

    if-eqz v4, :cond_a

    .line 181
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 183
    :cond_a
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->updateChildClip(Landroid/view/View;II)V

    .line 186
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_b

    .line 187
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBoundsTop()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    if-lt v4, v5, :cond_b

    .line 188
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 193
    :cond_b
    instance-of v4, v3, Lcom/android/systemui/statusbar/SpeedBumpView;

    if-eqz v4, :cond_11

    move-object v6, v3

    .line 194
    check-cast v6, Lcom/android/systemui/statusbar/SpeedBumpView;

    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    move v5, v15

    move-object/from16 v7, v29

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/stack/StackScrollState;->performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    goto/16 :goto_1

    .line 116
    .end local v11    # "becomesInvisible":Z
    .end local v22    # "newVisibility":I
    .end local v26    # "oldClipTopAmount":F
    .end local v27    # "oldVisibility":I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 119
    .restart local v11    # "becomesInvisible":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 120
    .restart local v10    # "becomesFullyVisible":Z
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 122
    .restart local v16    # "layerType":I
    .restart local v20    # "newLayerTypeIsHardware":Z
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 137
    .end local v10    # "becomesFullyVisible":Z
    .end local v16    # "layerType":I
    .end local v20    # "newLayerTypeIsHardware":Z
    .restart local v27    # "oldVisibility":I
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 195
    .restart local v22    # "newVisibility":I
    .restart local v26    # "oldClipTopAmount":F
    :cond_11
    instance-of v4, v3, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v4, :cond_14

    move-object v12, v3

    .line 196
    check-cast v12, Lcom/android/systemui/statusbar/DismissView;

    .line 197
    .local v12, "dismissView":Lcom/android/systemui/statusbar/DismissView;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    if-ge v4, v5, :cond_12

    const/16 v30, 0x1

    .line 198
    .local v30, "visible":Z
    :goto_7
    if-eqz v30, :cond_13

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    goto/16 :goto_1

    .line 197
    .end local v30    # "visible":Z
    :cond_12
    const/16 v30, 0x0

    goto :goto_7

    .line 198
    .restart local v30    # "visible":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_8

    .line 199
    .end local v12    # "dismissView":Lcom/android/systemui/statusbar/DismissView;
    .end local v30    # "visible":Z
    :cond_14
    instance-of v4, v3, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v4, :cond_0

    move-object v13, v3

    .line 200
    check-cast v13, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 201
    .local v13, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    if-gtz v4, :cond_15

    const/16 v30, 0x1

    .line 202
    .restart local v30    # "visible":Z
    :goto_9
    if-eqz v30, :cond_16

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x1

    :goto_a
    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    goto/16 :goto_1

    .line 201
    .end local v30    # "visible":Z
    :cond_15
    const/16 v30, 0x0

    goto :goto_9

    .line 202
    .restart local v30    # "visible":Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_a

    .line 207
    .end local v2    # "alpha":F
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v11    # "becomesInvisible":Z
    .end local v13    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v14    # "height":I
    .end local v17    # "newAlpha":F
    .end local v18    # "newHeight":I
    .end local v21    # "newScale":F
    .end local v22    # "newVisibility":I
    .end local v23    # "newYTranslation":F
    .end local v24    # "newZTranslation":F
    .end local v26    # "oldClipTopAmount":F
    .end local v27    # "oldVisibility":I
    .end local v28    # "scale":F
    .end local v29    # "state":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .end local v30    # "visible":Z
    .end local v31    # "xTranslation":F
    .end local v32    # "yTranslation":F
    .end local v33    # "zTranslation":F
    :cond_17
    return-void
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .locals 1
    .param p1, "requestedView"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    return-object v0
.end method

.method public performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "speedBump"    # Lcom/android/systemui/statusbar/SpeedBumpView;
    .param p3, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p4, "delay"    # J

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getNextChildNotGone(I)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "nextChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 228
    iget v4, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v5, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v0, v4, v5

    .line 229
    .local v0, "lineEnd":F
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v2

    .line 230
    .local v2, "nextState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    iget v4, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    const/4 v3, 0x1

    .line 231
    .local v3, "startIsAboveNext":Z
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p2, v3, p4, p5, v4}, Lcom/android/systemui/statusbar/SpeedBumpView;->animateDivider(ZJLjava/lang/Runnable;)V

    .line 233
    .end local v0    # "lineEnd":F
    .end local v2    # "nextState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .end local v3    # "startIsAboveNext":Z
    :cond_0
    return-void

    .line 230
    .restart local v0    # "lineEnd":F
    .restart local v2    # "nextState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public resetViewStates()V
    .locals 6

    .prologue
    .line 61
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 62
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 63
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 64
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .line 65
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-nez v3, :cond_0

    .line 66
    new-instance v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;-><init>()V

    .line 67
    .restart local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 71
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    .line 72
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 73
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 75
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    return-void
.end method
