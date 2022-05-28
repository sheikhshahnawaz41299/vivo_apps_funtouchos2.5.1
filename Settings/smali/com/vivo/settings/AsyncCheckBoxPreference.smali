.class public Lcom/vivo/settings/AsyncCheckBoxPreference;
.super Landroid/preference/VivoCheckBoxPreference;
.source "AsyncCheckBoxPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncCheckBoxPreference"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field private mCheckBoxView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

.field private mImageUtil:Lcom/vivo/content/ImageUtil;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v0, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    iput-object v0, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    iput-object p1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 44
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setLayoutResource(I)V

    .line 45
    iget-object v0, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/AsyncCheckBoxPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/AsyncCheckBoxPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/vivo/settings/AsyncCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private bindCheckBox(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    .line 61
    const v1, 0x7f0e0041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "iconView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/BbkMoveBoolButton;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mCheckBoxView:Landroid/view/View;

    check-cast v1, Landroid/widget/BbkMoveBoolButton;

    new-instance v2, Lcom/vivo/settings/AsyncCheckBoxPreference$1;

    invoke-direct {v2, p0}, Lcom/vivo/settings/AsyncCheckBoxPreference$1;-><init>(Lcom/vivo/settings/AsyncCheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/BbkMoveBoolButton;->setOnBBKCheckedChangeListener(Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;)V

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultItemIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 107
    invoke-static {p2}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mImageUtil:Lcom/vivo/content/ImageUtil;

    .line 108
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mImageUtil:Lcom/vivo/content/ImageUtil;

    invoke-virtual {v1, p1}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    .line 110
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    .line 112
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/vivo/settings/AsyncCheckBoxPreference;->bindCheckBox(Landroid/view/View;)V

    .line 56
    invoke-super {p0, p1}, Landroid/preference/VivoCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/VivoCheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mImageUtil:Lcom/vivo/content/ImageUtil;

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mImageUtil:Lcom/vivo/content/ImageUtil;

    invoke-virtual {v2, p1}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 93
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 97
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iput-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->icon:Landroid/graphics/drawable/Drawable;

    .line 99
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/AsyncCheckBoxPreference;->notifyChanged()V

    .line 100
    return-void

    .line 95
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/AsyncCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v2}, Lcom/vivo/settings/AsyncCheckBoxPreference;->getDefaultItemIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_0
.end method
