.class public Lcom/vivo/SmartKey/MainActivity;
.super Landroid/preference/PreferenceActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private A:Lcom/vivo/SmartKey/SmartKeyPreference;

.field private B:Lcom/vivo/SmartKey/SmartKeyPreference;

.field private C:Lcom/vivo/SmartKey/SmartKeyPreference;

.field private D:Lcom/vivo/SmartKey/SmartKeyPreference;

.field private E:Lcom/vivo/SmartKey/SmartKeyPreference;

.field private F:Lcom/vivo/analysis/VivoCollectData;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private x:I

.field private y:Landroid/preference/CheckBoxPreference;

.field private z:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/SmartKey/MainActivity;->x:I

    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->A:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->A:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 277
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->B:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->B:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 283
    :pswitch_2
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->C:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->C:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    .line 289
    :pswitch_3
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_4

    .line 295
    :pswitch_4
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_5

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .locals 3

    .prologue
    .line 96
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/BbkTitleView;

    .line 97
    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->showLeftButton()V

    .line 98
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/BbkTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonIcon(I)V

    .line 101
    new-instance v1, Lcom/vivo/SmartKey/h;

    invoke-direct {v1, p0}, Lcom/vivo/SmartKey/h;-><init>(Lcom/vivo/SmartKey/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const v3, 0x7f07000e

    const v5, 0x7f07000c

    const v4, 0x7f07000a

    .line 219
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->w()Z

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, v1, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 225
    const-string v1, "com.facebook.katana"

    .line 227
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 229
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, v1, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 242
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v1

    .line 243
    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 244
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_3
    :goto_1
    return-void

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v2, v2, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    const-string v2, "smartkey_start_application_package"

    const-string v3, "unkonw"

    invoke-static {v1, v2, v3}, Lcom/vivo/SmartKey/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 254
    :cond_7
    const-string v0, "SmartKeyMainActivity"

    const-string v1, "The app has not been installed."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    const-string v1, "smartkey_start_application_name"

    const-string v2, "unknow"

    invoke-static {v0, v1, v2}, Lcom/vivo/SmartKey/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, v1, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 261
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, v1, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->A:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, p1}, Lcom/vivo/SmartKey/SmartKeyPreference;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->B:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, p1}, Lcom/vivo/SmartKey/SmartKeyPreference;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->C:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, p1}, Lcom/vivo/SmartKey/SmartKeyPreference;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, p1}, Lcom/vivo/SmartKey/SmartKeyPreference;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, p1}, Lcom/vivo/SmartKey/SmartKeyPreference;->setEnabled(Z)V

    .line 311
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vivo/SmartKey/SmartKeyPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->A:Lcom/vivo/SmartKey/SmartKeyPreference;

    .line 83
    new-instance v0, Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vivo/SmartKey/SmartKeyPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->B:Lcom/vivo/SmartKey/SmartKeyPreference;

    .line 84
    new-instance v0, Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vivo/SmartKey/SmartKeyPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->C:Lcom/vivo/SmartKey/SmartKeyPreference;

    .line 85
    new-instance v0, Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/vivo/SmartKey/SmartKeyPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    .line 86
    new-instance v0, Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/vivo/SmartKey/SmartKeyPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    .line 87
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->z:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->A:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 88
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->z:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->B:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->z:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->C:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 90
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->z:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 91
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->z:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 92
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    if-nez p3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v0, "select_item"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 192
    const-string v1, "appName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    const-string v2, "which"

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 194
    const-string v3, "SmartKeyMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select_app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " last choice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, v2, v6}, Lcom/vivo/SmartKey/MainActivity;->a(IZ)V

    .line 199
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Lcom/vivo/SmartKey/MainActivity;->getString(I)Ljava/lang/String;

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

    .line 201
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v1, v1, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MainActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/vivo/SmartKey/MainActivity;->d()V

    .line 60
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MainActivity;->addPreferencesFromResource(I)V

    .line 61
    iput-object p0, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    const-string v0, "the_key_to_start"

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->y:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "which_function_to_start"

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->z:Landroid/preference/PreferenceCategory;

    .line 65
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MainActivity;->c()V

    .line 66
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MainActivity;->getListView()Landroid/widget/ListView;

    .line 69
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->t()I

    move-result v0

    .line 70
    if-ne v0, v2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->y:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->y:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    new-instance v0, Lcom/vivo/analysis/VivoCollectData;

    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/analysis/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->F:Lcom/vivo/analysis/VivoCollectData;

    .line 79
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vivo/SmartKey/MainActivity;->a(Z)V

    .line 74
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->y:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    invoke-static {v1}, Lcom/vivo/SmartKey/n;->b(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 114
    const-string v0, "SmartKeyMainActivity"

    const-string v1, "onPreferenceChange===="

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "SmartKeyMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVivoCollectData.getControlInfo(EVENT_ID)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v3, "1040"

    invoke-virtual {v2, v3}, Lcom/vivo/analysis/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->y:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 117
    const-string v0, "SmartKeyMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theKeyToStartCBP.isChecked()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/MainActivity;->y:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->y:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {v4}, Lcom/vivo/SmartKey/SmartKeyApp;->h(I)V

    .line 121
    invoke-virtual {p0, v4}, Lcom/vivo/SmartKey/MainActivity;->a(Z)V

    .line 122
    invoke-static {v4}, Lcom/vivo/SmartKey/n;->b(Z)V

    .line 123
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1040"

    const-string v3, "10401_0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 135
    :cond_0
    :goto_0
    return v10

    .line 126
    :cond_1
    invoke-static {v10}, Lcom/vivo/SmartKey/SmartKeyApp;->h(I)V

    .line 128
    invoke-virtual {p0, v10}, Lcom/vivo/SmartKey/MainActivity;->a(Z)V

    .line 129
    invoke-static {v10}, Lcom/vivo/SmartKey/n;->b(Z)V

    .line 130
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1040"

    const-string v3, "10401_1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const v3, 0x7f07000a

    const/4 v2, 0x0

    .line 144
    instance-of v0, p2, Lcom/vivo/SmartKey/SmartKeyPreference;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->A:Lcom/vivo/SmartKey/SmartKeyPreference;

    if-ne p2, v1, :cond_1

    .line 149
    invoke-direct {p0, v0, v2}, Lcom/vivo/SmartKey/MainActivity;->a(IZ)V

    .line 150
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->i(I)V

    .line 151
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->A:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->B:Lcom/vivo/SmartKey/SmartKeyPreference;

    if-ne p2, v1, :cond_2

    .line 156
    invoke-direct {p0, v0, v2}, Lcom/vivo/SmartKey/MainActivity;->a(IZ)V

    .line 157
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->i(I)V

    .line 158
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->B:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->C:Lcom/vivo/SmartKey/SmartKeyPreference;

    if-ne p2, v1, :cond_3

    .line 163
    invoke-direct {p0, v0, v2}, Lcom/vivo/SmartKey/MainActivity;->a(IZ)V

    .line 164
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->i(I)V

    .line 165
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->C:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    if-ne p2, v1, :cond_4

    .line 170
    invoke-direct {p0, v0, v2}, Lcom/vivo/SmartKey/MainActivity;->a(IZ)V

    .line 171
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->i(I)V

    .line 172
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->D:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    iget-object v0, v0, Lcom/vivo/SmartKey/SmartKeyPreference;->ad:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/vivo/SmartKey/MainActivity;->E:Lcom/vivo/SmartKey/SmartKeyPreference;

    if-ne p2, v0, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-virtual {p0, v0, v2}, Lcom/vivo/SmartKey/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 214
    const-string v0, "SmartKeyMainActivity"

    const-string v1, "MainActivity onResume"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/vivo/SmartKey/MainActivity;->e()V

    .line 216
    return-void
.end method
