.class public Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
.super Landroid/widget/TextView;
.source "VivoCarrierLabel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoCarrierLabel"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconWidth:I

.field private mPlmn:Ljava/lang/String;

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mShowPlmn:Z

.field private mShowSpn:Z

.field private mSlot:I

.field private mSpn:Ljava/lang/String;

.field private simChinaMobile:[B

.field private simChinaTelecom:[B

.field private simChinaUnicom:[B

.field private simState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v5, 0x7f0205a6

    const/16 v3, 0xc

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mPlmn:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSpn:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowPlmn:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowSpn:Z

    .line 33
    iput v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    .line 34
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 35
    iput v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconWidth:I

    .line 36
    iput v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconHeight:I

    .line 74
    new-instance v1, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel$1;-><init>(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaMobile:[B

    .line 411
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaUnicom:[B

    .line 417
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaTelecom:[B

    .line 48
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 49
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mPlmn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSpn:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowSpn:Z

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->updateNetworkName(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.ACTION_SIM_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconWidth:I

    .line 60
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconHeight:I

    .line 61
    return-void

    .line 405
    :array_0
    .array-data 1
        -0x1ct
        -0x48t
        -0x53t
        -0x1bt
        -0x65t
        -0x43t
        -0x19t
        -0x59t
        -0x45t
        -0x1bt
        -0x76t
        -0x58t
    .end array-data

    .line 411
    :array_1
    .array-data 1
        -0x1ct
        -0x48t
        -0x53t
        -0x1bt
        -0x65t
        -0x43t
        -0x18t
        -0x7ft
        -0x6ct
        -0x17t
        -0x80t
        -0x66t
    .end array-data

    .line 417
    :array_2
    .array-data 1
        -0x1ct
        -0x48t
        -0x53t
        -0x1bt
        -0x65t
        -0x43t
        -0x19t
        -0x6ct
        -0x4bt
        -0x1ct
        -0x41t
        -0x5ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mPlmn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowPlmn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowPlmn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSpn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowSpn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowSpn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->updateNetworkName(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method private checkLanguage()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 292
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "country":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    const/4 v3, 0x1

    .line 301
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private getSimState(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "mPlmn"    # Ljava/lang/String;
    .param p2, "mShowPlmn"    # Z
    .param p3, "mSpn"    # Ljava/lang/String;
    .param p4, "mShowSpn"    # Z

    .prologue
    .line 367
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 369
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 370
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isShowPlmnAndSpn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    const-string v0, "VivoCarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThVersion ,mSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSpn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowSpn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 377
    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 382
    :cond_2
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 399
    :cond_3
    :goto_0
    const-string v0, "VivoCarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimState: ,mSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,simState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    return-object v0

    .line 387
    :cond_4
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    goto :goto_0

    .line 391
    :cond_5
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateNetworkName(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 15
    .param p1, "mPlmn"    # Ljava/lang/String;
    .param p2, "mShowPlmn"    # Z
    .param p3, "mSpn"    # Ljava/lang/String;
    .param p4, "mShowSpn"    # Z

    .prologue
    .line 109
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v2

    .line 110
    .local v2, "isSlot1Insert":Z
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v4

    .line 111
    .local v4, "isSlot2Insert":Z
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v3

    .line 112
    .local v3, "isSlot1RadioOn":Z
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v5

    .line 113
    .local v5, "isSlot2RadioOn":Z
    const-string v10, "VivoCarrierLabel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNetWorkName of slot_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isSlot1Insert = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isSlot2Insert = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isSlot1RadioOn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isSlot2RadioOn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n mPlmn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mShowPlmn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSpn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mShowSpn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    .line 120
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 122
    if-eqz v2, :cond_0

    const/4 v10, 0x1

    :goto_0
    add-int/lit8 v11, v10, 0x0

    if-eqz v4, :cond_1

    const/4 v10, 0x1

    :goto_1
    add-int v1, v11, v10

    .line 123
    .local v1, "insertedCount":I
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v11, v10, 0x0

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    const/4 v10, 0x1

    :goto_3
    add-int v6, v11, v10

    .line 125
    .local v6, "radioOnCount":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v7, "shownMsg":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 128
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 129
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 130
    const v10, 0x7f0e01e1

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setText(I)V

    .line 131
    const/4 v10, 0x2

    if-ne v1, v10, :cond_4

    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 132
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    .line 288
    :goto_4
    return-void

    .line 122
    .end local v1    # "insertedCount":I
    .end local v6    # "radioOnCount":I
    .end local v7    # "shownMsg":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 123
    .restart local v1    # "insertedCount":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 133
    .restart local v6    # "radioOnCount":I
    .restart local v7    # "shownMsg":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v10, 0x1

    if-ne v1, v10, :cond_7

    .line 134
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_5

    move v8, v2

    .line 135
    .local v8, "thisInsert":Z
    :goto_5
    if-eqz v8, :cond_6

    .line 136
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    goto :goto_4

    .end local v8    # "thisInsert":Z
    :cond_5
    move v8, v4

    .line 134
    goto :goto_5

    .line 138
    .restart local v8    # "thisInsert":Z
    :cond_6
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    goto :goto_4

    .line 141
    .end local v8    # "thisInsert":Z
    :cond_7
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_8

    .line 142
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    goto :goto_4

    .line 144
    :cond_8
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    goto :goto_4

    .line 150
    :cond_9
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 152
    :cond_a
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_f

    .line 153
    if-eqz v2, :cond_e

    .line 154
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconWidth:I

    iget v14, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablePadding(I)V

    .line 157
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 159
    if-nez v3, :cond_c

    .line 160
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01df

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 164
    :goto_6
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 165
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_b
    :goto_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 162
    :cond_c
    invoke-direct/range {p0 .. p4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getSimState(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    goto :goto_6

    .line 167
    :cond_d
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 177
    :cond_e
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconWidth:I

    iget v14, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablePadding(I)V

    .line 180
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 182
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 184
    :cond_f
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 185
    if-eqz v4, :cond_12

    .line 186
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205a7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconWidth:I

    iget v14, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablePadding(I)V

    .line 189
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 191
    if-nez v5, :cond_10

    .line 192
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01df

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 196
    :goto_8
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 197
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 194
    :cond_10
    invoke-direct/range {p0 .. p4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getSimState(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    goto :goto_8

    .line 199
    :cond_11
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 209
    :cond_12
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205a7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconWidth:I

    iget v14, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablePadding(I)V

    .line 212
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 214
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 222
    :cond_13
    packed-switch v1, :pswitch_data_0

    .line 279
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 280
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    .line 282
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    .line 287
    :cond_14
    :goto_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 225
    :pswitch_0
    if-eqz v3, :cond_17

    if-eqz v5, :cond_17

    .line 226
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_15

    .line 227
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 231
    :goto_a
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconWidth:I

    iget v14, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIconHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablePadding(I)V

    .line 233
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-direct/range {p0 .. p4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getSimState(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 237
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 238
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 229
    :cond_15
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205a7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 240
    :cond_16
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 249
    :cond_17
    if-nez v3, :cond_19

    if-nez v5, :cond_19

    .line 250
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_18

    const/4 v10, 0x0

    :goto_b
    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    .line 251
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01df

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 252
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 250
    :cond_18
    const/16 v10, 0x8

    goto :goto_b

    .line 254
    :cond_19
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_1b

    move v9, v3

    .line 255
    .local v9, "thisRadioOn":Z
    :goto_c
    if-nez v9, :cond_1a

    .line 256
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    .line 258
    :cond_1a
    invoke-direct/range {p0 .. p4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getSimState(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 259
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .end local v9    # "thisRadioOn":Z
    :cond_1b
    move v9, v5

    .line 254
    goto :goto_c

    .line 264
    :pswitch_1
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_1c

    move v8, v2

    .line 265
    .restart local v8    # "thisInsert":Z
    :goto_d
    iget v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    if-nez v10, :cond_1e

    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1d

    const/4 v9, 0x1

    .line 266
    .restart local v9    # "thisRadioOn":Z
    :goto_e
    if-nez v8, :cond_20

    .line 267
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setVisibility(I)V

    goto/16 :goto_9

    .end local v8    # "thisInsert":Z
    .end local v9    # "thisRadioOn":Z
    :cond_1c
    move v8, v4

    .line 264
    goto :goto_d

    .line 265
    .restart local v8    # "thisInsert":Z
    :cond_1d
    const/4 v9, 0x0

    goto :goto_e

    :cond_1e
    if-eqz v4, :cond_1f

    if-eqz v5, :cond_1f

    const/4 v9, 0x1

    goto :goto_e

    :cond_1f
    const/4 v9, 0x0

    goto :goto_e

    .line 268
    .restart local v9    # "thisRadioOn":Z
    :cond_20
    if-nez v9, :cond_21

    .line 269
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01df

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 270
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 272
    :cond_21
    invoke-direct/range {p0 .. p4}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getSimState(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    .line 273
    iget-object v10, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simState:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlmn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->checkLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const-string v0, "china  mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "china mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/String;

    .end local p1    # "plmn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaMobile:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 322
    :cond_1
    :goto_0
    return-object p1

    .line 308
    .restart local p1    # "plmn":Ljava/lang/String;
    :cond_2
    const-string v0, "china  unicom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "china unicom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "chn-unicom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    :cond_3
    new-instance p1, Ljava/lang/String;

    .end local p1    # "plmn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaUnicom:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 312
    .restart local p1    # "plmn":Ljava/lang/String;
    :cond_4
    const-string v0, "china telecom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    new-instance p1, Ljava/lang/String;

    .end local p1    # "plmn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaTelecom:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 314
    .restart local p1    # "plmn":Ljava/lang/String;
    :cond_5
    const-string v0, "china  mobile 3g"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "china mobile 3g"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaMobile:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 316
    :cond_7
    const-string v0, "china  unicom 3g"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "china unicom 3g"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaUnicom:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private updateSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->checkLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "china mobile"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    new-instance p1, Ljava/lang/String;

    .end local p1    # "spn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaMobile:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 338
    :cond_0
    :goto_0
    return-object p1

    .line 330
    .restart local p1    # "spn":Ljava/lang/String;
    :cond_1
    const-string v0, "china unicom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "chn-unicom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    :cond_2
    new-instance p1, Ljava/lang/String;

    .end local p1    # "spn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaUnicom:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 332
    .restart local p1    # "spn":Ljava/lang/String;
    :cond_3
    const-string v0, "china telecom"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    new-instance p1, Ljava/lang/String;

    .end local p1    # "spn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->simChinaTelecom:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 348
    .local v0, "size":I
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setTextSize(IF)V

    .line 349
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public setSlot(I)V
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSlot:I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mPlmn:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowPlmn:Z

    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->mShowSpn:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->updateNetworkName(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 66
    return-void
.end method
