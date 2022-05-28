.class public Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;
.super Landroid/widget/FtPopupToolbar;
.source "UpSlidePopupToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/FtPopupToolbar;-><init>(Landroid/view/View;)V

    .line 10
    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;

    .prologue
    .line 14
    new-instance v0, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$1;-><init>(Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/FtPopupToolbar;->setOnItemClickListener(Landroid/widget/FtPopupToolbar$OnItemClickListener;)V

    .line 23
    return-void
.end method
