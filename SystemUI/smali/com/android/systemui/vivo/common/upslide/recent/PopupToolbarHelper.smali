.class public Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;
.super Ljava/lang/Object;
.source "PopupToolbarHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupToolbarHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

.field private mRecentItemsContainer:Landroid/widget/LinearLayout;

.field private mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whiteListHelper"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mWhiteListHelper:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public dismissPopupToolbar()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->hide()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    .line 39
    :cond_0
    return-void
.end method

.method public isPopupToolbarShowing()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecentItemsContainer(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "recentItemsContainer"    # Landroid/widget/LinearLayout;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    .line 32
    return-void
.end method

.method public showPopupToolbar(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tip"    # I

    .prologue
    const/4 v5, 0x1

    .line 49
    new-instance v3, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    const v4, 0x7f11027b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    .line 50
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    invoke-virtual {v3, v5, p2}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->initItemTextView(II)V

    .line 51
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    new-instance v4, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;ILandroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->setOnItemClickListener(Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;)V

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 95
    .local v2, "popupToolbarClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setOutsideTouchable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "popupToolbarClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->mPopupToolbar:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->show()V

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PopupToolbarHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
