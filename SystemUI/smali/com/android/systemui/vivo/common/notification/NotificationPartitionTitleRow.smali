.class public Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;
.super Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.source "NotificationPartitionTitleRow.java"


# instance fields
.field private mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;->mHeight:I

    .line 23
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;->mHeight:I

    return v0
.end method
