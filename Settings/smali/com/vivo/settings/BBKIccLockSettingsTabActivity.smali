.class public Lcom/vivo/settings/BBKIccLockSettingsTabActivity;
.super Lcom/vivo/app/VivoTabActivity;
.source "BBKIccLockSettingsTabActivity.java"


# static fields
.field private static final DBG:Z = true

.field public static SIM_DESCRIPTION:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static TITLENAME:Ljava/lang/String;


# instance fields
.field private mSimUtils:Lcom/vivo/settings/SimUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "BBKSimStatusTabActivity"

    sput-object v0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, "TITLE_NAME"

    sput-object v0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->TITLENAME:Ljava/lang/String;

    .line 66
    const-string v0, "sim_description"

    sput-object v0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->SIM_DESCRIPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vivo/app/VivoTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/vivo/app/VivoTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v4, Lcom/vivo/settings/SimUtils;

    invoke-direct {v4, p0}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 76
    const v4, 0x7f040017

    invoke-virtual {p0, v4}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->showTitleLeftButton()V

    .line 79
    invoke-virtual {p0, v9}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->setTitleLeftButtonIcon(I)V

    .line 80
    new-instance v4, Lcom/vivo/settings/BBKIccLockSettingsTabActivity$1;

    invoke-direct {v4, p0}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity$1;-><init>(Lcom/vivo/settings/BBKIccLockSettingsTabActivity;)V

    invoke-virtual {p0, v4}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    .line 89
    .local v3, "tabHost":Landroid/widget/TabHost;
    iget-object v4, p0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v2

    .line 92
    .local v2, "simCount":I
    if-lt v2, v8, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "mIntent1":Landroid/content/Intent;
    const-class v4, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    sget-object v4, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->SIM_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v4, "sim1"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v5, v6}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 103
    .end local v0    # "mIntent1":Landroid/content/Intent;
    :cond_0
    if-lt v2, v9, :cond_1

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v1, "mIntent2":Landroid/content/Intent;
    const-class v4, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    sget-object v4, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->SIM_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v4, "sim2"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v5, v8}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 113
    .end local v1    # "mIntent2":Landroid/content/Intent;
    :cond_1
    return-void
.end method
