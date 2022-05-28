.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$2;
.super Ljava/lang/Object;
.source "UpSlideTransparentView.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreenChanged()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->handleFullScreenChanged()V

    .line 128
    return-void
.end method
