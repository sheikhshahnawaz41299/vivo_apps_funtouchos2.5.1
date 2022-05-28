.class public Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "GpsSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsSwitcher"


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mLongClick:Z

.field private mObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mLongClick:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mLongClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mLongClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateGpsSwitcher()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 143
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 144
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 145
    .local v1, "on":Z
    const-string v3, "GpsSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update Switcher_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mName:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mTextColorLight:I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 153
    :goto_1
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_0
    return-void

    .line 146
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mTextColorDark:I

    goto :goto_0

    .line 151
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public deleteObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 163
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 164
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mObserver:Ljava/util/Observer;

    .line 166
    :cond_0
    return-void
.end method

.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method

.method public prepare()V
    .locals 9

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->getSwitcherIcon()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mObserver:Ljava/util/Observer;

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "location_providers_allowed"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 76
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->updateGpsSwitcher()V

    .line 39
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 140
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
