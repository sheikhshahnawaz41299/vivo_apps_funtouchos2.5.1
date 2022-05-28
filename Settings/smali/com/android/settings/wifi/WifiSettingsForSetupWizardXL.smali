.class public Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EXTRA_PREFS_LANDSCAPE_LOCK:Ljava/lang/String; = "extra_prefs_landscape_lock"

.field private static final EXTRA_PREFS_PORTRAIT_LOCK:Ljava/lang/String; = "extra_prefs_portrait_lock"

.field private static final SCREEN_STATE_CONNECTED:I = 0x3

.field private static final SCREEN_STATE_CONNECTING:I = 0x2

.field private static final SCREEN_STATE_DISCONNECTED:I = 0x0

.field private static final SCREEN_STATE_EDITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetupWizard"

.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 62
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 135
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 243
    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 248
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const v2, 0x7f0e00e7

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, "layoutRoot":Landroid/view/View;
    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 166
    .end local v1    # "layoutRoot":Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 169
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 173
    :cond_2
    const v2, 0x7f0e02ae

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 174
    const v2, 0x7f0e02af

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 175
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 176
    const v2, 0x7f0e02b0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 177
    const v2, 0x7f0e02b9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 179
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 181
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    const v2, 0x7f0e02bb

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 184
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v2, 0x7f0e02bf

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 186
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v2, 0x7f0e02be

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 188
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v2, 0x7f0e02bd

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 190
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v2, 0x7f0e02bc

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 192
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v2, 0x7f0e02ad

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 195
    const v2, 0x7f0e02b2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 197
    const v2, 0x7f0e02b3

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 198
    const v2, 0x7f0e02b6

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 199
    const v2, 0x7f0e02b7

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 200
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 412
    return-void
.end method

.method private onAuthenticationFailure()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 691
    iput v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 693
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 695
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 697
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    :goto_0
    const v1, 0x7f0e02b5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 705
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 706
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 708
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 709
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 710
    return-void

    .line 700
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Title during editing/adding a network was empty."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    goto :goto_0
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 573
    iget v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 574
    :cond_0
    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput v8, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 579
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 581
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 582
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 586
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 590
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 591
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 593
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "SetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v6, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 605
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 606
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 621
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 622
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 623
    const v4, 0x7f0e02b5

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 624
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 625
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 626
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    .line 627
    return-void

    .line 608
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iput v8, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 609
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings;->resumeWifiScan()V

    .line 611
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 613
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 614
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 615
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 616
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 617
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0b057f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 532
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .param p1, "disconnectNetwork"    # Z

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 668
    if-eqz p1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->refreshAccessPoints()V

    .line 673
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 210
    return-void
.end method

.method private showAddNetworkTitle()V
    .locals 2

    .prologue
    .line 348
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b057a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    return-void
.end method

.method private showConnectedProgressBar()V
    .locals 2

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 754
    return-void
.end method

.method private showConnectedState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 322
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 324
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 325
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 327
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectedTitle()V

    .line 328
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectedProgressBar()V

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v1, 0x7f0b0584

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0b057f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 341
    return-void
.end method

.method private showConnectedTitle()V
    .locals 5

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 388
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b0579

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    return-void

    .line 384
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 746
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 747
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 748
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 312
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 313
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 316
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 375
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b0578

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void

    .line 371
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b0576

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 721
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDisconnectedState(Ljava/lang/String;)V
    .locals 3
    .param p1, "stateString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 296
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 297
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    return-void
.end method

.method private showEditingButtonState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    return-void
.end method

.method private showEditingTitle()V
    .locals 5

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 362
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b0577

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    return-void

    .line 358
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 739
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 408
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0b057e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0b057d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accessPointSecurity"    # I

    .prologue
    const v5, 0x7f0e0281

    const v4, 0x7f0e0222

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 483
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    const v2, 0x7f0e0282

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 485
    const v2, 0x7f0e0284

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 488
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 489
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 490
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 495
    const v1, 0x7f0e0283

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 496
    const v1, 0x7f0e0282

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :goto_0
    const v1, 0x7f0e0285

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 502
    const v1, 0x7f0e0284

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 503
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 526
    :goto_1
    return v0

    .line 499
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 517
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0e0269

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 526
    goto :goto_1

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0e027c

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    const/4 v4, 0x1

    .line 649
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 651
    iget v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 656
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 659
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 660
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    const v2, 0x7f04003c

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AccessPoint;->setLayoutResource(I)V

    .line 661
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 663
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 214
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 216
    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 240
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 219
    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 222
    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v0, 0x7f0b057d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 230
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 233
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 234
    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 237
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 543
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 545
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 553
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 556
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0b057f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 559
    const v1, 0x7f0e02b5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 560
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f0b0583

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 566
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 141
    const v0, 0x7f040101

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 143
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e02b4

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 150
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 152
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 157
    return-void
.end method

.method onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$2;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 768
    return-void
.end method

.method onSupplicantStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 680
    const-string v1, "supplicantError"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 681
    .local v0, "errorCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 682
    const-string v1, "SetupWizard"

    const-string v2, "Received authentication error event."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAuthenticationFailure()V

    .line 685
    :cond_0
    return-void
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    return-void
.end method

.method showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 5
    .param p1, "selectedAccessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 422
    iput v2, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 424
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 430
    :cond_0
    const/4 p2, 0x1

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->pauseWifiScan()V

    .line 436
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 438
    const v1, 0x7f0e02b5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 440
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 441
    new-instance v1, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;-><init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    .line 443
    if-nez p1, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showAddNetworkTitle()V

    .line 445
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 471
    :goto_0
    return-void

    .line 449
    :cond_2
    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 450
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 453
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 456
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    .line 457
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 458
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 459
    iget v1, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 460
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    goto :goto_0

    .line 462
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const v2, 0x7f0b01e3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 468
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0b0581

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "originalState"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 252
    sget-object v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    .line 254
    .local v0, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 257
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 260
    :cond_0
    sget-object v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$3;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 286
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 288
    invoke-static {p0, v0, v3}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedState(Ljava/lang/String;)V

    .line 292
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 293
    return-void

    .line 262
    :pswitch_0
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 267
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 271
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    goto :goto_0

    .line 276
    :pswitch_1
    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConnectedState()V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
