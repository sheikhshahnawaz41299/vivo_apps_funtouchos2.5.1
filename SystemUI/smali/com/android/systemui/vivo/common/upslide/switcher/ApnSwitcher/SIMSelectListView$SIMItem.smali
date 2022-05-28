.class public Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;
.super Ljava/lang/Object;
.source "SIMSelectListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIMItem"
.end annotation


# instance fields
.field public checked:Z

.field hasCheckBox:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;

.field slot:I

.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->hasCheckBox:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ApnSwitcher/SIMSelectListView$SIMItem;->checked:Z

    return-void
.end method
