.class public Lcom/vivo/SmartKey/g;
.super Landroid/widget/BaseAdapter;
.source "ApplicationListActivity.java"


# instance fields
.field final synthetic v:Lcom/vivo/SmartKey/ApplicationListActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/vivo/SmartKey/g;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vivo/SmartKey/g;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vivo/SmartKey/g;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 239
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vivo/SmartKey/g;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/SmartKey/f;

    iget-object v2, v0, Lcom/vivo/SmartKey/f;->w:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/vivo/SmartKey/g;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/SmartKey/f;

    iget-object v3, v0, Lcom/vivo/SmartKey/f;->icon:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v0, p0, Lcom/vivo/SmartKey/g;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-virtual {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 248
    const v0, 0x7f0a0004

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    const v1, 0x7f0a0003

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 250
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    const v0, 0x7f0a0005

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/vivo/SmartKey/g;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 255
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_0
    return-object v4
.end method
