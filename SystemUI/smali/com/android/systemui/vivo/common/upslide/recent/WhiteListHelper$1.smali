.class Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;
.super Landroid/database/ContentObserver;
.source "WhiteListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 61
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
