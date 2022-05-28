.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$1;,
        Lcom/android/systemui/statusbar/CommandQueue$H;,
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUDE_COMPAT_MODE_PANEL:I = 0x10

.field public static final FLAG_EXCLUDE_INPUT_METHODS_PANEL:I = 0x8

.field public static final FLAG_EXCLUDE_NONE:I = 0x0

.field public static final FLAG_EXCLUDE_NOTIFICATION_PANEL:I = 0x4

.field public static final FLAG_EXCLUDE_RECENTS_PANEL:I = 0x2

.field public static final FLAG_EXCLUDE_SEARCH_PANEL:I = 0x1

.field private static final INDEX_MASK:I = 0xffff

.field private static final MAX_ICON:I = 0x3

.field private static final MSG_BUZZ_BEEP_BLINKED:I = 0xf0000

.field private static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0xb0000

.field private static final MSG_COLLAPSE_PANELS:I = 0x40000

.field private static final MSG_COLLAPSE_UPSLIDE_VIEW:I = 0x1a0000

.field private static final MSG_DISABLE:I = 0x20000

.field private static final MSG_EXPAND_NOTIFICATIONS:I = 0x30000

.field private static final MSG_EXPAND_SETTINGS:I = 0x50000

.field private static final MSG_HIDE_RECENT_APPS:I = 0xe0000

.field private static final MSG_ICON:I = 0x10000

.field private static final MSG_MASK:I = -0x10000

.field private static final MSG_NOTIFICATION_LIGHT_OFF:I = 0x100000

.field private static final MSG_NOTIFICATION_LIGHT_PULSE:I = 0x110000

.field private static final MSG_PRELOAD_RECENT_APPS:I = 0xa0000

.field private static final MSG_SET_NETWORK_SPEED:I = 0x190000

.field private static final MSG_SET_SIMCARD_FLOW:I = 0x170000

.field private static final MSG_SET_STATUS_BAR_ICON_COLOR:I = 0x1b0000

.field private static final MSG_SET_SYSTEMUI_VISIBILITY:I = 0x60000

.field private static final MSG_SET_WINDOW_STATE:I = 0xc0000

.field private static final MSG_SHIFT:I = 0x10

.field private static final MSG_SHOW_IME_BUTTON:I = 0x80000

.field private static final MSG_SHOW_RECENT_APPS:I = 0xd0000

.field private static final MSG_SHOW_SCREEN_PIN_REQUEST:I = 0x120000

.field private static final MSG_STATUSBAR_BG_CHANGED:I = 0x160000

.field private static final MSG_TOGGLE_RECENT_APPS:I = 0x90000

.field private static final MSG_TOP_APP_WINDOW_CHANGED:I = 0x70000

.field private static final MSG_UPSLIDE_STATE_CHANGE:I = 0x180000

.field private static final OP_REMOVE_ICON:I = 0x2

.field private static final OP_SET_ICON:I = 0x1

.field private static final SHOW_IME_SWITCHER_KEY:Ljava/lang/String; = "showImeSwitcherKey"


# instance fields
.field private mBgVisible:Z

.field private mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private mCanceled:Z

.field private mDown:Z

.field private mFlow1:Ljava/lang/String;

.field private mFlow2:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/android/internal/statusbar/StatusBarIconList;

.field private mShouldShowIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowedIcons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteStyle:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    .param p2, "list"    # Lcom/android/internal/statusbar/StatusBarIconList;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mFlow1:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mFlow2:Ljava/lang/String;

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDown:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCanceled:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mWhiteStyle:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mBgVisible:Z

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShowedIcons:Ljava/util/HashSet;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShouldShowIcons:Ljava/util/HashMap;

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 150
    iput-object p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mFlow1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mFlow2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShowedIcons:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShouldShowIcons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CommandQueue;->updateShouldShowIconsVisibility()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/CommandQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mBgVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/CommandQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDown:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/CommandQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCanceled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/CommandQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mWhiteStyle:Z

    return v0
