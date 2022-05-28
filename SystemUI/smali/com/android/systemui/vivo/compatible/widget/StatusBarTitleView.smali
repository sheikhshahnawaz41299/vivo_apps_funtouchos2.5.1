.class public Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;
.super Lcom/vivo/common/BbkTitleView;
.source "StatusBarTitleView.java"


# static fields
.field public static final TITLE_BTN_BACK:I = 0x2

.field public static final TITLE_BTN_NORMAL:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/BbkTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method
