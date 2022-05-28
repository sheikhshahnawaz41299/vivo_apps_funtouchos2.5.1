.class Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$1;
.super Ljava/lang/Object;
.source "UpSlidePopupToolbar.java"

# interfaces
.implements Landroid/widget/FtPopupToolbar$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->setOnItemClickListener(Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

.field final synthetic val$listener:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$1;->this$0:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    iput-object p2, p0, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$1;->val$listener:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$1;->val$listener:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$1;->val$listener:Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;->onItemClick(Landroid/view/View;)V

    .line 21
    :cond_0
    return-void
.end method
