.class public Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;
.super Ljava/lang/Object;
.source "AlbumDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapCache"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mUri:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public hasCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :cond_0
    return v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->recycleBitmap()V

    .line 153
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mUri:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    return-void
.end method

.method public recycleBitmap()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 149
    :cond_0
    return-void
.end method
