.class public Lcom/vivo/settings/RingtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "RingtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/RingtonAdapter$1;,
        Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;,
        Lcom/vivo/settings/RingtonAdapter$ChangeObserver;,
        Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;
    }
.end annotation


# static fields
.field private static final MINIONS:Ljava/lang/String; = "Minions"

.field private static final TAG:Ljava/lang/String; = "RingtonAdapter"

.field private static THEME_MINIONS:Z


# instance fields
.field private MINIONS_INDEX:I

.field private TITLE_INDEX:I

.field private checkedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mDefCursor:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsEdit:Z

.field private mIsInternal:Z

.field private mOneScreenRingtons:I

.field private mOtherCount:I

.field private mResources:Landroid/content/res/Resources;

.field private mRingtonCountChangeListener:Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

.field private mWithAbc:Z

.field private mWithEdit:Z

.field private mWithHead:Z

.field private mWithSilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "persist.sys.theme.minions"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/settings/RingtonAdapter;->THEME_MINIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZZZLandroid/database/Cursor;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "withHead"    # Z
    .param p4, "withEdit"    # Z
    .param p5, "isInternal"    # Z
    .param p6, "def"    # Landroid/database/Cursor;
    .param p7, "withSilent"    # Z
    .param p8, "isEdit"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v6, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    .line 28
    iput-boolean v2, p0, Lcom/vivo/settings/RingtonAdapter;->mIsInternal:Z

    .line 29
    iput-boolean v2, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    .line 30
    iput-boolean v2, p0, Lcom/vivo/settings/RingtonAdapter;->mWithEdit:Z

    .line 31
    iput-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mIsEdit:Z

    .line 32
    iput v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    .line 33
    iput v3, p0, Lcom/vivo/settings/RingtonAdapter;->TITLE_INDEX:I

    .line 34
    iput-object v6, p0, Lcom/vivo/settings/RingtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object v6, p0, Lcom/vivo/settings/RingtonAdapter;->mResources:Landroid/content/res/Resources;

    .line 36
    iput v3, p0, Lcom/vivo/settings/RingtonAdapter;->checkedPos:I

    .line 37
    iput-object v6, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    .line 38
    iput-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mDataValid:Z

    .line 39
    iput-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithAbc:Z

    .line 40
    iput-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithSilent:Z

    .line 41
    const/16 v1, 0xa

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOneScreenRingtons:I

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->MINIONS_INDEX:I

    .line 332
    iput-object v6, p0, Lcom/vivo/settings/RingtonAdapter;->mRingtonCountChangeListener:Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    .line 46
    iput-object p2, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    .line 47
    iput-boolean p5, p0, Lcom/vivo/settings/RingtonAdapter;->mIsInternal:Z

    .line 48
    iput-boolean p3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    .line 49
    iput-boolean p4, p0, Lcom/vivo/settings/RingtonAdapter;->mWithEdit:Z

    .line 50
    iput-object p6, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    .line 51
    iput-boolean p7, p0, Lcom/vivo/settings/RingtonAdapter;->mWithSilent:Z

    .line 52
    iput-boolean p8, p0, Lcom/vivo/settings/RingtonAdapter;->mIsEdit:Z

    .line 53
    iput v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    .line 54
    iget v4, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mIsInternal:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    .line 55
    iget v4, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    add-int/2addr v1, v4

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    .line 56
    iget v4, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mWithEdit:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    add-int/2addr v1, v4

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    .line 57
    iget v4, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    add-int/2addr v1, v4

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    .line 58
    iget v4, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    if-eqz p7, :cond_6

    move v1, v2

    :goto_4
    add-int/2addr v1, v4

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    .line 59
    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "title"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->TITLE_INDEX:I

    .line 61
    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    if-eqz v1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "i":I
    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_5
    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const-string v1, "Minions"

    iget-object v4, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/vivo/settings/RingtonAdapter;->TITLE_INDEX:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    iput v0, p0, Lcom/vivo/settings/RingtonAdapter;->MINIONS_INDEX:I

    .line 71
    .end local v0    # "i":I
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mResources:Landroid/content/res/Resources;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOneScreenRingtons:I

    .line 75
    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mIsInternal:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v1

    iget v4, p0, Lcom/vivo/settings/RingtonAdapter;->mOneScreenRingtons:I

    if-le v1, v4, :cond_8

    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mIsEdit:Z

    if-nez v1, :cond_8

    .line 76
    iput-boolean v2, p0, Lcom/vivo/settings/RingtonAdapter;->mWithAbc:Z

    .line 80
    :goto_6
    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mIsInternal:Z

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v2, Lcom/vivo/settings/RingtonAdapter$ChangeObserver;

    invoke-direct {v2, p0}, Lcom/vivo/settings/RingtonAdapter$ChangeObserver;-><init>(Lcom/vivo/settings/RingtonAdapter;)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v2, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;-><init>(Lcom/vivo/settings/RingtonAdapter;Lcom/vivo/settings/RingtonAdapter$1;)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 84
    :cond_1
    const-string v1, "RingtonAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsInternal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mIsInternal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWithHead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWithEdit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithEdit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWithSilent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithSilent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOtherCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWithAbc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithAbc:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    :cond_2
    move v1, v3

    .line 54
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 55
    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 56
    goto/16 :goto_2

    :cond_5
    move v1, v3

    .line 57
    goto/16 :goto_3

    :cond_6
    move v1, v3

    .line 58
    goto/16 :goto_4

    .line 68
    .restart local v0    # "i":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_5

    .line 78
    .end local v0    # "i":I
    :cond_8
    iput-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithAbc:Z

    goto/16 :goto_6
