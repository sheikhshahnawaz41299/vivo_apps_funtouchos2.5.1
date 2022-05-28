.class Lcom/android/systemui/vivo/common/notification/VivoIconMerger$1;
.super Ljava/lang/Object;
.source "VivoIconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/VivoIconMerger;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger$1;->this$0:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger$1;->this$0:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->access$100(Lcom/android/systemui/vivo/common/notification/VivoIconMerger;)Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger$1;->this$0:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->access$000(Lcom/android/systemui/vivo/common/notification/VivoIconMerger;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setIsThereMoreIcon(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoIconMerger$1;->this$0:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->access$100(Lcom/android/systemui/vivo/common/notification/VivoIconMerger;)Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->refreshEllipsisIcon()V

    .line 212
    return-void
.end method
