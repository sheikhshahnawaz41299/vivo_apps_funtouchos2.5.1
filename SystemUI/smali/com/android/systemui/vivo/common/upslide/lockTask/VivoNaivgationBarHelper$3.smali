.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$3;
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
    .line 114
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$3;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 118
    .local v0, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 119
    const/4 v1, 0x1

    return v1
.end method
