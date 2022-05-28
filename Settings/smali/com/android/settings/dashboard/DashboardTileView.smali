.class public Lcom/android/settings/dashboard/DashboardTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_COL_SPAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# instance fields
.field private mCheckBoxView:Landroid/widget/BbkMoveBoolButton;

.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mLastTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotiView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTile:Lcom/android/settings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mLastTime:J

    .line 52
    iput v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mColSpan:I

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 66
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v2, v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040040

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    :goto_0
    const v2, 0x7f0e0041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 72
    const v2, 0x7f0e0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f0e00d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/BbkMoveBoolButton;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mCheckBoxView:Landroid/widget/BbkMoveBoolButton;

    .line 75
    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mNotiView:Landroid/widget/ImageView;

    .line 76
    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 78
    invoke-virtual {p0, p0}, Lcom/android/settings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {}, Lcom/android/settings/AppFeature;->isDashboardTileRippleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const v2, 0x7f020027

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 82
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 83
    return-void

    .line 69
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003f

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private failToStartSubScreen(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 189
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to start a sub screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 192
    const v2, 0x7f0b0825

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 194
    :cond_0
    return-void

    .line 192
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private setEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 92
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 98
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/android/settings/dashboard/DashboardTileView;->setEnabled(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    .line 100
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 103
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCheckBoxView()Landroid/widget/BbkMoveBoolButton;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mCheckBoxView:Landroid/widget/BbkMoveBoolButton;

    return-object v0
.end method

.method getColumnSpan()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNotiView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mNotiView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 144
    .local v8, "curTime":J
    iget-wide v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mLastTime:J

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 145
    iput-wide v8, p0, Lcom/android/settings/dashboard/DashboardTileView;->mLastTime:J

    .line 146
    const-string v0, "SettingsActivity"

    const-string v1, "return onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput-wide v8, p0, Lcom/android/settings/dashboard/DashboardTileView;->mLastTime:J

    .line 150
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v7

    .line 157
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileView;->failToStartSubScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f0e02e4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_3

    .line 163
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.vivo.VivoTempSecurity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v7

    .line 173
    .local v7, "e":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f0e02d7

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v0, "SettingsActivity"

    const-string v1, "onClick set action to WIFI_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 178
    :catch_2
    move-exception v10

    .line 179
    .local v10, "e1":Ljava/lang/RuntimeException;
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileView;->failToStartSubScreen(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "e1":Ljava/lang/RuntimeException;
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.vivo.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 182
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardTileView;->failToStartSubScreen(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setColumnSpan(I)V
    .locals 0
    .param p1, "span"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mColSpan:I

    .line 135
    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 88
    invoke-direct {p0, p0, p1}, Lcom/android/settings/dashboard/DashboardTileView;->setEnabled(Landroid/view/ViewGroup;Z)V

    .line 89
    return-void
.end method

.method public setTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    .line 127
    return-void
.end method
