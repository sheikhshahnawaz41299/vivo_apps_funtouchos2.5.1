.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$4;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityContainer"

.field private static final USER_TYPE_PRIMARY:I = 0x1

.field private static final USER_TYPE_SECONDARY_USER:I = 0x3

.field private static final USER_TYPE_WORK_PROFILE:I = 0x2


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableFallback:Z

.field private mIsBouncing:Z

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 584
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 646
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 87
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 88
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBackupSecurityScreen()V

    return-void
.end method

.method private getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 3

    .prologue
    .line 561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 562
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v2, :cond_0

    .line 564
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 567
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 561
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 4
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 702
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 730
    :goto_0
    :pswitch_0
    return v0

    .line 703
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->vivo_pattern_view:I

    goto :goto_0

    .line 705
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_invalidity_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 706
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getLayoutIdFor vivo_invalidity_password for vivo_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_password_view:I

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_mix_board"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 711
    sget v0, Lcom/android/keyguard/R$layout;->vivo_pin_view:I

    goto :goto_0

    .line 713
    :cond_1
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getLayoutIdFor pin for vivo_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget v0, Lcom/android/keyguard/R$layout;->vivo_password_view:I

    goto :goto_0

    .line 717
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_invalidity_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 718
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getLayoutIdFor Password for keyguard_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_password_view:I

    goto :goto_0

    .line 721
    :cond_2
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getLayoutIdFor Password for vivo_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget v0, Lcom/android/keyguard/R$layout;->vivo_password_view:I

    goto :goto_0

    .line 724
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_face_unlock_view:I

    goto :goto_0

    .line 725
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$layout;->vivo_generic_login_unlock:I

    goto :goto_0

    .line 726
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$layout;->vivo_sim_pin_view:I

    goto :goto_0

    .line 727
    :pswitch_7
    sget v0, Lcom/android/keyguard/R$layout;->vivo_sim_puk_view:I

    goto :goto_0

    .line 728
    :pswitch_8
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_password_findphone_view:I

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 10
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 154
    .local v4, "securityViewIdForMode":I
    const/4 v6, 0x0

    .line 156
    .local v6, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v1

    .line 157
    .local v1, "children":I
    const/4 v0, 0x0

    .local v0, "child":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 158
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 159
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 164
    .restart local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 165
    .local v3, "layoutId":I
    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    .line 166
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 167
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const-string v7, "KeyguardSecurityContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflating id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 172
    .local v5, "v":Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    invoke-direct {p0, v5, v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    move-object v6, v5

    .line 173
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 176
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-object v6

    .line 157
    .end local v3    # "layoutId":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 4
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 667
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 698
    :goto_0
    :pswitch_0
    return v0

    .line 669
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_view:I

    goto :goto_0

    .line 672
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_invalidity_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 673
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getSecurityViewIdForMode vivo_invalidity_password for vivo_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_mix_board"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 678
    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_view:I

    goto :goto_0

    .line 680
    :cond_1
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getSecurityViewIdForMode pin for vivo_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_view:I

    goto :goto_0

    .line 685
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_invalidity_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 686
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getSecurityViewIdForMode Password for keyguard_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    goto :goto_0

    .line 689
    :cond_2
    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "getSecurityViewIdForMode Password for vivo_password_view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_view:I

    goto :goto_0

    .line 692
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$id;->keyguard_face_unlock_view:I

    goto :goto_0

    .line 693
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$id;->vivo_generic_login_unlock:I

    goto :goto_0

    .line 694
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$id;->vivo_sim_pin_view:I

    goto :goto_0

    .line 695
    :pswitch_7
    sget v0, Lcom/android/keyguard/R$id;->vivo_sim_puk_view:I

    goto :goto_0

    .line 696
    :pswitch_8
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_findphone_view:I

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private reportFailedUnlockAttempt()V
    .locals 15

    .prologue
    .line 357
    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 358
    .local v7, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v12

    add-int/lit8 v4, v12, 0x1

    .line 360
    .local v4, "failedAttempts":I
    const-string v12, "KeyguardSecurityContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reportFailedPatternAttempt: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v6

    .line 363
    .local v6, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v12, :cond_3

    const/4 v11, 0x1

    .line 364
    .local v11, "usingPattern":Z
    :goto_0
    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 365
    .local v0, "currentUser":I
    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 366
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v12, 0x0

    invoke-virtual {v1, v12, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v5

    .line 369
    .local v5, "failedAttemptsBeforeWipe":I
    const/16 v3, 0xf

    .line 372
    .local v3, "failedAttemptWarning":I
    if-lez v5, :cond_4

    sub-int v8, v5, v4

    .line 375
    .local v8, "remainingBeforeWipe":I
    :goto_1
    const/4 v9, 0x0

    .line 376
    .local v9, "showTimeout":Z
    const/4 v12, 0x5

    if-ge v8, v12, :cond_7

    .line 381
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v2

    .line 382
    .local v2, "expiringUser":I
    const/4 v10, 0x1

    .line 383
    .local v10, "userType":I
    if-ne v2, v0, :cond_5

    .line 384
    if-eqz v2, :cond_0

    .line 385
    const/4 v10, 0x3

    .line 390
    :cond_0
    :goto_2
    if-lez v8, :cond_6

    .line 391
    invoke-direct {p0, v4, v8, v10}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    .line 412
    .end local v2    # "expiringUser":I
    .end local v10    # "userType":I
    :cond_1
    :goto_3
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 413
    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 414
    if-eqz v9, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog()V

    .line 417
    :cond_2
    return-void

    .line 363
    .end local v0    # "currentUser":I
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "failedAttemptWarning":I
    .end local v5    # "failedAttemptsBeforeWipe":I
    .end local v8    # "remainingBeforeWipe":I
    .end local v9    # "showTimeout":Z
    .end local v11    # "usingPattern":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 372
    .restart local v0    # "currentUser":I
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "failedAttemptWarning":I
    .restart local v5    # "failedAttemptsBeforeWipe":I
    .restart local v11    # "usingPattern":Z
    :cond_4
    const v8, 0x7fffffff

    goto :goto_1

    .line 387
    .restart local v2    # "expiringUser":I
    .restart local v8    # "remainingBeforeWipe":I
    .restart local v9    # "showTimeout":Z
    .restart local v10    # "userType":I
    :cond_5
    const/16 v12, -0x2710

    if-eq v2, v12, :cond_0

    .line 388
    const/4 v10, 0x2

    goto :goto_2

    .line 394
    :cond_6
    const-string v12, "KeyguardSecurityContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Too many unlock attempts; user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " will be wiped!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, v4, v10}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(II)V

    goto :goto_3

    .line 398
    .end local v2    # "expiringUser":I
    .end local v10    # "userType":I
    :cond_7
    rem-int/lit8 v12, v4, 0x5

    if-nez v12, :cond_8

    const/4 v9, 0x1

    .line 400
    :goto_4
    if-eqz v11, :cond_1

    iget-boolean v12, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEnableFallback:Z

    if-eqz v12, :cond_1

    .line 401
    const/16 v12, 0xf

    if-ne v4, v12, :cond_9

    .line 402
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAccountLoginDialog()V

    .line 403
    const/4 v9, 0x0

    goto :goto_3

    .line 398
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 404
    :cond_9
    const/16 v12, 0x14

    if-lt v4, v12, :cond_1

    .line 405
    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 406
    sget-object v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v12}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 408
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 348
    const/16 v2, 0x1e

    .line 349
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 351
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_login:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private showAlmostAtWipeDialog(III)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "userType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "message":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 325
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 313
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_user:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    goto :goto_0

    .line 321
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showBackupSecurityScreen()V
    .locals 3

    .prologue
    .line 442
    const-string v1, "KeyguardSecurityContainer"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 444
    .local v0, "backup":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 445
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const v5, 0x30f0004

    const/16 v4, 0x7d9

    .line 219
    sget v1, Lcom/android/keyguard/R$string;->vivo_forgot_password:I

    .line 220
    .local v1, "positivetId":I
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 222
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->vivo_forgot_pattern:I

    .line 243
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    .line 265
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 226
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$string;->vivo_forgot_password:I

    .line 227
    goto :goto_1

    .line 229
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 234
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 238
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 5
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 519
    const-string v2, "KeyguardSecurityContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSecurityScreen("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v2, :cond_0

    .line 558
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v1

    .line 524
    .local v1, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 527
    .local v0, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v1, :cond_1

    .line 528
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 529
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 531
    :cond_1
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_3

    .line 532
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 533
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 535
    if-eqz v1, :cond_2

    .line 536
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    check-cast v1, Landroid/view/View;

    .end local v1    # "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->removeView(Landroid/view/View;)V

    .line 538
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;)V

    .line 555
    :cond_3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 556
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_4

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, p1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private showTimeoutDialog()V
    .locals 9

    .prologue
    .line 272
    const/16 v2, 0x1e

    .line 273
    .local v2, "timeoutInSeconds":I
    const/4 v1, 0x0

    .line 274
    .local v1, "messageId":I
    const/4 v4, 0x0

    .line 276
    .local v4, "titleId":I
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 300
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 301
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "title":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v0    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 278
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->vivo_kg_too_many_failed_pattern_attempts_dialog_message:I

    .line 279
    sget v4, Lcom/android/keyguard/R$string;->vivo_pattern_wrong:I

    .line 280
    goto :goto_0

    .line 283
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$string;->vivo_kg_too_many_failed_pin_attempts_dialog_message:I

    .line 284
    sget v4, Lcom/android/keyguard/R$string;->vivo_password_wrong:I

    .line 285
    goto :goto_0

    .line 287
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message:I

    .line 288
    sget v4, Lcom/android/keyguard/R$string;->vivo_password_wrong:I

    .line 289
    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showWipeDialog(II)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "userType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 344
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void

    .line 332
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_wiping:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_user:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    goto :goto_0

    .line 340
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_erasing_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSecurityView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isBouncing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 180
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    .line 181
    instance-of v1, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 183
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 184
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 185
    if-eqz p2, :cond_0

    .line 186
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 193
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 188
    .restart local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 191
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1
    const-string v1, "KeyguardSecurityContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public announceCurrentSecurityMethod()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 139
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 753
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 2

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 784
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 146
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 3

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v1

    .line 800
    .local v1, "children":I
    if-lez v1, :cond_0

    .line 801
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 802
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v2, :cond_0

    .line 803
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 806
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 579
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    .line 582
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 759
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 205
    iput-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 207
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 111
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialog:Landroid/app/AlertDialog;

    .line 112
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 775
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 776
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V

    .line 778
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 766
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 767
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 769
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 215
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 94
    return-void
