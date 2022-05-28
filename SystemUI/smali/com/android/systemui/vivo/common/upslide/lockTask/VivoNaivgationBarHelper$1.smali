.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$1;
.super Ljava/lang/Object;
.source "VivoNaivgationBarHelper.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$OnVerticalChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->prepareNavigationBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerticalChanged(Z)V
    .locals 1
    .param p1, "isVertical"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V

    .line 92
    return-void
.end method
