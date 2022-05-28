.class public Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;
.super Lcom/vivo/settings/VivoFragment;
.source "TetherWlanApConfiguare.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field public static final OPEN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetherWlanApConfiguare"

.field public static final WPA2_INDEX:I = 0x1


# instance fields
.field private mDividerView:Landroid/view/View;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordLayout:Landroid/widget/LinearLayout;

.field private mPasswordShowBtn:Landroid/widget/BbkMoveBoolButton;

.field private mPasswordShowListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

.field private mPasswordTextWather:Landroid/text/TextWatcher;

.field private mRes:I

.field private mSaveBtnClick:Landroid/view/View$OnClickListener;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityLayout:Landroid/widget/LinearLayout;

.field private mSecurityTypeIndex:I

.field private mShowPassword:Z

.field private mSsid:Landroid/widget/EditText;

.field private mSsidLayout:Landroid/widget/LinearLayout;

.field private mSsidTextWather:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    .line 61
    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    .line 62
    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurity:Landroid/widget/Spinner;

    .line 63
    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    .line 64
    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordShowBtn:Landroid/widget/BbkMoveBoolButton;

    .line 199
    new-instance v0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$2;-><init>(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V

    iput-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsidTextWather:Landroid/text/TextWatcher;

    .line 218
    new-instance v0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$3;

    invoke-direct {v0, p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$3;-><init>(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V

    iput-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordTextWather:Landroid/text/TextWatcher;

    .line 254
    new-instance v0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$4;

    invoke-direct {v0, p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$4;-><init>(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V

    iput-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordShowListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    .line 264
    new-instance v0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$5;

    invoke-direct {v0, p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$5;-><init>(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V

    iput-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSaveBtnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private SaveConfig()V
    .locals 6

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 275
    .local v1, "configuare":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "wifi_config"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 280
    const-string v3, "TetherWlanApConfiguare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SaveConfig configuare:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 285
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->validate()V

    return-void
.end method

.method static synthetic access$102(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mShowPassword:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->updatePasswordInputType(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->SaveConfig()V

    return-void
.end method

.method private getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 289
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 291
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 292
    iget v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 306
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 294
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 299
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 300
    iget-object v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSecurityTypeIndex()I
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 324
    const-string v0, "TetherWlanApConfiguare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSecurityFields mSecurityTypeIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordShowBtn:Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v0, v3}, Landroid/widget/BbkMoveBoolButton;->setChecked(Z)V

    .line 331
    iget-boolean v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mShowPassword:Z

    invoke-direct {p0, v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->updatePasswordInputType(Z)V

    .line 333
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePasswordInputType(Z)V
    .locals 2
    .param p1, "showPassword"    # Z

    .prologue
    .line 341
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 345
    return-void

    .line 341
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private updateSecurityFields()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 314
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurity:Landroid/widget/Spinner;

    iget v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 316
    iget v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    return-void
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 353
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 356
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->setTitleRightButtonEnable(Z)V

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_2
    invoke-virtual {p0, v2}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->setTitleRightButtonEnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "wifi_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 83
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->getSecurityTypeIndex()I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mShowPassword:Z

    .line 86
    invoke-virtual {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x3010004

    invoke-static {v1, v2}, Lvivo/util/VivoThemeUtil;->getAttributeResId(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mRes:I

    .line 87
    const-string v1, "TetherWlanApConfiguare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mWifiConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 93
    const v1, 0x7f0400db

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0222

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsidLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0224

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityLayout:Landroid/widget/LinearLayout;

    .line 97
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0226

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordLayout:Landroid/widget/LinearLayout;

    .line 98
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mDividerView:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    .line 101
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0225

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurity:Landroid/widget/Spinner;

    .line 102
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    .line 103
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    const v2, 0x7f0e0227

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/BbkMoveBoolButton;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordShowBtn:Landroid/widget/BbkMoveBoolButton;

    .line 105
    invoke-virtual {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08000f

    const v3, 0x7f0400da

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 108
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 109
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsidTextWather:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 131
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordTextWather:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordShowBtn:Landroid/widget/BbkMoveBoolButton;

    iget-object v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordShowListener:Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/BbkMoveBoolButton;->setOnBBKCheckedChangeListener(Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;)V

    .line 151
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mPasswordShowBtn:Landroid/widget/BbkMoveBoolButton;

    invoke-virtual {v1, v5}, Landroid/widget/BbkMoveBoolButton;->setChecked(Z)V

    .line 152
    iget-boolean v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mShowPassword:Z

    invoke-direct {p0, v1}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->updatePasswordInputType(Z)V

    .line 154
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSsidLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mRes:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 156
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->updateSecurityFields()V

    .line 157
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->showSecurityFields()V

    .line 161
    iget-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onDestroy()V

    .line 188
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSecurityTypeIndex:I

    .line 244
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->showSecurityFields()V

    .line 245
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->validate()V

    .line 246
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 168
    const v0, 0x7f0b07ca

    invoke-virtual {p0, v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->showTitleLeftButton(I)V

    .line 169
    const v0, 0x7f0b0806

    invoke-virtual {p0, v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->showTitleRightButton(I)V

    .line 170
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->mSaveBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$1;-><init>(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method