.end method

.method private getIconFromShouldList()I
    .locals 5

    .prologue
    .line 546
    const/4 v1, -0x1

    .line 547
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShouldShowIcons:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShouldShowIcons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 548
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShouldShowIcons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 549
    .local v3, "slotSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    .local v2, "slot":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShouldShowIcons:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 551
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShouldShowIcons:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "slot":Ljava/lang/String;
    .end local v3    # "slotSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return v1
.end method

.method private updateShouldShowIconsVisibility()V
    .locals 7

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShowedIcons:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    .line 528
    .local v6, "n":I
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CommandQueue;->getIconFromShouldList()I

    move-result v2

    .line 530
    .local v2, "iconIndex":I
    if-ltz v2, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    .line 532
    .local v5, "barIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v5, :cond_0

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "slot":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mShowedIcons:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getViewIndex(I)I

    move-result v3

    .line 538
    .local v3, "iconViewIndex":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 543
    .end local v1    # "slot":Ljava/lang/String;
    .end local v2    # "iconIndex":I
    .end local v3    # "iconViewIndex":I
    .end local v5    # "barIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    return-void
.end method


# virtual methods
.method public animateCollapsePanels()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandSettingsPanel()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public buzzBeepBlinked()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 6

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeUpslideState(ZZ)V
    .locals 2
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    const/high16 v1, 0x180000

    .line 311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDown:Z

    .line 312
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCanceled:Z

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 315
    return-void
.end method

.method public collapseUpSlideView()V
    .locals 2

    .prologue
    const/high16 v1, 0x1a0000

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    return-void
.end method

.method public disable(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchStatusBarKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 338
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xe0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v5, 0xe0000

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    monitor-exit v3

    .line 237
    return-void

    :cond_0
    move v2, v1

    .line 233
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hideSimIndicator()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public notificationLightOff()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notificationLightPulse(III)V
    .locals 4
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x110000

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, p2, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 284
    monitor-exit v1

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyStatusBarBgColorInfo(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 296
    return-void
.end method

.method public notifyStatusBarColorInfo(IIZ)V
    .locals 3
    .param p1, "iconColor"    # I
    .param p2, "bgColor"    # I
    .param p3, "bgVisible"    # Z

    .prologue
    const/high16 v2, 0x160000

    .line 299
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mBgVisible:Z

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 302
    return-void
.end method

.method public preloadRecentApps()V
    .locals 6

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeIcon(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 163
    const/high16 v1, 0x10000

    or-int v0, v1, p1

    .line 164
    .local v0, "what":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 166
    monitor-exit v2

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 155
    const/high16 v1, 0x10000

    or-int v0, v1, p1

    .line 156
    .local v0, "what":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 158
    monitor-exit v2

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "showImeSwitcherKey"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    monitor-exit v2

    .line 220
    return-void

    .line 219
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNetworkSpeed(Ljava/lang/String;)V
    .locals 3
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x190000

    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 334
    return-void
.end method

.method public setSimcardFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "flow1"    # Ljava/lang/String;
    .param p2, "flow2"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x170000

    .line 325
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mFlow1:Ljava/lang/String;

    .line 326
    iput-object p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mFlow2:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    return-void
.end method

.method public setStatusBarIconColor(Z)V
    .locals 2
    .param p1, "whiteStyle"    # Z

    .prologue
    const/high16 v1, 0x1b0000

    .line 305
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mWhiteStyle:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 4
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x60000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showRecentApps(Z)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xd0000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xd0000

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showScreenPinningRequest()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x120000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showSimIndicator(Ljava/lang/String;J)V
    .locals 0
    .param p1, "businessType"    # Ljava/lang/String;
    .param p2, "indicatorID"    # J

    .prologue
    .line 342
    return-void
.end method

.method public toggleRecentApps()V
    .locals 6

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topAppWindowChanged(Z)V
    .locals 6
    .param p1, "menuVisible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x70000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x70000

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
