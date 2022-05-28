.class public Lcom/vivo/settings/SingleChoiseAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SingleChoiseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleChoiseAdapter"


# instance fields
.field private checkedPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defCheck"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/vivo/settings/SingleChoiseAdapter;, "Lcom/vivo/settings/SingleChoiseAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const v0, 0x7f0400d3

    const v1, 0x1020016

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/SingleChoiseAdapter;->checkedPos:I

    .line 19
    iput p2, p0, Lcom/vivo/settings/SingleChoiseAdapter;->checkedPos:I

    .line 20
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defCheck"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/vivo/settings/SingleChoiseAdapter;, "Lcom/vivo/settings/SingleChoiseAdapter<TT;>;"
    .local p3, "objects":[Ljava/lang/Object;, "[TT;"
    const v0, 0x7f0400d3

    const v1, 0x1020016

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/SingleChoiseAdapter;->checkedPos:I

    .line 23
    iput p2, p0, Lcom/vivo/settings/SingleChoiseAdapter;->checkedPos:I

    .line 24
    return-void
.end method


# virtual methods
.method public getCheckPos()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/vivo/settings/SingleChoiseAdapter;, "Lcom/vivo/settings/SingleChoiseAdapter<TT;>;"
    iget v0, p0, Lcom/vivo/settings/SingleChoiseAdapter;->checkedPos:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/vivo/settings/SingleChoiseAdapter;, "Lcom/vivo/settings/SingleChoiseAdapter<TT;>;"
    const/4 v4, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "view":Landroid/view/View;
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 30
    const v3, 0x7f0e01d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 31
    .local v1, "radio":Landroid/widget/RadioButton;
    iget v3, p0, Lcom/vivo/settings/SingleChoiseAdapter;->checkedPos:I

    if-ne p1, v3, :cond_0

    .line 32
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 36
    :goto_0
    const v3, 0x7f0e0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vivo/settings/SingleChoiseAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 38
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_1
    return-object v2

    .line 34
    .end local v0    # "divider":Landroid/view/View;
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 40
    .restart local v0    # "divider":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCheckPos(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/vivo/settings/SingleChoiseAdapter;, "Lcom/vivo/settings/SingleChoiseAdapter<TT;>;"
    iput p1, p0, Lcom/vivo/settings/SingleChoiseAdapter;->checkedPos:I

    .line 63
    return-void
.end method
