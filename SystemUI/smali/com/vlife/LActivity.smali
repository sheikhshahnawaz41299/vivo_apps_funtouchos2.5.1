.class public Lcom/vlife/LActivity;
.super Lcom/vlife/plugin/module/ModuleActivity;
.source "LActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vlife/plugin/module/ModuleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/vlife/LActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlife/LActivity;->setContentView(Landroid/view/View;)V

    .line 20
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 24
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 25
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/vlife/LActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    return-void
.end method
