.class public Lcom/vivo/settings/tetherSettings/TetherHelp;
.super Lcom/vivo/settings/VivoFragment;
.source "TetherHelp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TetherHelp"


# instance fields
.field private mView:Landroid/view/View;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    return-void
.end method

.method private updateHelpView()V
    .locals 11

    .prologue
    const v10, 0x7f0b090c

    const v9, 0x7f0b090b

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 48
    const/4 v1, 0x1

    .line 49
    .local v1, "needBluetooth":Z
    if-nez v1, :cond_0

    .line 50
    iget-object v4, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mView:Landroid/view/View;

    const v5, 0x7f0e021e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mView:Landroid/view/View;

    const v5, 0x7f0e0221

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v4, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mView:Landroid/view/View;

    const v5, 0x7f0e021d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    .local v3, "textView":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 56
    iget-object v4, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_1

    .line 57
    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v10, v4}, Lcom/vivo/settings/tetherSettings/TetherHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    iget-object v4, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mView:Landroid/view/View;

    const v5, 0x7f0e0220

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    .local v2, "nwTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_4

    .line 69
    iget-object v4, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_3

    .line 70
    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/vivo/settings/tetherSettings/TetherHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    return-void

    .line 59
    .end local v2    # "nwTextView":Landroid/widget/TextView;
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 60
    .local v0, "modulName":Ljava/lang/String;
    const-string v4, "TetherHelp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWifiConfig is null. Use "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instead. Is in monkey ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {p0, v10, v4}, Lcom/vivo/settings/tetherSettings/TetherHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    .end local v0    # "modulName":Ljava/lang/String;
    :cond_2
    const-string v4, "TetherHelp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "helpView\'s textView is null. Is in monkey ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .restart local v2    # "nwTextView":Landroid/widget/TextView;
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 73
    .restart local v0    # "modulName":Ljava/lang/String;
    const-string v4, "TetherHelp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWifiConfig is null. Use "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instead. Is in monkey ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/vivo/settings/tetherSettings/TetherHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 77
    .end local v0    # "modulName":Ljava/lang/String;
    :cond_4
    const-string v4, "TetherHelp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "helpView\'s nwTextView is null. Is in monkey ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/vivo/settings/tetherSettings/TetherHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "wifi_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 34
    const-string v1, "TetherHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mWifiConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/vivo/settings/tetherSettings/TetherHelp;->showBBKBackButton()V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v0, 0x7f0400d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mView:Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/tetherSettings/TetherHelp;->updateHelpView()V

    .line 44
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherHelp;->mView:Landroid/view/View;

    return-object v0
.end method
