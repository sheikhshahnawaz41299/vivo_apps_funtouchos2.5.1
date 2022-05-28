.class public abstract Lcom/android/systemui/qs/QSTile;
.super Ljava/lang/Object;
.source "QSTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$1;,
        Lcom/android/systemui/qs/QSTile$SignalState;,
        Lcom/android/systemui/qs/QSTile$BooleanState;,
        Lcom/android/systemui/qs/QSTile$State;,
        Lcom/android/systemui/qs/QSTile$UserBoolean;,
        Lcom/android/systemui/qs/QSTile$AnimationIcon;,
        Lcom/android/systemui/qs/QSTile$ResourceIcon;,
        Lcom/android/systemui/qs/QSTile$Icon;,
        Lcom/android/systemui/qs/QSTile$Host;,
        Lcom/android/systemui/qs/QSTile$Callback;,
        Lcom/android/systemui/qs/QSTile$H;,
        Lcom/android/systemui/qs/QSTile$DetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/Listenable;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private mCallback:Lcom/android/systemui/qs/QSTile$Callback;

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Lcom/android/systemui/qs/QSTile$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSTile$Host;

.field protected final mState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private final mTmpState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "QSTile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 71
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSTile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mUiHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    .line 73
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/systemui/qs/QSTile$H;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTile;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleSetCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/QSTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleScanStateChanged(Z)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 209
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onScanStateChanged(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    .line 154
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 197
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onShowDetail(Z)V

    .line 200
    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 4

    .prologue
    .line 175
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->shouldAnnouncementBeDelayed()Z

    move-result v1

    .line 176
    .local v1, "delayAnnouncement":Z
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 178
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "announcement":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    .line 185
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    .line 186
    return-void

    .line 185
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 203
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public click()V
    .locals 2

    .prologue
    .line 108
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    new-instance v0, Lcom/android/systemui/qs/QSTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public fireScanStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v3, 0x9

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void

    :cond_0
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method public fireToggleStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void

    :cond_0
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method public getState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    .line 221
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 164
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 167
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/QSTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v0

    .line 169
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->handleStateChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .prologue
    .line 160
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 215
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public longClick()V
    .locals 2

    .prologue
    .line 116
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 117
    return-void
.end method

.method protected abstract newTileState()Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method protected final refreshState()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->refreshState(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 128
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 129
    return-void
.end method

.method public secondaryClick()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 113
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    .line 104
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public showDetail(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public userSwitch(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 132
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method
