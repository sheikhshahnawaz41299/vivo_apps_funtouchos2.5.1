.class public Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;
.super Landroid/widget/BbkMoveBoolButton;
.source "StatusBarBoolButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/BbkMoveBoolButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public setOnCheckedChangeListener(Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;->mListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$1;-><init>(Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;->mListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;->mListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    invoke-super {p0, v0}, Landroid/widget/BbkMoveBoolButton;->setOnBBKCheckedChangeListener(Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;)V

    .line 34
    return-void
.end method
