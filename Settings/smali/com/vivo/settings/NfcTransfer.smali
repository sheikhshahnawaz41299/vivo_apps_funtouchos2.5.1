.class public Lcom/vivo/settings/NfcTransfer;
.super Lcom/vivo/settings/VivoFragment;
.source "NfcTransfer.java"


# instance fields
.field private mNfcAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/vivo/settings/NfcTransfer;->showBBKBackButton()V

    .line 20
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v2, 0x7f040083

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0165

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/vivo/settings/NfcTransfer;->mNfcAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 26
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, "explainView":Landroid/widget/TextView;
    const v2, 0x7f0b0881

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 28
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/settings/NfcTransfer;->mNfcAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 42
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/vivo/settings/NfcTransfer;->mNfcAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/vivo/settings/NfcTransfer;->mNfcAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 37
    :cond_0
    return-void
.end method
