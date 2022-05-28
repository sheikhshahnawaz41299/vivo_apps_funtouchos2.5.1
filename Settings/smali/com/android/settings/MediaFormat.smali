.class public Lcom/android/settings/MediaFormat;
.super Lcom/vivo/settings/VSCTActivity;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MediaFormat$3;
    }
.end annotation


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIsEmulated:Z

.field private mMarkupView:Lcom/vivo/common/MarkupView;

.field private mStorageType:Lcom/vivo/settings/StorageManagerWrapper$StorageType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;-><init>()V

    .line 57
    sget-object v0, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    .line 64
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 5

    .prologue
    const v4, 0x7f0e0155

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "storage_volume"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 134
    .local v0, "storageVolume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 136
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0e0156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/MarkupView;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mMarkupView:Lcom/vivo/common/MarkupView;

    .line 137
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v1}, Lcom/vivo/common/MarkupView;->initDeleteLayout()V

    .line 138
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v1}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 142
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "otg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b08fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v2, 0x7f0b02ef

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->showBBKBackButton()V

    .line 167
    return-void

    .line 147
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "otg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b08f9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/MediaFormat;->mIsEmulated:Z

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b080f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0903

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 7

    .prologue
    const v6, 0x7f0b08f7

    const v5, 0x7f0b080e

    const v4, 0x7f0e0157

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "storage_volume"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 184
    .local v0, "storageVolume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0e0158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/MarkupView;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mMarkupView:Lcom/vivo/common/MarkupView;

    .line 187
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v1}, Lcom/vivo/common/MarkupView;->initDeleteLayout()V

    .line 188
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v1}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 191
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "otg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b08fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0b08fc

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 194
    const v1, 0x7f0b08fb

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    .line 195
    sget-object v1, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageType:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->showBBKBackButton()V

    .line 219
    return-void

    .line 196
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "otg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b08f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 199
    invoke-virtual {p0, v6}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    .line 200
    sget-object v1, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageType:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 202
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/MediaFormat;->mIsEmulated:Z

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0810

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 205
    invoke-virtual {p0, v5}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    .line 211
    :goto_1
    sget-object v1, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageType:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    goto :goto_0

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0902

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0b0901

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 209
    const v1, 0x7f0b0900

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    goto :goto_1
.end method

.method private getChooseLockExplain(Lcom/vivo/settings/StorageManagerWrapper$StorageType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    .prologue
    .line 247
    sget-object v0, Lcom/android/settings/MediaFormat$3;->$SwitchMap$com$vivo$settings$StorageManagerWrapper$StorageType:[I

    invoke-virtual {p1}, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    const v0, 0x7f0b0897

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 249
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsEmulated:Z

    if-nez v0, :cond_0

    .line 250
    const v0, 0x7f0b0994

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    const v0, 0x7f0b08a3

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_1
    const v0, 0x7f0b02f1

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 90
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0b02f0

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mStorageType:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    invoke-direct {p0, v2}, Lcom/android/settings/MediaFormat;->getChooseLockExplain(Lcom/vivo/settings/StorageManagerWrapper$StorageType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/settings/VSCTActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 108
    :cond_1
    if-nez p2, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-super {p0, p1}, Lcom/vivo/settings/VSCTActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 226
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 227
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    const-string v0, "1"

    const-string v1, "persist.sys.primary.emulate"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MediaFormat;->mIsEmulated:Z

    .line 230
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 231
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/vivo/settings/VSCTActivity;->onPause()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 244
    :cond_0
    return-void
.end method