.end method

.method static synthetic access$102(Lcom/vivo/settings/RingtonAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/RingtonAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/vivo/settings/RingtonAdapter;->mDataValid:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/settings/RingtonAdapter;)Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/RingtonAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mRingtonCountChangeListener:Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    return-object v0
.end method

.method private setDividerVisible(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isShow"    # Z

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    const v1, 0x7f0e0009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "divider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 261
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .end local v0    # "divider":Landroid/view/View;
    :cond_0
    return-void

    .line 261
    .restart local v0    # "divider":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setTitle(Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "titleRes"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "title":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private setTitle(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "titile"    # Ljava/lang/String;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v1, 0x1

    .line 290
    .end local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRadio(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 267
    const v1, 0x7f0e01d1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 268
    .local v0, "radio":Landroid/widget/RadioButton;
    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->checkedPos:I

    if-ne p1, v1, :cond_1

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCheckedPos()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/vivo/settings/RingtonAdapter;->checkedPos:I

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/vivo/settings/RingtonAdapter;->THEME_MINIONS:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vivo/settings/RingtonAdapter;->MINIONS_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 98
    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    if-ge p1, v1, :cond_2

    .line 99
    iget-boolean v1, p0, Lcom/vivo/settings/RingtonAdapter;->mWithSilent:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 108
    :cond_2
    iget-boolean v0, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/vivo/settings/RingtonAdapter;->THEME_MINIONS:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vivo/settings/RingtonAdapter;->MINIONS_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->MINIONS_INDEX:I

    if-lt v0, v1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 110
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/vivo/settings/RingtonAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x2

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "type":I
    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mIsEdit:Z

    if-eqz v3, :cond_0

    move v1, v0

    .line 161
    .end local v0    # "type":I
    .local v1, "type":I
    :goto_0
    return v1

    .line 135
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_0
    iget v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    if-ge p1, v3, :cond_8

    .line 136
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    if-eqz v3, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 139
    :cond_1
    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithSilent:Z

    if-eqz v3, :cond_6

    .line 140
    iget v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_5

    .line 141
    const/4 v0, 0x2

    .line 145
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 146
    const/4 v0, 0x2

    .line 158
    :cond_3
    :goto_2
    if-ne v0, v2, :cond_4

    .line 159
    iget-boolean v3, p0, Lcom/vivo/settings/RingtonAdapter;->mWithAbc:Z

    if-eqz v3, :cond_9

    const/4 v0, 0x3

    :cond_4
    :goto_3
    move v1, v0

    .line 161
    .end local v0    # "type":I
    .restart local v1    # "type":I
    goto :goto_0

    .line 142
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_5
    iget v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/lit8 v3, v3, -0x2

    if-ne p1, v3, :cond_2

    .line 143
    const/4 v0, 0x1

    goto :goto_1

    .line 149
    :cond_6
    iget v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_7

    .line 150
    const/4 v0, 0x1

    goto :goto_2

    .line 151
    :cond_7
    iget-object v3, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/lit8 v3, v3, -0x2

    if-ne p1, v3, :cond_3

    .line 152
    const/4 v0, 0x2

    goto :goto_2

    .line 156
    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    :cond_9
    move v0, v2

    .line 159
    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f0b08cf

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 166
    invoke-virtual {p0, p1}, Lcom/vivo/settings/RingtonAdapter;->getItemViewType(I)I

    move-result v3

    .line 167
    .local v3, "type":I
    const/4 v4, 0x0

    .line 168
    .local v4, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 169
    packed-switch v3, :pswitch_data_0

    .line 188
    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 252
    :cond_0
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/vivo/settings/RingtonAdapter;->updateRadio(ILandroid/view/View;)V

    .line 253
    return-object v4

    .line 171
    :pswitch_0
    iget-object v5, p0, Lcom/vivo/settings/RingtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04009f

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 173
    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v5, p0, Lcom/vivo/settings/RingtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040064

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {}, Lcom/android/settings/AppFeature;->getPixelPerDip()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v4, v5, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v5, p0, Lcom/vivo/settings/RingtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d3

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 180
    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v5, p0, Lcom/vivo/settings/RingtonAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d4

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 186
    :cond_1
    move-object v4, p2

    goto :goto_0

    .line 190
    :pswitch_4
    iget-boolean v5, p0, Lcom/vivo/settings/RingtonAdapter;->mIsEdit:Z

    if-eqz v5, :cond_3

    .line 191
    invoke-virtual {p0, p1}, Lcom/vivo/settings/RingtonAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 192
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 193
    iget v5, p0, Lcom/vivo/settings/RingtonAdapter;->TITLE_INDEX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;Ljava/lang/String;)Z

    .line 194
    iget v5, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    add-int/lit8 v5, v5, -0x1

    if-eq p1, v5, :cond_2

    .line 195
    invoke-direct {p0, v4, v6}, Lcom/vivo/settings/RingtonAdapter;->setDividerVisible(Landroid/view/View;Z)V

    goto :goto_1

    .line 197
    :cond_2
    invoke-direct {p0, v4, v7}, Lcom/vivo/settings/RingtonAdapter;->setDividerVisible(Landroid/view/View;Z)V

    goto :goto_1

    .line 201
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-nez p1, :cond_4

    .line 202
    const v5, 0x7f0b08d7

    invoke-direct {p0, v4, v5}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;I)Z

    .line 203
    invoke-direct {p0, v4, v6}, Lcom/vivo/settings/RingtonAdapter;->setDividerVisible(Landroid/view/View;Z)V

    goto :goto_1

    .line 205
    :cond_4
    const v5, 0x7f0b097f

    invoke-direct {p0, v4, v5}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;I)Z

    .line 206
    invoke-direct {p0, v4, v7}, Lcom/vivo/settings/RingtonAdapter;->setDividerVisible(Landroid/view/View;Z)V

    goto :goto_1

    .line 211
    :pswitch_5
    const v5, 0x7f0b08d8

    invoke-direct {p0, v4, v5}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;I)Z

    goto/16 :goto_1

    .line 215
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/vivo/settings/RingtonAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 216
    .restart local v0    # "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_5

    .line 217
    invoke-direct {p0, v4, v11}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;I)Z

    .line 231
    :goto_2
    invoke-virtual {p0}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v5

    iget v8, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    sub-int v8, v5, v8

    iget-boolean v5, p0, Lcom/vivo/settings/RingtonAdapter;->mWithSilent:Z

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    add-int v1, v8, v5

    .line 232
    .local v1, "realCount":I
    iget v5, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    sub-int v8, p1, v5

    iget-boolean v5, p0, Lcom/vivo/settings/RingtonAdapter;->mWithSilent:Z

    if-eqz v5, :cond_9

    move v5, v6

    :goto_4
    add-int v2, v8, v5

    .line 233
    .local v2, "realPos":I
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_a

    .line 234
    invoke-direct {p0, v4, v6}, Lcom/vivo/settings/RingtonAdapter;->setDividerVisible(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 218
    .end local v1    # "realCount":I
    .end local v2    # "realPos":I
    :cond_5
    iget-object v5, p0, Lcom/vivo/settings/RingtonAdapter;->mDefCursor:Landroid/database/Cursor;

    if-ne v0, v5, :cond_7

    .line 219
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 220
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;Ljava/lang/String;)Z

    .line 224
    :goto_5
    invoke-direct {p0, v4, v6}, Lcom/vivo/settings/RingtonAdapter;->setDividerVisible(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 222
    :cond_6
    invoke-direct {p0, v4, v11}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;I)Z

    goto :goto_5

    .line 228
    :cond_7
    iget v5, p0, Lcom/vivo/settings/RingtonAdapter;->TITLE_INDEX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/vivo/settings/RingtonAdapter;->setTitle(Landroid/view/View;Ljava/lang/String;)Z

    goto :goto_2

    :cond_8
    move v5, v7

    .line 231
    goto :goto_3

    .restart local v1    # "realCount":I
    :cond_9
    move v5, v7

    .line 232
    goto :goto_4

    .line 236
    .restart local v2    # "realPos":I
    :cond_a
    invoke-direct {p0, v4, v7}, Lcom/vivo/settings/RingtonAdapter;->setDividerVisible(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, p1}, Lcom/vivo/settings/RingtonAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 297
    :cond_0
    return v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/RingtonAdapter;->mDataValid:Z

    .line 322
    invoke-virtual {p0}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->mOneScreenRingtons:I

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/vivo/settings/RingtonAdapter;->mIsEdit:Z

    if-nez v0, :cond_1

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/RingtonAdapter;->mWithAbc:Z

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mRingtonCountChangeListener:Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter;->mRingtonCountChangeListener:Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    invoke-virtual {p0}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;->onRingtonCountChange(I)V

    .line 330
    :cond_0
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/RingtonAdapter;->mWithAbc:Z

    goto :goto_0
.end method

.method public setCheckedPos(I)V
    .locals 0
    .param p1, "checkedPos"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/vivo/settings/RingtonAdapter;->checkedPos:I

    .line 302
    return-void
.end method

.method public setFixCheckedPos(I)V
    .locals 2
    .param p1, "checkedPos"    # I

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/vivo/settings/RingtonAdapter;->mWithHead:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vivo/settings/RingtonAdapter;->THEME_MINIONS:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/settings/RingtonAdapter;->MINIONS_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vivo/settings/RingtonAdapter;->mOtherCount:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/vivo/settings/RingtonAdapter;->MINIONS_INDEX:I

    if-le v0, v1, :cond_0

    .line 306
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/vivo/settings/RingtonAdapter;->checkedPos:I

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iput p1, p0, Lcom/vivo/settings/RingtonAdapter;->checkedPos:I

    goto :goto_0
.end method

.method public setRingtonCountChangeListener(Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;)V
    .locals 0
    .param p1, "mRingtonCountChangeListener"    # Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/vivo/settings/RingtonAdapter;->mRingtonCountChangeListener:Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    .line 337
    return-void
.end method
