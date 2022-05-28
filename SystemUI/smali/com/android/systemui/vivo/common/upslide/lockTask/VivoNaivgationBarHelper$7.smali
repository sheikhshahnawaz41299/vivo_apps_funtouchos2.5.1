.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$7;
.super Ljava/lang/Object;
.source "VivoNaivgationBarHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 260
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$7;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    const-string v0, "VivoNaivgationBarHelper"

    const-string v1, "blank touch"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    return v0
.end method
