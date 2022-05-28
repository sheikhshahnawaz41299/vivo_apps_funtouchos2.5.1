.class public Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;
.super Ljava/lang/Object;
.source "FunctionConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;
    }
.end annotation


# static fields
.field private static final ID_CALENDAR_PARTITION:I = 0x7d1

.field private static final ID_ICON_REDRAW_SETTING_CHANGE:I = 0x7d3

.field private static final ID_LOCK_TASK_MODE_SETTING_CHANGE:I = 0x7d4

.field private static final ID_THEME_CHANGE:I = 0x7d2

.field private static final MSG_DECLARE_CHANGEMENT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "FunctionConfigManager"

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarPartitionConfigObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIconRedrawObserver:Landroid/database/ContentObserver;

.field private mIconRedrawSettingObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskModeObserver:Landroid/database/ContentObserver;

.field private mLockTaskModeSettingObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mThemeStyleObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$1;-><init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance v1, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$2;-><init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v1, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$3;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$3;-><init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 67
    new-instance v1, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$4;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$4;-><init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mIconRedrawObserver:Landroid/database/ContentObserver;

    .line 74
    new-instance v1, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$5;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$5;-><init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mLockTaskModeObserver:Landroid/database/ContentObserver;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_style"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_notification_icon_redraw"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mIconRedrawObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mLockTaskModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->declareChangement(I)V

    return-void
.end method

.method private declareChangement(I)V
    .locals 4
    .param p1, "functionId"    # I

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "observers":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;>;"
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    if-nez v2, :cond_1

    .line 135
    :cond_0
    return-void

    .line 114
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mCalendarPartitionConfigObservers:Ljava/util/HashSet;

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mThemeStyleObservers:Ljava/util/HashSet;

    .line 118
    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mIconRedrawSettingObservers:Ljava/util/HashSet;

    .line 121
    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mLockTaskModeSettingObservers:Ljava/util/HashSet;

    .line 124
    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .line 133
    .local v1, "observer":Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;->onFunctionConfigChange()V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->sInstance:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->sInstance:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->sInstance:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mIconRedrawObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mLockTaskModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    return-void
.end method

.method public registerCalendarConfigObserver(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mCalendarPartitionConfigObservers:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mCalendarPartitionConfigObservers:Ljava/util/HashSet;

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mCalendarPartitionConfigObservers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 143
    const-string v1, "FunctionConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: double register by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    return-void
.end method

.method public registerIconRedrawConfigObserver(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mIconRedrawSettingObservers:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mIconRedrawSettingObservers:Ljava/util/HashSet;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mIconRedrawSettingObservers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 162
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 163
    const-string v1, "FunctionConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: double register by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void
.end method

.method public registerLockTaskModeObserver(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mLockTaskModeSettingObservers:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mLockTaskModeSettingObservers:Ljava/util/HashSet;

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mLockTaskModeSettingObservers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 173
    const-string v1, "FunctionConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: double register by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    return-void
.end method

.method public registerThemeStyleObserver(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;)V
    .locals 4
    .param p1, "observer"    # Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mThemeStyleObservers:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mThemeStyleObservers:Ljava/util/HashSet;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->mThemeStyleObservers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 153
    const-string v1, "FunctionConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: double register by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    return-void
.end method
