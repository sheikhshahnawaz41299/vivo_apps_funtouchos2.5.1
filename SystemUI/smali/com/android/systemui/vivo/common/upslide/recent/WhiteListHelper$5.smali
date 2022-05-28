.class Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;
.super Ljava/lang/Thread;
.source "WhiteListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->removeAppFromWhiteList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

.field final synthetic val$extraPkgName:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->val$extraPkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$1200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/content/Context;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->val$extraPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->val$extraPkgName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$1200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/content/Context;Ljava/lang/String;)I

    .line 201
    :cond_0
    return-void
.end method
