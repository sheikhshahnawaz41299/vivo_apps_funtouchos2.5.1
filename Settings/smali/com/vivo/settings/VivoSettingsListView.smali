.class public Lcom/vivo/settings/VivoSettingsListView;
.super Lcom/vivo/common/widget/VivoListView;
.source "VivoSettingsListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/VivoListView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsListView;->setHasSearchHeadView(Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/VivoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsListView;->setHasSearchHeadView(Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/VivoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsListView;->setHasSearchHeadView(Z)V

    .line 13
    return-void
.end method
