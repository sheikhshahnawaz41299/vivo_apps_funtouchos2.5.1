.class public Lcom/android/settings/applications/ProcessStatsMemDetail;
.super Lcom/vivo/settings/VivoFragment;
.source "ProcessStatsMemDetail.java"


# static fields
.field public static final EXTRA_MEM_CACHED_WEIGHT:Ljava/lang/String; = "mem_cached_weight"

.field public static final EXTRA_MEM_FREE_WEIGHT:Ljava/lang/String; = "mem_free_weight"

.field public static final EXTRA_MEM_KERNEL_WEIGHT:Ljava/lang/String; = "mem_kernel_weight"

.field public static final EXTRA_MEM_NATIVE_WEIGHT:Ljava/lang/String; = "mem_native_weight"

.field public static final EXTRA_MEM_STATE_WEIGHTS:Ljava/lang/String; = "mem_state_weights"

.field public static final EXTRA_MEM_TIMES:Ljava/lang/String; = "mem_times"

.field public static final EXTRA_MEM_TOTAL_WEIGHT:Ljava/lang/String; = "mem_total_weight"

.field public static final EXTRA_MEM_ZRAM_WEIGHT:Ljava/lang/String; = "mem_zram_weight"

.field public static final EXTRA_TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final EXTRA_USE_USS:Ljava/lang/String; = "use_uss"


# instance fields
.field mMemCachedWeight:D

.field mMemFreeWeight:D

.field mMemKernelWeight:D

.field mMemNativeWeight:D

.field private mMemStateParent:Landroid/view/ViewGroup;

.field mMemStateWeights:[D

.field mMemTimes:[J

.field mMemTotalWeight:D

.field private mMemUseParent:Landroid/view/ViewGroup;

.field mMemZRamWeight:D

.field private mRootView:Landroid/view/View;

.field mTotalTime:J

.field mUseUss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    return-void
.end method

.method private addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "level"    # F
    .param p4, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04000d

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 107
    .local v1, "item":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    const v5, 0x1020006

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v5, 0x1020016

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, "titleView":Landroid/widget/TextView;
    const v5, 0x1020014

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, "valueView":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v5, 0x102000d

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 114
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 115
    return-void
.end method

.method private addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "weight"    # D

    .prologue
    .line 129
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_0

    .line 130
    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    div-double v2, p3, v2

    double-to-float v0, v2

    .line 131
    .local v0, "level":F
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p3

    iget-wide v6, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 135
    .end local v0    # "level":F
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createDetails()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateParent:Landroid/view/ViewGroup;

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    .line 98
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->fillMemStateSection()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->fillMemUseSection()V

    .line 100
    return-void
.end method

.method private fillMemStateSection()V
    .locals 8

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 119
    .local v1, "labels":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v4, v3, v0

    long-to-float v3, v4

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 122
    .local v2, "level":F
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateParent:Landroid/view/ViewGroup;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v6, v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 119
    .end local v2    # "level":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method private fillMemUseSection()V
    .locals 6

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 139
    .local v1, "labels":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemKernelWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemZRamWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 143
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemNativeWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateWeights:[D

    aget-wide v4, v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemCachedWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemFreeWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 154
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "mem_times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    .line 65
    const-string v1, "mem_state_weights"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateWeights:[D

    .line 66
    const-string v1, "mem_cached_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemCachedWeight:D

    .line 67
    const-string v1, "mem_free_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemFreeWeight:D

    .line 68
    const-string v1, "mem_zram_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemZRamWeight:D

    .line 69
    const-string v1, "mem_kernel_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemKernelWeight:D

    .line 70
    const-string v1, "mem_native_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemNativeWeight:D

    .line 71
    const-string v1, "mem_total_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    .line 72
    const-string v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mUseUss:Z

    .line 73
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->showBBKBackButton()V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 81
    const v1, 0x7f0400ae

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 84
    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->createDetails()V

    .line 86
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 92
    return-void
.end method
