.class public Lcom/android/systemui/qs/QSTile$AnimationIcon;
.super Lcom/android/systemui/qs/QSTile$ResourceIcon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationIcon"
.end annotation


# instance fields
.field private mAllowAnimation:Z

.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile;I)V
    .locals 1
    .param p2, "resId"    # I

    .prologue
    .line 362
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$1;)V

    .line 364
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 375
    .local v0, "d":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 376
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    if-eqz v1, :cond_0

    .line 377
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 381
    :goto_0
    return-object v0

    .line 379
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method public setAllowAnimation(Z)V
    .locals 0
    .param p1, "allowAnimation"    # Z

    .prologue
    .line 367
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 368
    return-void
.end method
