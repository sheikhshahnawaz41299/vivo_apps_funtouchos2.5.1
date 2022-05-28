.class public Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "BBKNfcSettingsTwo.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/BBKNfcSettingsTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VivoNfcSettings"
.end annotation


# static fields
.field private static final GET_NXP_NFC_ADAPTER_MAX_TRY_COUNT:I = 0x2

.field private static final KEY_DUAL_SIM_NFC:Ljava/lang/String; = "dual_sim_nfc"

.field private static final KEY_DUAL_SIM_NFC_CAT:Ljava/lang/String; = "dual_sim_nfc_cat"

.field private static final KEY_NFC_TOGGLE:Ljava/lang/String; = "nfc_toggle"

.field private static final KEY_NFC_TOGGLE_EXPLAIN:Ljava/lang/String; = "nfc_toggle_explain"

.field private static final MSG_CHECK_SWITCH_STATE:I = 0x2

.field private static final MSG_DISMISS_PROGRESS:I = 0x1

.field private static final MSG_REFLUSH_SIM_NFC_STATE:I = 0x3

.field private static final MSG_SHOW_PROGRESS:I

.field private static final SIM_NFC_DEBUG:Z

.field private static sLastUpdateNfcSimStateTime:J


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDisableAnyThing:Z

.field private mDualSimNfc:Landroid/preference/ListPreference;

.field private mGetNxpTriedCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsNfcChanging:Z

