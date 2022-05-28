.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ICON_CHARGE_COLOR:I = 0x7f0201b8

.field private static final ICON_CHARGE_WHITE:I = 0x7f0201b9

.field private static final ICON_NORMAL_COLOR:I = 0x7f02018d

.field private static final ICON_NORMAL_WHITE:I = 0x7f02018e

.field private static final TAG:Ljava/lang/String; = "BatteryController"


# instance fields
.field private mBatteryIconId:I

.field private mBatteryIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCharged:Z

.field private mCharging:Z

.field private final mContext:Landroid/content/Context;

.field private mIconColorFlag:I

.field private mLastLevel:I

.field private mLastPluggedIn:Z

.field private mLastStatus:I

.field private mLevel:I

.field private mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private mShowBatteryPercent:Z

.field private final mTextColorBlack:I

.field private final mTextColorWhite:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "BatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 59
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mShowBatteryPercent:Z

    .line 61
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconColorFlag:I

    .line 62
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastStatus:I

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastLevel:I

    .line 64
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastPluggedIn:Z

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconViews:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLabelViews:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextColorBlack:I

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextColorWhite:I

    .line 81
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "com.android.settings.show_battery_percentage"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updatePowerSave()V

    .line 93
    return-void
.end method

.method private fireBatteryLevelChanged()V
    .locals 6

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 251
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method private firePowerSaveChanged()V
    .locals 3

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged()V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method private setPowerSave(Z)V
    .locals 3
    .param p1, "powerSave"    # Z

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    .line 245
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "BatteryController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power save is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    if-eqz v0, :cond_2

    const-string v0, "on"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->firePowerSaveChanged()V

    goto :goto_0

    .line 245
    :cond_2
    const-string v0, "off"

    goto :goto_1
.end method

.method private updateBatteryLabelText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    .local v1, "v":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0028

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutDirection(I)V

    goto :goto_0

    .line 179
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateBatteryLabelVisibility()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const-string v5, "show_battery_percentage"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mShowBatteryPercent:Z

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    .local v1, "v":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportBatteryPercentage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mShowBatteryPercent:Z

    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_0
    move v2, v3

    .line 163
    goto :goto_0

    .line 168
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "v":Landroid/widget/TextView;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 171
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 7

    .prologue
    .line 182
    const-string v2, "BatteryController"

    const-string v3, "updateBatteryStatus"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryLabelText()V

    .line 186
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    if-nez v2, :cond_0

    const v2, 0x7f0201b8

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    .line 188
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconColorFlag:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryIcon(I)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 190
    .local v1, "v":Landroid/widget/ImageView;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v3, 0x7f0e008b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Landroid/widget/ImageView;
    :cond_0
    const v2, 0x7f02018d

    goto :goto_0

    .line 195
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private updatePowerSave()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSave(Z)V

    .line 240
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryLabelVisibility()V

    .line 160
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 107
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 98
    const-string v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    const-string v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    const-string v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 102
    return-void
.end method

.method public isPowerSave()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPowerSave:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryLabelText()V

    .line 151
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    const/high16 v2, 0x42c80000    # 100.0f

    const-string v5, "level"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 119
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    .line 121
    const-string v2, "status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "status":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    .line 124
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharged:Z

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mCharging:Z

    .line 125
    const-string v2, "BatteryController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPluggedIn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastPluggedIn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastPluggedIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->fireBatteryLevelChanged()V

    .line 129
    const-string v2, "BatteryController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastLevel:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastStatus:I

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastPluggedIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    if-eq v2, v3, :cond_3

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryStatus()V

    .line 132
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastLevel:I

    .line 133
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastStatus:I

    .line 134
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPluggedIn:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLastPluggedIn:Z

    .line 146
    .end local v1    # "status":I
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v4

    .line 119
    goto/16 :goto_0

    .restart local v1    # "status":I
    :cond_5
    move v2, v4

    .line 123
    goto/16 :goto_1

    .line 137
    .end local v1    # "status":I
    :cond_6
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updatePowerSave()V

    goto :goto_2

    .line 139
    :cond_7
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    const-string v2, "mode"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSave(Z)V

    goto :goto_2

    .line 142
    :cond_8
    const-string v2, "com.android.settings.show_battery_percentage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryLabelVisibility()V

    goto :goto_2
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public updateBatteryIcon(I)V
    .locals 9
    .param p1, "flag"    # I

    .prologue
    const v8, 0x7f0201b9

    const v7, 0x7f0201b8

    const v6, 0x7f02018e

    const v5, 0x7f02018d

    .line 198
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconColorFlag:I

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "change":Z
    if-nez p1, :cond_2

    .line 201
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    if-ne v8, v4, :cond_1

    .line 202
    iput v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    .line 203
    const/4 v0, 0x1

    .line 218
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 219
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 220
    .local v3, "v":Landroid/widget/ImageView;
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 222
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v5, 0x7f0e008b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 204
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "v":Landroid/widget/ImageView;
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    if-ne v6, v4, :cond_0

    .line 205
    iput v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    if-ne v7, v4, :cond_3

    .line 210
    iput v8, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    if-ne v5, v4, :cond_0

    .line 213
    iput v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIconId:I

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez p1, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextColorBlack:I

    .line 227
    .local v2, "textColor":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 228
    .local v3, "v":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 226
    .end local v2    # "textColor":I
    .end local v3    # "v":Landroid/widget/TextView;
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextColorWhite:I

    goto :goto_2

    .line 231
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method
