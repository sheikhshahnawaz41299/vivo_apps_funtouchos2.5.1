.class Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;
.super Ljava/lang/Object;
.source "UpSlideHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->handleThemeChanged()V
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
    .line 874
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 878
    const-string v5, "UpSlideHelper"

    const-string v6, "theme has changed, update brightness layout and volume layout"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->unregister()V

    .line 881
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->unregister()V

    .line 883
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 885
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040085

    invoke-virtual {v2, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 886
    .local v1, "brightnessLayout":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$700(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getBrightnessHeight()I

    move-result v0

    .line 887
    .local v0, "brightnessHeight":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 889
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 890
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$900(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    .line 892
    const v5, 0x7f04008d

    invoke-virtual {v2, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 893
    .local v4, "volumeLayout":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$700(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getVolumeHeight()I

    move-result v3

    .line 894
    .local v3, "volumeHeight":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 896
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 897
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    .line 899
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->access$1100(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    .line 900
    return-void
.end method
