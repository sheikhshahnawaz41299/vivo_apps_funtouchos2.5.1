.class public Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
.super Landroid/app/Activity;
.source "SwitcherOrderActivity.java"


# static fields
.field private static final INVALID_INDEX:I = -0x1

.field private static final ONE_SCREEN_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SwitcherOrderActivity"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColorDark:I

.field private mContext:Landroid/content/Context;

.field private mHiddenArea:Landroid/widget/GridLayout;

.field private mHiddenAreaBase:[I

.field private mHideLayoutTransition:Landroid/animation/LayoutTransition;

.field private mLastIndexInArea:I

.field private mLastTouchInShownArea:Z

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mRootOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScreenWidth:I

.field private mSelectedView:Landroid/view/View;

.field private mShowLayoutTransition:Landroid/animation/LayoutTransition;

.field private mShownArea:Landroid/widget/GridLayout;

.field private mShownAreaBase:[I

.field private mStatusBarHeight:I

.field private mSwitchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;",
            ">;"
        }
    .end annotation
.end field

.field private mUnitHeight:I

.field private mUnitWidth:I

.field private mVirtualDeltaX:F

.field private mVirtualDeltaY:F

.field private mVirtualView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownAreaBase:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenAreaBase:[I

    .line 187
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mRootOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 425
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$4;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 57
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->finishOrder()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenAreaBase:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->setVirtualTranslation(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mLastTouchInShownArea:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mLastTouchInShownArea:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mLastIndexInArea:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mLastIndexInArea:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;I)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->generateSwitcherView(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaX:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaX:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaY:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaY:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownAreaBase:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownArea:Landroid/widget/GridLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/GridLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenArea:Landroid/widget/GridLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;IIZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->getSwitcherIndexByRowLocation(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->setVirtualViewParams(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->performVirtualAnimation(Z)V

    return-void
.end method

.method private finishOrder()V
    .locals 11

    .prologue
    .line 389
    const/4 v2, 0x0

    .line 390
    .local v2, "index":I
    const-string v7, ""

    .line 392
    .local v7, "orderShow":Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 393
    .local v6, "newShowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 395
    .local v5, "newHideList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownArea:Landroid/widget/GridLayout;

    invoke-virtual {v9}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 396
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownArea:Landroid/widget/GridLayout;

    invoke-virtual {v9, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 398
    .local v8, "whichSwitcher":I
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSwitchers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    if-nez v1, :cond_0

    .line 401
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 395
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "##"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 408
    .end local v8    # "whichSwitcher":I
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v0

    .line 409
    .local v0, "collectData":Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v3, "mData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "order"

    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v9, "1063"

    const-string v10, "10637"

    invoke-virtual {v0, v9, v10, v3}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 414
    const/4 v1, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenArea:Landroid/widget/GridLayout;

    invoke-virtual {v9}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 415
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenArea:Landroid/widget/GridLayout;

    invoke-virtual {v9, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 416
    .restart local v8    # "whichSwitcher":I
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSwitchers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 419
    .end local v8    # "whichSwitcher":I
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    move-result-object v4

    .line 420
    .local v4, "manager":Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;
    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->setSwitcherList(Ljava/util/List;Ljava/util/List;)V

    .line 422
    new-instance v9, Landroid/content/Intent;

    const-string v10, "statusbar.finish.order"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    return-void
.end method

.method private generateSwitcherView(I)Landroid/widget/TextView;
    .locals 10
    .param p1, "whichSwitcher"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x2

    .line 166
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSwitchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;

    .line 168
    .local v1, "s":Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v2, "v":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 171
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitWidth:I

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitHeight:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mColorDark:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getName()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    invoke-virtual {v2, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 184
    return-object v2
.end method

.method private getSwitcherIndexByRowLocation(IIZ)I
    .locals 9
    .param p1, "rawX"    # I
    .param p2, "rawY"    # I
    .param p3, "touchInShownArea"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 304
    if-eqz p3, :cond_2

    .line 305
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownAreaBase:[I

    aget v5, v5, v7

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitWidth:I

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownAreaBase:[I

    aget v5, v5, v7

    if-ge p1, v5, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownAreaBase:[I

    aget v0, v5, v7

    .line 311
    .local v0, "baseX":I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownAreaBase:[I

    aget v1, v5, v8

    .line 322
    .local v1, "baseY":I
    :goto_1
    sub-int v5, p2, v1

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitHeight:I

    div-int v4, v5, v6

    .line 323
    .local v4, "row":I
    sub-int v5, p1, v0

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitWidth:I

    div-int v2, v5, v6

    .line 324
    .local v2, "column":I
    mul-int/lit8 v5, v4, 0x5

    add-int v3, v5, v2

    .line 326
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 327
    const/4 v3, -0x1

    goto :goto_0

    .line 313
    .end local v0    # "baseX":I
    .end local v1    # "baseY":I
    .end local v2    # "column":I
    .end local v3    # "index":I
    .end local v4    # "row":I
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenAreaBase:[I

    aget v5, v5, v7

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitWidth:I

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenAreaBase:[I

    aget v5, v5, v7

    if-lt p1, v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenAreaBase:[I

    aget v0, v5, v7

    .line 319
    .restart local v0    # "baseX":I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenAreaBase:[I

    aget v1, v5, v8

    .restart local v1    # "baseY":I
    goto :goto_1
.end method

.method private performVirtualAnimation(Z)V
    .locals 11
    .param p1, "larger"    # Z

    .prologue
    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 372
    if-eqz p1, :cond_0

    move v3, v5

    .line 373
    .local v3, "from":F
    :goto_0
    if-eqz p1, :cond_1

    .line 374
    .local v4, "to":F
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    const-string v6, "scaleX"

    new-array v7, v10, [F

    aput v3, v7, v8

    aput v4, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 375
    .local v1, "animX":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    const-wide/16 v6, 0x64

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 378
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    const-string v6, "scaleY"

    new-array v7, v10, [F

    aput v3, v7, v8

    aput v4, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 379
    .local v2, "animY":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 382
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 383
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 384
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 385
    return-void

    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animX":Landroid/animation/ObjectAnimator;
    .end local v2    # "animY":Landroid/animation/ObjectAnimator;
    .end local v3    # "from":F
    .end local v4    # "to":F
    :cond_0
    move v3, v4

    .line 372
    goto :goto_0

    .restart local v3    # "from":F
    :cond_1
    move v4, v5

    .line 373
    goto :goto_1
.end method

.method private setVirtualTranslation(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 362
    int-to-float v1, p1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaX:F

    sub-float v0, v1, v2

    .line 363
    .local v0, "xLoc":F
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mScreenWidth:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitWidth:I

    int-to-float v2, v2

    add-float v0, v1, v2

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    int-to-float v2, p2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mStatusBarHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 369
    return-void
.end method

.method private setVirtualViewParams(II)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 335
    .local v3, "whichSwitcher":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSwitchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;

    .line 337
    .local v2, "s":Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 338
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 339
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 340
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSelectedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSelectedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mColorDark:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getName()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 343
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 344
    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 348
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v0, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 352
    .local v1, "location":[I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 353
    aget v4, v1, v8

    sub-int v4, p1, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaX:F

    .line 354
    aget v4, v1, v9

    sub-int v4, p2, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualDeltaY:F

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->setVirtualTranslation(II)V

    .line 357
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v10, 0x7f04008b

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->setContentView(I)V

    .line 70
    iput-object p0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    .line 72
    const v10, 0x7f11014e

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mRootLayout:Landroid/widget/LinearLayout;

    .line 73
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mRootOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    const v11, 0x1010212

    invoke-static {v10, v11}, Lvivo/util/VivoThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mColorDark:I

    .line 77
    const v10, 0x7f1101cd

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    .line 79
    .local v6, "title":Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e020b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "titleText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "lan":Ljava/lang/String;
    const-string v10, "bn"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    :cond_0
    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01e5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-instance v12, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$1;

    invoke-direct {v12, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V

    invoke-virtual {v6, v10, v11, v12}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->initLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v6}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->showLeftButton()V

    .line 93
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setLeftButtonEnable(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-instance v12, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V

    invoke-virtual {v6, v10, v11, v12}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->initRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v6}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->showRightButton()V

    .line 104
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setRightButtonEnable(Z)V

    .line 106
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 107
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mScreenWidth:I

    .line 108
    const v10, 0x1050011

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mStatusBarHeight:I

    .line 110
    const v10, 0x7f0f0166

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitWidth:I

    .line 111
    const v10, 0x7f0f0167

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mUnitHeight:I

    .line 113
    const v10, 0x7f110281

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/GridLayout;

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownArea:Landroid/widget/GridLayout;

    .line 114
    const v10, 0x7f110282

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/GridLayout;

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenArea:Landroid/widget/GridLayout;

    .line 116
    new-instance v10, Landroid/animation/LayoutTransition;

    invoke-direct {v10}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHideLayoutTransition:Landroid/animation/LayoutTransition;

    .line 117
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHideLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 118
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHideLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 119
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHideLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 120
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHideLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 121
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHideLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 122
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownArea:Landroid/widget/GridLayout;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHideLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v10, v11}, Landroid/widget/GridLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 124
    new-instance v10, Landroid/animation/LayoutTransition;

    invoke-direct {v10}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShowLayoutTransition:Landroid/animation/LayoutTransition;

    .line 125
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShowLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 126
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShowLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 127
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShowLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 128
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShowLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 129
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShowLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 130
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenArea:Landroid/widget/GridLayout;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShowLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v10, v11}, Landroid/widget/GridLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 132
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->getSwitchers()Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mSwitchers:Landroid/util/SparseArray;

    .line 134
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->getSwitchersClassName()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "curSwitchers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    move-result-object v4

    .line 137
    .local v4, "manager":Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getShowList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 138
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getShowList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 139
    .local v9, "whichSwitcher":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 144
    .end local v9    # "whichSwitcher":I
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getHideList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 145
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->getHideList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 146
    .restart local v9    # "whichSwitcher":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 151
    .end local v9    # "whichSwitcher":I
    :cond_2
    const v10, 0x7f110283

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mVirtualView:Landroid/widget/TextView;

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void

    .line 140
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "whichSwitcher":I
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->generateSwitcherView(I)Landroid/widget/TextView;

    move-result-object v8

    .line 141
    .local v8, "v":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mShownArea:Landroid/widget/GridLayout;

    invoke-virtual {v10, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v8    # "v":Landroid/widget/TextView;
    :cond_4
    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->generateSwitcherView(I)Landroid/widget/TextView;

    move-result-object v8

    .line 148
    .restart local v8    # "v":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mHiddenArea:Landroid/widget/GridLayout;

    invoke-virtual {v10, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    return-void
.end method
