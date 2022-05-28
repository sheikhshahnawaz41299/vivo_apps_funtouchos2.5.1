.class public final Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;
.super Ljava/lang/Object;
.source "BluetoothStateTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothStateTracker"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->syncBluetoothState()V

    return-void
.end method

.method private syncBluetoothState()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mState:I

    .line 21
    :goto_1
    return-void

    .line 17
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 19
    :cond_1
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mState:I

    goto :goto_1
.end method


# virtual methods
.method public getTriState()I
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mState:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->syncBluetoothState()V

    .line 27
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mState:I

    return v0
.end method

.method public onActualStateChange(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->mState:I

    goto :goto_0
.end method

.method public toggleState()V
    .locals 3

    .prologue
    .line 31
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
