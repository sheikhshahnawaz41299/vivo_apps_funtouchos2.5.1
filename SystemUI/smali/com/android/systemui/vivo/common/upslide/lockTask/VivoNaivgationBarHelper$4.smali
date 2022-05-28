.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$4;
.super Ljava/lang/Object;
.source "VivoNaivgationBarHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;
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
    .line 124
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;Landroid/view/View;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method
