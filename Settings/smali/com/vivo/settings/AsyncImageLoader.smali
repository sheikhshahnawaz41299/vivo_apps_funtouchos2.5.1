.class public Lcom/vivo/settings/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;,
        Lcom/vivo/settings/AsyncImageLoader$ImageCallback;
    }
.end annotation


# static fields
.field public static CompressedType:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AsyncImageLoader"

.field public static UncompressedType:I

.field private static mInstance:Lcom/vivo/settings/AsyncImageLoader;


# instance fields
.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

.field private mImageUtil:Lcom/vivo/content/ImageUtil;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRunHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/vivo/settings/AsyncImageLoader;->CompressedType:I

    .line 42
    const/4 v0, 0x2

    sput v0, Lcom/vivo/settings/AsyncImageLoader;->UncompressedType:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 241
    iput-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    .line 52
    iput-object p1, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    .line 53
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "loadIconThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "hd":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mRunHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mRunHandler:Landroid/os/Handler;

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mRunHandler:Landroid/os/Handler;

    new-instance v2, Lcom/vivo/settings/AsyncImageLoader$1;

    invoke-direct {v2, p0}, Lcom/vivo/settings/AsyncImageLoader$1;-><init>(Lcom/vivo/settings/AsyncImageLoader;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/AsyncImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/AsyncImageLoader;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/settings/AsyncImageLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/vivo/settings/AsyncImageLoader;->mInstance:Lcom/vivo/settings/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/vivo/settings/AsyncImageLoader;

    invoke-direct {v0, p0}, Lcom/vivo/settings/AsyncImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/settings/AsyncImageLoader;->mInstance:Lcom/vivo/settings/AsyncImageLoader;

    .line 48
    :cond_0
    sget-object v0, Lcom/vivo/settings/AsyncImageLoader;->mInstance:Lcom/vivo/settings/AsyncImageLoader;

    return-object v0
.end method


# virtual methods
.method public drawDefaultItemIcon()V
    .locals 4

    .prologue
    .line 244
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 246
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/AsyncImageLoader;->mImageUtil:Lcom/vivo/content/ImageUtil;

    .line 247
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader;->mImageUtil:Lcom/vivo/content/ImageUtil;

    invoke-virtual {v2, v1}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/vivo/settings/AsyncImageLoader;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    .line 250
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public getDefaultItemIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/preference/Preference;Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "pref"    # Landroid/preference/Preference;
    .param p4, "prefCallback"    # Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;

    .prologue
    .line 112
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 114
    .local v4, "appPkgName":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 116
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 141
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v6

    .line 121
    :cond_0
    new-instance v5, Lcom/vivo/settings/AsyncImageLoader$4;

    invoke-direct {v5, p0, p4, p3}, Lcom/vivo/settings/AsyncImageLoader$4;-><init>(Lcom/vivo/settings/AsyncImageLoader;Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;Landroid/preference/Preference;)V

    .line 128
    .local v5, "handler":Landroid/os/Handler;
    iget-object v7, p0, Lcom/vivo/settings/AsyncImageLoader;->mRunHandler:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/settings/AsyncImageLoader$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vivo/settings/AsyncImageLoader$5;-><init>(Lcom/vivo/settings/AsyncImageLoader;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "itemIcon"    # Landroid/widget/ImageView;
    .param p4, "imageCallback"    # Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    .prologue
    .line 77
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 79
    .local v4, "appPkgName":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 81
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 106
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v6

    .line 86
    :cond_0
    new-instance v5, Lcom/vivo/settings/AsyncImageLoader$2;

    invoke-direct {v5, p0, p4, p3}, Lcom/vivo/settings/AsyncImageLoader$2;-><init>(Lcom/vivo/settings/AsyncImageLoader;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;Landroid/widget/ImageView;)V

    .line 93
    .local v5, "handler":Landroid/os/Handler;
    iget-object v7, p0, Lcom/vivo/settings/AsyncImageLoader;->mRunHandler:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/settings/AsyncImageLoader$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vivo/settings/AsyncImageLoader$3;-><init>(Lcom/vivo/settings/AsyncImageLoader;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public loadDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "itemIcon"    # Landroid/widget/ImageView;
    .param p4, "imageCallback"    # Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    .prologue
    .line 146
    move-object v0, p1

    .line 148
    .local v0, "appPkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 150
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 175
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 155
    :cond_0
    new-instance v2, Lcom/vivo/settings/AsyncImageLoader$6;

    invoke-direct {v2, p0, p4, p3}, Lcom/vivo/settings/AsyncImageLoader$6;-><init>(Lcom/vivo/settings/AsyncImageLoader;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;Landroid/widget/ImageView;)V

    .line 162
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->mRunHandler:Landroid/os/Handler;

    new-instance v4, Lcom/vivo/settings/AsyncImageLoader$7;

    invoke-direct {v4, p0, p2, v0, v2}, Lcom/vivo/settings/AsyncImageLoader$7;-><init>(Lcom/vivo/settings/AsyncImageLoader;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadImageFromAppInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    .line 181
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 182
    .local v0, "assMgr":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 183
    new-instance v4, Landroid/content/res/Resources;

    invoke-direct {v4, v0, v2, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 184
    .local v4, "res":Landroid/content/res/Resources;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v5, :cond_0

    .line 186
    :try_start_0
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 190
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 191
    const/4 v0, 0x0

    .line 200
    .end local v0    # "assMgr":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 201
    iget-object v5, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/AsyncImageLoader;->mImageUtil:Lcom/vivo/content/ImageUtil;

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/vivo/settings/AsyncImageLoader;->mImageUtil:Lcom/vivo/content/ImageUtil;

    invoke-virtual {v5, v3}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 204
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 205
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 211
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    return-object v2

    .line 193
    :cond_3
    if-nez p2, :cond_1

    .line 195
    :try_start_1
    iget-object v5, p0, Lcom/vivo/settings/AsyncImageLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 207
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    .line 196
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 187
    .restart local v0    # "assMgr":Landroid/content/res/AssetManager;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public loadImageFromAppInfo(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 217
    move-object v2, p1

    .line 218
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 219
    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->mImageUtil:Lcom/vivo/content/ImageUtil;

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->mImageUtil:Lcom/vivo/content/ImageUtil;

    invoke-virtual {v3, v2}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 229
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 225
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader;->mDefItemIcom:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 229
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCachedDrawable()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "AsyncImageLoader"

    const-string v1, "calling resetCachedDrawable !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 261
    :cond_0
    return-void
.end method