.end method

.method public showBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 572
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    .line 575
    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(Z)Z
    .locals 6
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v5, 0x0

    .line 454
    const-string v2, "KeyguardSecurityContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNextSecurityScreenOrFinish("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x0

    .line 458
    .local v0, "finish":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    const-string v2, "KeyguardSecurityContainer"

    const-string v3, "Has trust..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_3

    .line 464
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 466
    .local v1, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 467
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v1, :cond_2

    .line 468
    const/4 v0, 0x1

    .line 505
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    const-string v2, "KeyguardSecurityContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNextSecurityScreenOrFinish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz v0, :cond_1

    .line 507
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish()V

    .line 509
    :cond_1
    return v0

    .line 470
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 472
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_3
    if-eqz p1, :cond_5

    .line 473
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 495
    :pswitch_0
    const-string v2, "KeyguardSecurityContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad security screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fail safe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 480
    :pswitch_1
    const/4 v0, 0x1

    .line 481
    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 487
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_4

    .line 488
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 490
    :cond_4
    const/4 v0, 0x1

    .line 492
    goto :goto_0

    .line 501
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .param p1, "turningOff"    # Z

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 426
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    const-string v1, "KeyguardSecurityContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 433
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 434
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 791
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 792
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->showUsabilityHint()V

    .line 794
    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 118
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateSecurityViews(Z)V
    .locals 3
    .param p1, "isBouncing"    # Z

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v0

    .line 131
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    .line 744
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 745
    return-void
.end method
