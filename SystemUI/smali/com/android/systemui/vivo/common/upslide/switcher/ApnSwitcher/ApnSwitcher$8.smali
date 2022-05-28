.class Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;
.super Ljava/lang/Object;
.source "ApnSwitcher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->toggleApnDialogWithDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    .line 464
    .local v1, "item":Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;
    iget-object v3, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 465
    iget-boolean v3, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->hasCheckBox:Z

    if-eqz v3, :cond_0

    .line 466
    const v3, 0x7f1101c7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 467
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 490
    .end local v0    # "check":Landroid/widget/CheckBox;
    :cond_0
    :goto_1
    return-void

    .line 467
    .restart local v0    # "check":Landroid/widget/CheckBox;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 470
    .end local v0    # "check":Landroid/widget/CheckBox;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2000(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->shouldSetToDefault()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 471
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;->access$2100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_default_network_sim_id"

    iget v5, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    :cond_3
    new-instance v2, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/ApnSwitcher$8;Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;)V

    .line 488
    .local v2, "mThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
