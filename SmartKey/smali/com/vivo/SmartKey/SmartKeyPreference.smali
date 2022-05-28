.class public Lcom/vivo/SmartKey/SmartKeyPreference;
.super Landroid/preference/Preference;
.source "SmartKeyPreference.java"

# interfaces
.implements Landroid/preference/VivoPreferenceBackground;


# instance fields
.field public ac:Landroid/widget/ImageView;

.field public ad:Landroid/widget/TextView;

.field public ae:Landroid/widget/ImageView;

.field private af:Landroid/view/View;

.field public ag:I

.field private ah:[I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ah:[I

    .line 41
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/SmartKeyPreference;->setLayoutResource(I)V

    .line 42
    iput-object p1, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    .line 44
    return-void

    .line 29
    :array_0
    .array-data 4
        0x7f070007
        0x7f070008
        0x7f070009
        0x7f07000e
        0x7f07000a
    .end array-data
.end method

.method private y()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v0

    .line 103
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/vivo/SmartKey/n;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public e()V
    .locals 7

    .prologue
    const v6, 0x7f07000c

    const v5, 0x7f07000a

    .line 67
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ah:[I

    iget v3, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const/4 v1, 0x3

    iget v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    if-ne v1, v2, :cond_1

    .line 71
    const-string v1, "com.facebook.katana"

    .line 72
    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ah:[I

    iget v4, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    if-ne v1, v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    const-string v1, "smartkey_start_application_package"

    const-string v2, "unkonw"

    invoke-static {v0, v1, v2}, Lcom/vivo/SmartKey/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 88
    :cond_3
    const-string v0, "SmartKeyPreference"

    const-string v1, "The app has not been installed."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    const-string v1, "smartkey_start_application_name"

    const-string v2, "unknow"

    invoke-static {v0, v1, v2}, Lcom/vivo/SmartKey/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_4
    :goto_0
    return-void

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getBackgroundRes()I
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 118
    iget v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->af:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->af:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    const-string v0, "SmartKeyPreference"

    const-string v1, "onBindView"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0a0007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ae:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0a0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->af:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/vivo/SmartKey/SmartKeyPreference;->x()V

    .line 56
    invoke-direct {p0}, Lcom/vivo/SmartKey/SmartKeyPreference;->y()V

    .line 57
    invoke-virtual {p0}, Lcom/vivo/SmartKey/SmartKeyPreference;->e()V

    .line 58
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x4

    iget v1, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ag:I

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/vivo/SmartKey/SmartKeyPreference;->ae:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method
