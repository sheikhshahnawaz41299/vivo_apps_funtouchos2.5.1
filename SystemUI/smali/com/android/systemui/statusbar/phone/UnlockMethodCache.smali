.class public Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.super Ljava/lang/Object;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCurrentlyInsecure:Z

.field private mFaceUnlockRunning:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecure:Z

.field private mTrustManaged:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 48
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 50
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .line 111
    .local v1, "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;->onUnlockMethodStateChanged()V

    goto :goto_0

    .line 113
    .end local v1    # "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 11
    .param p1, "updateAlways"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 84
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    .line 87
    .local v6, "user":I
    const/4 v4, 0x0

    .line 89
    .local v4, "secure":Z
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 94
    :goto_0
    if-eqz v4, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_0
    move v1, v8

    .line 95
    .local v1, "currentlyInsecure":Z
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    .line 96
    .local v5, "trustManaged":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceUnlockRunning(I)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v5, :cond_5

    move v3, v8

    .line 98
    .local v3, "faceUnlockRunning":Z
    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    if-ne v4, v9, :cond_1

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCurrentlyInsecure:Z

    if-ne v1, v9, :cond_1

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    if-ne v5, v9, :cond_1

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    if-eq v3, v9, :cond_6

    :cond_1
    move v0, v8

    .line 100
    .local v0, "changed":Z
    :goto_3
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    .line 101
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCurrentlyInsecure:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    .line 104
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->notifyListeners()V

    .line 107
    :cond_3
    return-void

    .line 90
    .end local v0    # "changed":Z
    .end local v1    # "currentlyInsecure":Z
    .end local v3    # "faceUnlockRunning":Z
    .end local v5    # "trustManaged":Z
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "UnlockMethodCache"

    const-string v10, "mLockPatternUtils.isSecure() failed!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move v1, v7

    .line 94
    goto :goto_1

    .restart local v1    # "currentlyInsecure":Z
    .restart local v5    # "trustManaged":Z
    :cond_5
    move v3, v7

    .line 96
    goto :goto_2

    .restart local v3    # "faceUnlockRunning":Z
    :cond_6
    move v0, v7

    .line 98
    goto :goto_3
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public isCurrentlyInsecure()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCurrentlyInsecure:Z

    return v0
.end method

.method public isFaceUnlockRunning()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    return v0
.end method

.method public isMethodSecure()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    return v0
.end method

.method public isTrustManaged()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    return v0
.end method

.method public removeListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
