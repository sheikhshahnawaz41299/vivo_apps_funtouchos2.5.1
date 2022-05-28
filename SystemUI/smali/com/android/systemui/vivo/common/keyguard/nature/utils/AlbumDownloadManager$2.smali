.class Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$2;
.super Ljava/lang/Object;
.source "AlbumDownloadManager.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;


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
    .line 99
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isGoingOn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
