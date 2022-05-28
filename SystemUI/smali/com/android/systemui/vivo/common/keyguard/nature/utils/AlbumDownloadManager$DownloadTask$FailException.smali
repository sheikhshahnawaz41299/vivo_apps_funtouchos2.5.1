.class Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$FailException;
.super Ljava/lang/Exception;
.source "AlbumDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FailException"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;Ljava/lang/String;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$FailException;->this$1:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$FailException;->printStackTrace()V

    .line 306
    return-void
.end method
