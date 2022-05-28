.class Lcom/vivo/settings/AsyncImageLoader$3;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/AsyncImageLoader;

.field final synthetic val$appPkgName:Ljava/lang/String;

.field final synthetic val$applicationInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AsyncImageLoader;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/vivo/settings/AsyncImageLoader$3;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    iput-object p2, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$appPkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$3;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/AsyncImageLoader;->loadImageFromAppInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$3;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    invoke-static {v2}, Lcom/vivo/settings/AsyncImageLoader;->access$000(Lcom/vivo/settings/AsyncImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$appPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 103
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/vivo/settings/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method
