.class Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SIMSelectListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 115
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f04006c

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    move-result-object v5

    aget-object v3, v5, p1

    .line 117
    .local v3, "item":Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;
    iget-object v5, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 118
    const v5, 0x7f1100bf

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 119
    .local v2, "icon":Landroid/widget/ImageView;
    iget-object v5, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    .end local v2    # "icon":Landroid/widget/ImageView;
    :cond_0
    const v5, 0x7f1100c1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, "name":Landroid/widget/TextView;
    iget-object v5, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget v5, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    if-ne v5, v9, :cond_1

    .line 126
    const/high16 v5, 0x41000000    # 8.0f

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDensity()F

    move-result v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 128
    :cond_1
    iget-boolean v5, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->hasCheckBox:Z

    if-eqz v5, :cond_2

    .line 129
    const v5, 0x7f1101c7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 130
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 131
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 132
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 133
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 134
    new-instance v5, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    .end local v1    # "check":Landroid/widget/CheckBox;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)I

    move-result v5

    if-nez v5, :cond_3

    .line 143
    const v5, 0x7f1101c8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 144
    .local v0, "button":Landroid/widget/RadioButton;
    iget v5, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    if-ne v5, v9, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 145
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 146
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->checked:Z

    .line 148
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_3
    return-object p2

    .restart local v0    # "button":Landroid/widget/RadioButton;
    :cond_4
    move v5, v6

    .line 144
    goto :goto_0
.end method
