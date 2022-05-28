.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;
.super Ljava/lang/Object;
.source "KeyguardNature.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->prepareSelectorView(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenChanged(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;II)V
    .locals 5
    .param p1, "multiScreen"    # Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;
    .param p2, "totalScreen"    # I
    .param p3, "currentScreen"    # I

    .prologue
    const/4 v4, 0x0

    .line 551
    if-ltz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[Landroid/graphics/Bitmap;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
