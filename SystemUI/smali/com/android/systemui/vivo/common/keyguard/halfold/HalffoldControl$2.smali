.class Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;
.super Ljava/lang/Object;
.source "HalffoldControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 391
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-boolean v3, v3, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->fromHorizontal:Z

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V

    .line 393
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02025e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 395
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->fromHorizontal:Z

    .line 397
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 398
    .local v0, "cf":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 399
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->fromHorizontal:Z

    .line 408
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1300(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 409
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1400(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1500(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 414
    .end local v0    # "cf":Landroid/content/res/Configuration;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-void

    .line 401
    .restart local v0    # "cf":Landroid/content/res/Configuration;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V

    .line 402
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$800(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$900(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    .end local v0    # "cf":Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 405
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cf":Landroid/content/res/Configuration;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v6

    const/4 v7, 0x0

    const v8, 0x186a0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1200(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
