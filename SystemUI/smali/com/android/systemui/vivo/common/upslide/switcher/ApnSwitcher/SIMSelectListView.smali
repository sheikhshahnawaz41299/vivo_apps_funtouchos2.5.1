.class public Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;
.super Landroid/widget/ListView;
.source "SIMSelectListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$1;,
        Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;,
        Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;
    }
.end annotation


# static fields
.field public static final FLAG_3G:I = 0x1

.field public static final FLAG_APN:I = 0x0

.field public static final FLAG_APN_DEFAULT:I = 0x2


# instance fields
.field private defaultChecked:Z

.field private mContext:Landroid/content/Context;

.field private mFlag:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

.field private mSIMListAdapter:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;

.field private mSIMSlots:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->defaultChecked:Z

    .line 45
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mFlag:I

    .line 47
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->initSIMItems()V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$1;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMListAdapter:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMListAdapter:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->defaultChecked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mFlag:I

    return v0
.end method

.method private initSIMItems()V
    .locals 4

    .prologue
    .line 56
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mFlag:I

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    .line 62
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)V

    aput-object v2, v1, v0

    .line 64
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    .line 65
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->name:Ljava/lang/String;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    goto :goto_0

    .line 68
    .restart local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mFlag:I

    if-nez v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)V

    aput-object v3, v1, v2

    .line 70
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    aget-object v1, v1, v2

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->slot:I

    .line 71
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->name:Ljava/lang/String;

    .line 82
    :goto_2
    return-void

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)V

    aput-object v3, v1, v2

    .line 75
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0236

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->name:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->hasCheckBox:Z

    .line 78
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)V

    aput-object v3, v1, v2

    .line 79
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMItems:[Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMSlots:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->name:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method notifyDataChanged()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMListAdapter:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->mSIMListAdapter:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMListAdapter;->notifyDataSetChanged()V

    .line 156
    :cond_0
    return-void
.end method

.method public shouldSetToDefault()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;->defaultChecked:Z

    return v0
.end method
