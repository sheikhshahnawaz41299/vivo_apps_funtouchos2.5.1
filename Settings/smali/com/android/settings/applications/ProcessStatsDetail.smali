.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/vivo/settings/VivoFragment;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_FORCE_STOP:I = 0x1

.field public static final EXTRA_ENTRY:Ljava/lang/String; = "entry"

.field public static final EXTRA_MAX_WEIGHT:Ljava/lang/String; = "max_weight"

.field public static final EXTRA_TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final EXTRA_USE_USS:Ljava/lang/String; = "use_uss"

.field private static final TAG:Ljava/lang/String; = "ProcessStatsDetail"

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEntry:Lcom/android/settings/applications/ProcStatsEntry;

.field private mForceStopButton:Landroid/widget/Button;

.field private mMaxWeight:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mServicesParent:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalTime:J

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mUseUss:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 221
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 281
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ProcessStatsDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ProcessStatsDetail;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04008b

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 190
    .local v1, "item":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    const v4, 0x7f0e0175

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 192
    .local v2, "labelView":Landroid/widget/TextView;
    const v4, 0x7f0e0176

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 193
    .local v3, "valueView":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method private addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 171
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400b7

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 173
    .local v4, "item":Landroid/view/ViewGroup;
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    const v6, 0x7f0e0041

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 175
    .local v2, "icon":Landroid/widget/ImageView;
    const v6, 0x7f0e0036

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 176
    .local v5, "nameView":Landroid/widget/TextView;
    const v6, 0x7f0e00f5

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    .local v1, "descriptionView":Landroid/widget/TextView;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 179
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void

    .line 181
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 298
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 299
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 302
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private createDetails()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 115
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v8, v8

    iget-wide v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxWeight:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v8, v10

    .line 117
    .local v4, "percentOfWeight":D
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 118
    .local v0, "appLevel":I
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "appLevelText":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020010

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 122
    .local v6, "summary":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020016

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTitleView:Landroid/widget/TextView;

    .line 125
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mUiBaseLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020014

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 127
    .local v7, "text1":Landroid/widget/TextView;
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x102000d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 129
    .local v3, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 131
    .local v2, "icon":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    .line 132
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_0
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0e0177

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 136
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0e0239

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    .line 137
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0e0238

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    .line 138
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0e0178

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 142
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0e01a1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    .line 144
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillDetailsSection()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillServicesSection()V

    .line 147
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_1

    .line 148
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const v9, 0x7f0b0353

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private doAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 164
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->killProcesses()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 198
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgUss:J

    :goto_0
    mul-long/2addr v0, v6

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxUss:J

    :goto_1
    mul-long/2addr v0, v6

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 206
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgPss:J

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxPss:J

    goto :goto_1
.end method

.method private fillServicesSection()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 238
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "addPackageSections":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v6, "servicePkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;>;"
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 244
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 246
    .local v7, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    sget-object v9, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v7    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v10, v10, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 251
    :cond_1
    const/4 v0, 0x1

    .line 253
    sget-object v9, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 256
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 257
    .restart local v7    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    if-eqz v0, :cond_3

    .line 258
    iget-object v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v10, v9}, Lcom/android/settings/applications/ProcessStatsDetail;->addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 260
    :cond_3
    const/4 v2, 0x0

    .local v2, "is":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 261
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 262
    .local v5, "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    iget-object v3, v5, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 263
    .local v3, "label":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 264
    .local v8, "tail":I
    if-ltz v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_4

    .line 265
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    :cond_4
    iget-wide v10, v5, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v12, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v10, v11, v12, v13}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "percentage":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v9, v3, v4}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 255
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "percentage":Ljava/lang/String;
    .end local v5    # "service":Lcom/android/settings/applications/ProcStatsEntry$Service;
    .end local v8    # "tail":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    .end local v0    # "addPackageSections":Z
    .end local v1    # "ip":I
    .end local v2    # "is":I
    .end local v6    # "servicePkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;>;"
    .end local v7    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_6
    return-void
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 277
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 279
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->doAction(I)V

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    .line 84
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    .line 85
    const-string v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    .line 86
    const-string v1, "max_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxWeight:J

    .line 87
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->showBBKBackButton()V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 95
    const v1, 0x7f0400ad

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 98
    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->createDetails()V

    .line 100
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 107
    return-void
.end method
