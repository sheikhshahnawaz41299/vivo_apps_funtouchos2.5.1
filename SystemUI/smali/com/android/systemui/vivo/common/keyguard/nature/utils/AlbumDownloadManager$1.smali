.class Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;
.super Ljava/lang/Object;
.source "AlbumDownloadManager.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onEnd()V

    .line 96
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onOneBitmapFinish(ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p1, "tokens"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 63
    const-string v1, "AlbumDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListener.onOneBitmapFinish uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$200(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bitmapBak":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v1

    invoke-interface {v1, p1, v0, p3}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onOneBitmapFinish(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 71
    .end local v0    # "bitmapBak":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$102(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$302(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Z)Z

    .line 79
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$300(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Ljava/lang/String;)V

    .line 82
    :cond_2
    return-void

    .line 74
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public onStart(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onStart(I)V

    .line 59
    :cond_0
    return-void
.end method
