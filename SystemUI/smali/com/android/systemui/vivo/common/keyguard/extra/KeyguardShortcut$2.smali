.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;
.super Ljava/lang/Object;
.source "KeyguardShortcut.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xfa

    .line 465
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 466
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 467
    .local v1, "id":I
    packed-switch v0, :pswitch_data_0

    .line 489
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 469
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, 0x6f000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$602(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 471
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 472
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v1

    const/16 v4, 0xb4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 476
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 479
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 480
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 482
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
