.class public Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$1;,
        Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconImageHeight:I

.field private mIconImageWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mShortcutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "mShortcutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mShortcutList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 36
    const-string v0, "KeyguardShortcutAdapter"

    const-string v1, "getCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mShortcutList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 51
    const-string v0, "KeyguardShortcutAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$1;)V

    .line 61
    .local v0, "holder":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040065

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    const v3, 0x7f1101ac

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f1101ad

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutLable:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f1101ae

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutSiwtch:Landroid/widget/RadioButton;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .line 72
    .local v1, "info":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    const/4 v2, 0x0

    .line 73
    .local v2, "mTextparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 75
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "mTextparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .restart local v2    # "mTextparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 80
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutLable:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_1
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutSiwtch:Landroid/widget/RadioButton;

    iget-boolean v4, v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    return-object p2

    .line 68
    .end local v0    # "holder":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;
    .end local v1    # "info":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    .end local v2    # "mTextparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;
    goto :goto_0

    .line 85
    .restart local v1    # "info":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    .restart local v2    # "mTextparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "mTextparams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x2

    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .restart local v2    # "mTextparams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 90
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 91
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v4, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 93
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutIcon:Landroid/widget/TextView;

    const v4, 0x7f0e01a5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v3, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->ShortcutLable:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setShortcutList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;>;"
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->mShortcutList:Ljava/util/ArrayList;

    .line 105
    :cond_0
    return-void
.end method
