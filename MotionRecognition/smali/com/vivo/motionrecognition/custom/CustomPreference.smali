.class public Lcom/vivo/motionrecognition/custom/CustomPreference;
.super Landroid/preference/Preference;
.source "CustomPreference.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private function:Ljava/lang/String;

.field private index:I

.field private mContext:Landroid/content/Context;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->bitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->function:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->status:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->bitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->function:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->status:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->index:I

    return v0
.end method

.method public notifyChangedData()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/custom/CustomPreference;->notifyChanged()V

    .line 68
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    const/high16 v3, 0x7f0a0000

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, "img":Landroid/widget/ImageView;
    const v3, 0x7f0a0002

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0a0003

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    .local v2, "text_status":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->function:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->function:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->status:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 56
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_2
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->function:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "btm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->bitmap:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->index:I

    .line 76
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/CustomPreference;->status:Ljava/lang/String;

    .line 80
    return-void
.end method
