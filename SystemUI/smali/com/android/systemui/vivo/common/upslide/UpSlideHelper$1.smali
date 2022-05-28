.class Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$1;
.super Ljava/lang/Object;
.source "UpSlideHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 133
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    const-string v0, "UpSlideHelper"

    const-string v1, "blank touch"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    return v0
.end method