.field private mNfc:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->sLastUpdateNfcSimStateTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 86
    iput-boolean v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDisableAnyThing:Z

    .line 87
    iput-boolean v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIsNfcChanging:Z

    .line 88
    iput v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mGetNxpTriedCount:I

    .line 91
    new-instance v0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;-><init>(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$2;-><init>(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Lcom/vivo/settings/SimUtils;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 54
    sget-wide v0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->sLastUpdateNfcSimStateTime:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 54
    sput-wide p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->sLastUpdateNfcSimStateTime:J

    return-wide p0
.end method

.method static synthetic access$500(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->updateDualSimNfcState()V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->setCurrentSelectSim(I)V

    return-void
.end method

.method private checkNfcEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "VivoNfcSettings"

    const-string v1, "nfc adapter is null disable anything"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b087b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    iput-boolean v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDisableAnyThing:Z

    .line 177
    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->finish()V

    .line 179
    :cond_0
    return-void
.end method

.method private deFixSimSlot(I)I
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 551
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 552
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_0
    rsub-int/lit8 v0, p1, 0x2

    goto :goto_0
.end method

.method private diableNxpNfcStatus()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    const v1, 0x7f0b0950

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 492
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v0}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    const v1, 0x7f0b0887

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    const v1, 0x7f0b087e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private fixSimSlot(I)I
    .locals 1
    .param p1, "sim"    # I

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    const/4 v0, -0x1

    .line 547
    :goto_0
    return v0

    :cond_0
    rsub-int/lit8 v0, p1, 0x2

    goto :goto_0
.end method

.method private getCurrentSelectedSim()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 413
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getNxpAdapter()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 420
    :goto_0
    return v1

    .line 417
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    const-string v3, "com.android.settins"

    invoke-interface {v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->fixSimSlot(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoNfcSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fialed to getCurrentSelectedSim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNfcSimSlotList()[I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 456
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getNxpAdapter()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v4, v8

    .line 479
    :cond_0
    :goto_0
    return-object v4

    .line 460
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    const-string v9, "com.android.settins"

    invoke-interface {v7, v9}, Lcom/nxp/nfc/INxpNfcAdapter;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v2

    .line 461
    .local v2, "list":[I
    if-nez v2, :cond_2

    move-object v4, v8

    .line 462
    goto :goto_0

    .line 464
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v3, "listContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v2

    if-ge v1, v7, :cond_4

    .line 466
    aget v7, v2, v1

    invoke-direct {p0, v7}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->fixSimSlot(I)I

    move-result v6

    .line 467
    .local v6, "slot":I
    iget-object v7, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v7, v6}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 468
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 471
    .end local v6    # "slot":I
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 472
    .local v5, "size":I
    new-array v4, v5, [I

    .line 473
    .local v4, "newList":[I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_0

    .line 474
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 477
    .end local v1    # "i":I
    .end local v2    # "list":[I
    .end local v3    # "listContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "newList":[I
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "VivoNfcSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error to get sim list "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 479
    goto :goto_0
.end method

.method private getNxpAdapter()Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    .line 509
    :goto_0
    return-object v0

    .line 498
    :cond_0
    iget v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mGetNxpTriedCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 499
    iget v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mGetNxpTriedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mGetNxpTriedCount:I

    .line 500
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getNxpAdapterInner()Lcom/nxp/nfc/INxpNfcAdapter;

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    if-nez v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->removePreference(Landroid/preference/Preference;)V

    .line 505
    const-string v0, "dual_sim_nfc_cat"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->removePreference(Ljava/lang/String;)V

    .line 506
    const-string v0, "nfc_toggle_explain"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b07b6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0
.end method

.method private getNxpAdapterInner()Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 513
    const-string v4, "VivoNfcSettings"

    const-string v5, "getAdapter"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v4, :cond_0

    .line 515
    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    .line 536
    :goto_0
    return-object v3

    .line 518
    :cond_0
    :try_start_0
    const-string v4, "nfc"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 519
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 520
    const-string v4, "VivoNfcSettings"

    const-string v5, "binder nfc is null return"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    .end local v0    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "VivoNfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNxpAdapter error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0

    .line 523
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_2
    :try_start_1
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 524
    .local v2, "iNfcAdapter":Landroid/nfc/INfcAdapter;
    if-nez v2, :cond_3

    .line 525
    const-string v4, "VivoNfcSettings"

    const-string v5, "nfc adapter is null return"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_3
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    .line 529
    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    if-nez v4, :cond_1

    .line 530
    const-string v4, "VivoNfcSettings"

    const-string v5, "iNxpNfcAdapter is null return"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v3, 0x1

    .line 395
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 396
    const v1, 0x7f0b0366

    invoke-virtual {p0, v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 398
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v3, :cond_3

    .line 399
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v1, p1}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "simName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const-string v1, "VivoNfcSettings"

    const-string v2, "sim name from framework is [], set to default"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleNfcStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 273
    const-string v0, "VivoNfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    packed-switch p1, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 278
    iget-boolean v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIsNfcChanging:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 280
    iput-boolean v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIsNfcChanging:Z

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 286
    iget-boolean v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIsNfcChanging:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    iput-boolean v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIsNfcChanging:Z

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 294
    iput-boolean v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIsNfcChanging:Z

    goto :goto_0

    .line 297
    :pswitch_3
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 299
    iput-boolean v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIsNfcChanging:Z

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setCurrentSelectSim(I)V
    .locals 6
    .param p1, "slot"    # I

    .prologue
    .line 428
    const-string v1, "VivoNfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentSelectSim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getNxpAdapter()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 430
    const-string v1, "VivoNfcSettings"

    const-string v2, "adapter is null return"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getCurrentSelectedSim()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 434
    const-string v1, "VivoNfcSettings"

    const-string v2, "slot == getCurrentSelectedSim() return"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    const-string v2, "com.android.settins"

    invoke-interface {v1, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->deselectSecureElement(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoNfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to deselectSecureElement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "VivoNfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select se "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->deFixSimSlot(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    const-string v2, "com.android.settins"

    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->deFixSimSlot(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter;->selectSecureElement(Ljava/lang/String;I)I

    .line 443
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->deFixSimSlot(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nxp/nfc/INxpNfcAdapter;->MifareDesfireRouteSet(IZZZ)V

    .line 444
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->deFixSimSlot(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nxp/nfc/INxpNfcAdapter;->MifareCLTRouteSet(IZZZ)V

    .line 445
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->deFixSimSlot(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nxp/nfc/INxpNfcAdapter;->DefaultRouteSet(IZZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateDualSimNfcState()V
    .locals 12

    .prologue
    .line 305
    const-string v9, "VivoNfcSettings"

    const-string v10, "updateDualSimNfcState"

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v9, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    if-nez v9, :cond_0

    .line 307
    const-string v9, "VivoNfcSettings"

    const-string v10, "mDualSimNfc is null return"

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getNxpAdapter()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v9

    if-nez v9, :cond_1

    .line 311
    const-string v9, "VivoNfcSettings"

    const-string v10, "getNxpAdapter is null diableNxpNfcStatus"

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->diableNxpNfcStatus()V

    goto :goto_0

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getNfcSimSlotList()[I

    move-result-object v4

    .line 316
    .local v4, "simList":[I
    const-string v9, "VivoNfcSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simList array:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-eqz v4, :cond_2

    array-length v9, v4

    if-nez v9, :cond_3

    .line 318
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->diableNxpNfcStatus()V

    goto :goto_0

    .line 321
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v6, "slotArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget v5, v0, v2

    .line 323
    .local v5, "slot":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    .end local v5    # "slot":I
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 327
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getCurrentSelectedSim()I

    move-result v7

    .line 328
    .local v7, "slotCurrent":I
    const/4 v9, -0x1

    if-lt v7, v9, :cond_5

    const/4 v9, 0x1

    if-le v7, v9, :cond_6

    .line 329
    :cond_5
    const-string v9, "VivoNfcSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sim slot id error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v7, -0x1

    .line 332
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v8, v9, [I

    .line 333
    .local v8, "slotIntArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 334
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v8, v1

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 336
    :cond_7
    invoke-direct {p0, v8, v7}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->updateSimPrefState([II)V

    goto/16 :goto_0
.end method

.method private updateDualSimNfcSummary()V
    .locals 3

    .prologue
    .line 369
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 370
    const-string v1, "VivoNfcSettings"

    const-string v2, "mDualSimNfc is null"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "value":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->updateDualSimNfcSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDualSimNfcSummary(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 378
    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 379
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 380
    .local v2, "values":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    if-eqz p1, :cond_0

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 387
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateSimPrefState([II)V
    .locals 8
    .param p1, "slots"    # [I
    .param p2, "current"    # I

    .prologue
    const/4 v4, 0x1

    .line 340
    const-string v5, "VivoNfcSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSimPrefState slots: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v5, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    if-nez v5, :cond_0

    .line 342
    const-string v4, "VivoNfcSettings"

    const-string v5, "mDualSimNfc is null"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 345
    :cond_0
    if-eqz p1, :cond_1

    array-length v5, p1

    if-nez v5, :cond_2

    .line 346
    :cond_1
    const-string v4, "VivoNfcSettings"

    const-string v5, "slots list is empty"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    array-length v5, p1

    new-array v3, v5, [Ljava/lang/String;

    .line 350
    .local v3, "values":[Ljava/lang/String;
    array-length v5, p1

    new-array v1, v5, [Ljava/lang/String;

    .line 351
    .local v1, "entries":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 352
    .local v0, "currentIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 353
    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 354
    aget v5, p1, v2

    invoke-direct {p0, v5}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 355
    aget v5, p1, v2

    if-ne p2, v5, :cond_3

    .line 356
    move v0, v2

    .line 352
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_4
    const-string v5, "VivoNfcSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entries:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " values:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentIndex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 362
    iget-object v5, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 363
    iget-object v5, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 364
    iget-object v5, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    array-length v6, p1

    if-le v6, v4, :cond_5

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 365
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->updateDualSimNfcSummary()V

    goto :goto_0

    .line 364
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 151
    new-instance v0, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 152
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->checkNfcEnabled()V

    .line 153
    iget-boolean v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDisableAnyThing:Z

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->showBBKBackButton()V

    .line 161
    const-string v0, "nfc_toggle"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    .line 162
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    const-string v0, "dual_sim_nfc"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    .line 164
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDisableAnyThing:Z

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 238
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 242
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 244
    :try_start_0
    new-instance v1, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;

    const-string v2, "switchNfcSimThread"

    invoke-direct {v1, p0, v2, p2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;-><init>(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->start()V

    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->updateDualSimNfcSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return v4

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoNfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    iget-boolean v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDisableAnyThing:Z

    if-eqz v4, :cond_0

    .line 207
    :goto_0
    return v3

    .line 186
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    if-ne v4, p2, :cond_6

    .line 187
    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 188
    .local v0, "desiredState":Z
    const/4 v1, 0x0

    .line 190
    .local v1, "success":Z
    if-eqz v0, :cond_3

    .line 191
    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 195
    :goto_1
    if-eqz v1, :cond_1

    .line 196
    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_on"

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    .end local v0    # "desiredState":Z
    .end local v1    # "success":Z
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .restart local v0    # "desiredState":Z
    .restart local v1    # "success":Z
    :cond_2
    move v1, v3

    .line 191
    goto :goto_1

    .line 193
    :cond_3
    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :goto_3
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v3

    .line 197
    goto :goto_2

    .line 201
    .end local v0    # "desiredState":Z
    .end local v1    # "success":Z
    :cond_6
    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    if-ne v3, p2, :cond_1

    .line 202
    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDualSimNfc:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    .line 203
    :cond_7
    const-string v3, "VivoNfcSettings"

    const-string v4, "entries errro"

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 204
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 212
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 213
    iget-boolean v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mDisableAnyThing:Z

    if-nez v2, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->updateDualSimNfcState()V

    .line 216
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->handleNfcStateChanged(I)V

    .line 217
    invoke-virtual {p0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    .local v0, "now":J
    const-string v2, "VivoNfcSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sLastUpdateNfcSimStateTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->sLastUpdateNfcSimStateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->sLastUpdateNfcSimStateTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    iget-object v2, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    :cond_1
    return-void
.end method
