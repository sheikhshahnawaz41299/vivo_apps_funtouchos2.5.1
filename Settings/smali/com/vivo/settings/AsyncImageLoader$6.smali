.class Lcom/vivo/settings/AsyncImageLoader$6;
.super Landroid/os/Handler;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/AsyncImageLoader;

.field final synthetic val$imageCallback:Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

.field final synthetic val$itemIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AsyncImageLoader;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vivo/settings/AsyncImageLoader$6;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    iput-object p2, p0, Lcom/vivo/settings/AsyncImageLoader$6;->val$imageCallback:Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    iput-object p3, p0, Lcom/vivo/settings/AsyncImageLoader$6;->val$itemIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader$6;->val$imageCallback:Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/vivo/settings/AsyncImageLoader$6;->val$imageCallback:Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$6;->val$itemIcon:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2}, Lcom/vivo/settings/AsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 160
    :cond_0
    return-void
.end method
