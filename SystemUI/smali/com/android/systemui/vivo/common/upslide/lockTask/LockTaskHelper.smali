.class public Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;
.super Ljava/lang/Object;
.source "LockTaskHelper.java"


# static fields
.field public static final HIDE_NAVIGATION_BAR_POPUP_TIP:Ljava/lang/String; = "hide_navitgation_bar_tip"

.field public static final SHOW_LOCK_TASK_DIALOG_TIP:Ljava/lang/String; = "show_lock_task_dialog_tip"

.field public static final SHOW_NAVIGATION_BAR_TOAST_TIP:Ljava/lang/String; = "show_navitgation_bar_tip"

.field private static sInstance:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

.field private mRecentContainer:Landroid/widget/LinearLayout;

.field private mShare:Landroid/content/SharedPreferences;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mShare:Landroid/content/SharedPreferences;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mShare:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 44
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    .line 45
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->sInstance:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->sInstance:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->sInstance:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    return-object v0
.end method


# virtual methods
.method public dismisDialog()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->dismisDialog()V

    .line 132
    return-void
.end method

.method public dismissPopupToolbar()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->dismissPopupToolbar()V

    .line 128
    return-void
.end method

.method public enableUpSlide(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->enableUpSlide(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public getSharePrefBooleanVaule(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mShare:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSharePrefIntVaule(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mShare:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hideLockTaskToast()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->hideLockTaskToast()V

    .line 116
    return-void
.end method

.method public isDialogShowing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->isDialogShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isPopupToolbarShowing()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->isPopupToolbarShowing()Z

    move-result v0

    return v0
.end method

.method public lockCurrentTask()V
    .locals 3

    .prologue
    .line 71
    const-string v1, "show_lock_task_dialog_tip"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getSharePrefBooleanVaule(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 72
    .local v0, "show":Z
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->startLockCurrentTask()V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->showDialog()V

    goto :goto_0
.end method

.method public putSharePrefBooleanVaule(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public putSharePrefIntVaule(Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method

.method public setUpSlideHelper(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 49
    return-void
.end method

.method public shouldExpandNaivgationBar()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v3, "hide_navitgation_bar_tip"

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getSharePrefIntVaule(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "show":I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    .line 67
    :cond_1
    return v1
.end method

.method public showLockTaskToast(IZI)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "bottom"    # Z
    .param p3, "rotation"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->showLockTaskToast(IZI)V

    .line 112
    return-void
.end method

.method public showPopupToolbar(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tip"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mLockTaskPrompt:Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->showPopupToolbar(Landroid/view/View;II)Z

    .line 120
    return-void
.end method

.method public startLockCurrentTask()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->startLockTaskModeOnCurrent()V

    .line 98
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->updateLockTaskStatus()V

    .line 99
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->shouldExpandNaivgationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->toggleUpSlideView(ZZ)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->enableUpSlide(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleUpSlideView(ZZ)V
    .locals 1
    .param p1, "isHomeKeyLongPressed"    # Z
    .param p2, "collapse"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideView(ZZ)V

    .line 55
    :cond_0
    return-void
.end method
