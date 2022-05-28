.class Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;
.super Landroid/view/IRotationWatcher$Stub;
.source "UpSlideHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method
