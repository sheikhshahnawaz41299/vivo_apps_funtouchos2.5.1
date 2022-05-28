.class Lcom/vivo/settings/AsyncImageLoader$7;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$appPkgName:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$iconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AsyncImageLoader;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/vivo/settings/AsyncImageLoader$7;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    iput-object p2, p0, Lcom/vivo/settings/AsyncImageLoader$7;->val$iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/vivo/settings/AsyncImageLoader$7;->val$appPkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/settings/AsyncImageLoader$7;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$7;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader$7;->val$iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/vivo/settings/AsyncImageLoader;->loadImageFromAppInfo(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$7;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    invoke-static {v2}, Lcom/vivo/settings/AsyncImageLoader;->access$000(Lcom/vivo/settings/AsyncImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader$7;->val$appPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$7;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 172
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$7;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method
