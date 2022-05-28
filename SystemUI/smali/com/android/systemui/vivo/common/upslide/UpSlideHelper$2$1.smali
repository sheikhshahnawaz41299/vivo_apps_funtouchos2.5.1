.class Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;
.super Ljava/lang/Object;
.source "UpSlideHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;->onRotationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;

    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    const-string v0, "UpSlideHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RotationWatcher, onRotationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;->val$rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;->val$rotation:I

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;I)V

    .line 152
    return-void
.end method
