.class Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$1;
.super Ljava/lang/Object;
.source "UpSlideGuideViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$1;->this$0:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    const-string v0, "UpSlideGuideViewManager"

    const-string v1, "blank touch"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method
