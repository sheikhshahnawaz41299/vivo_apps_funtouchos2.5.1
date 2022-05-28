.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;
.super Ljava/lang/Object;
.source "SwitcherOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 194
    const/4 v10, 0x0

    .line 297
    :goto_0
    return v10

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 197
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v7, v10

    .line 198
    .local v7, "rawX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v8, v10

    .line 199
    .local v8, "rawY":I
    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)[I

    move-result-object v11

    const/4 v12, 0x1

    aget v11, v11, v12

    if-ne v10, v11, :cond_1

    .line 200
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)[I

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/GridLayout;->getLocationInWindow([I)V

    .line 201
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)[I

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/GridLayout;->getLocationInWindow([I)V

    .line 203
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)[I

    move-result-object v10

    const/4 v11, 0x1

    aget v10, v10, v11

    if-ge v8, v10, :cond_3

    const/4 v9, 0x1

    .line 204
    .local v9, "touchInShownArea":Z
    :goto_1
    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v1

    .line 205
    .local v1, "baseArea":Landroid/widget/GridLayout;
    :goto_2
    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v6

    .line 206
    .local v6, "otherArea":Landroid/widget/GridLayout;
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10, v7, v8, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;IIZ)I

    move-result v3

    .line 208
    .local v3, "indexInBaseArea":I
    packed-switch v0, :pswitch_data_0

    .line 295
    :cond_2
    :goto_4
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1102(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Z)Z

    .line 296
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1202(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;I)I

    .line 297
    const/4 v10, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "baseArea":Landroid/widget/GridLayout;
    .end local v3    # "indexInBaseArea":I
    .end local v6    # "otherArea":Landroid/widget/GridLayout;
    .end local v9    # "touchInShownArea":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 204
    .restart local v9    # "touchInShownArea":Z
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v1

    goto :goto_2

    .line 205
    .restart local v1    # "baseArea":Landroid/widget/GridLayout;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v6

    goto :goto_3

    .line 210
    .restart local v3    # "indexInBaseArea":I
    .restart local v6    # "otherArea":Landroid/widget/GridLayout;
    :pswitch_0
    const/4 v10, -0x1

    if-eq v10, v3, :cond_6

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v10

    if-lt v3, v10, :cond_7

    .line 213
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 215
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$602(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Landroid/view/View;)Landroid/view/View;

    .line 216
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10, v7, v8}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;II)V

    .line 217
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Z)V

    goto :goto_4

    .line 224
    :pswitch_1
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10, v7, v8}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;II)V

    .line 226
    const/4 v10, -0x1

    if-ne v10, v3, :cond_8

    .line 228
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 230
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Z

    move-result v10

    if-ne v10, v9, :cond_b

    .line 233
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .line 235
    .local v2, "count":I
    if-lt v3, v2, :cond_9

    .line 236
    add-int/lit8 v3, v2, -0x1

    .line 238
    :cond_9
    if-gez v3, :cond_a

    .line 239
    const/4 v3, 0x0

    .line 241
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)I

    move-result v10

    if-eq v10, v3, :cond_2

    .line 244
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/GridLayout;->removeViewAt(I)V

    .line 245
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10, v3}, Landroid/widget/GridLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 250
    .end local v2    # "count":I
    :cond_b
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .line 253
    .restart local v2    # "count":I
    add-int/lit8 v2, v2, 0x1

    .line 255
    if-lt v3, v2, :cond_c

    .line 256
    add-int/lit8 v3, v2, -0x1

    .line 258
    :cond_c
    if-gez v3, :cond_d

    .line 259
    const/4 v3, 0x0

    .line 261
    :cond_d
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/GridLayout;->removeViewAt(I)V

    .line 263
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v10

    const/16 v11, 0xf

    if-ne v10, v11, :cond_e

    .line 264
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v10}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 265
    .local v4, "lastView":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v11, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;I)Landroid/widget/TextView;

    move-result-object v5

    .line 268
    .local v5, "newView":Landroid/widget/TextView;
    const/4 v10, -0x1

    invoke-virtual {v6, v5, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;I)V

    .line 270
    invoke-virtual {v1, v4}, Landroid/widget/GridLayout;->removeView(Landroid/view/View;)V

    .line 271
    add-int/lit8 v10, v2, -0x1

    if-ne v3, v10, :cond_e

    .line 272
    add-int/lit8 v3, v3, -0x1

    .line 276
    .end local v4    # "lastView":Landroid/view/View;
    .end local v5    # "newView":Landroid/widget/TextView;
    :cond_e
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10, v3}, Landroid/widget/GridLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 282
    .end local v2    # "count":I
    :pswitch_2
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Z)V

    .line 283
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_f

    .line 284
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/GridLayout;->removeViewAt(I)V

    .line 285
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;

    move-result-object v11

    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/view/View;

    move-result-object v12

    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v12, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;I)V

    .line 286
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    iget-object v12, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v12}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v12}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)F

    move-result v12

    float-to-int v12, v12

    invoke-static {v10, v11, v12}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;II)V

    .line 287
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e020f

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 289
    :cond_f
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1602(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;F)F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$1502(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;F)F

    .line 291
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->access$602(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_4

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
