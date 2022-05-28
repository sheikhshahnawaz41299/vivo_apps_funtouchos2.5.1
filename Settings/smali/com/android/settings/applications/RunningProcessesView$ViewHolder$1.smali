.class Lcom/android/settings/applications/RunningProcessesView$ViewHolder$1;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Lcom/vivo/settings/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView$ViewHolder;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder$1;->this$0:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "itemIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_0
    return-void
.end method
