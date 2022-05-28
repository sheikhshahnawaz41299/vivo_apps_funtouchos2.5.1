.class public interface abstract Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;
.super Ljava/lang/Object;
.source "AlbumDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadListener"
.end annotation


# virtual methods
.method public abstract onEnd()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onOneBitmapFinish(ILandroid/graphics/Bitmap;Ljava/lang/String;)V
.end method

.method public abstract onStart(I)V
.end method
