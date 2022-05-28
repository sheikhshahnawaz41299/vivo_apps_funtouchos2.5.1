.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;
.super Ljava/lang/Object;
.source "UpSlideTransparentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateLayoutParamsRunnable"
.end annotation


# instance fields
.field private mIsRotationChanged:Z

.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V
    .locals 1
    .param p2, "isRotationChanged"    # Z

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->mIsRotationChanged:Z

    .line 1320
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->mIsRotationChanged:Z

    .line 1321
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1335
    :goto_0
    :pswitch_0
    return-void

    .line 1328
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1600(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1700()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->mIsRotationChanged:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    goto :goto_0

    .line 1332
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1600(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Z

    move-result v5

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$1700()I

    move-result v7

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;->mIsRotationChanged:Z

    move v6, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    goto :goto_0

    .line 1326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
