.class public Lcom/vivo/settings/VivoLegalInfo$Supervision;
.super Lcom/vivo/settings/VivoFragment;
.source "VivoLegalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoLegalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Supervision"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    const v1, 0x7f0400d6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLegalInfo$Supervision;->showBBKBackButton()V

    .line 137
    return-void
.end method
