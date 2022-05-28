.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "ProcessStatsUi.java"

# interfaces
.implements Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field static final DEBUG:Z = false

.field private static final DURATION_QUANTUM:J

.field public static final FOREGROUND_PROC_STATES:[I

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_MEM_STATUS:Ljava/lang/String; = "mem_status"

.field static final MAX_ITEMS_TO_LIST:I = 0x3c

.field private static final MENU_DURATION:I = 0x2

.field private static final MENU_HELP:I = 0xb

.field private static final MENU_SHOW_SYSTEM:I = 0x6

.field private static final MENU_STATS_REFRESH:I = 0x1

.field private static final MENU_TYPE_BACKGROUND:I = 0x8

.field private static final MENU_TYPE_CACHED:I = 0xa

.field private static final MENU_TYPE_FOREGROUND:I = 0x9

.field private static final MENU_USE_USS:I = 0x7

.field private static final NUM_DURATIONS:I = 0x4

.field public static final RED_MEM_STATES:[I

.field static final TAG:Ljava/lang/String; = "ProcessStatsUi"

.field public static final YELLOW_MEM_STATES:[I

.field private static sDurationLabels:[I

.field private static sDurations:[J

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/ProcessStats;


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mDuration:J

.field private mDurationMenus:[Landroid/view/MenuItem;

.field private mLastDuration:J

.field mMaxWeight:J

.field mMemCachedWeight:D

.field mMemFreeWeight:D

.field mMemKernelWeight:D

.field mMemNativeWeight:D

.field private mMemRegion:I

.field mMemState:I

.field mMemStateWeights:[D

.field private mMemStatusPref:Landroid/preference/Preference;

.field mMemTimes:[J

.field mMemTotalWeight:D

.field mMemZRamWeight:D

.field mProcessStats:Lcom/android/internal/app/IProcessStats;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;

.field mStats:Lcom/android/internal/app/ProcessStats;

.field private mStatsType:I

.field mTotalTime:J

.field private mTypeBackgroundMenu:Landroid/view/MenuItem;

.field private mTypeCachedMenu:Landroid/view/MenuItem;

.field private mTypeForegroundMenu:Landroid/view/MenuItem;

.field mUm:Landroid/os/UserManager;

.field private mUseUss:Z

.field private mUseUssMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 77
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    .line 134
    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    .line 135
    new-array v0, v11, [J

    const-wide/32 v2, 0xa4cb80

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v10

    const-wide/32 v2, 0x1499700

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v6

    const/4 v1, 0x2

    const-wide/32 v2, 0x2932e00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const-wide/32 v2, 0x5265c00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v7

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    .line 139
    new-array v0, v11, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    .line 357
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 364
    new-array v0, v6, [I

    aput v6, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 368
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 373
    new-array v0, v6, [I

    aput v7, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    .line 377
    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    return-void

    .line 139
    nop

    :array_0
    .array-data 4
        0x7f0b04ff
        0x7f0b0500
        0x7f0b0501
        0x7f0b0502
    .end array-data

    .line 357
    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 368
    :array_2
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data

    .line 377
    :array_3
    .array-data 4
        0x3
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 56
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 107
    new-array v0, v1, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    .line 120
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    .line 121
    const/16 v0, 0xe

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0b04a0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 355
    return-void
.end method

.method private load()V
    .locals 6

    .prologue
    .line 793
    :try_start_0
    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iput-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    .line 794
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    invoke-interface {v3}, Lcom/android/internal/app/IProcessStats;->getCurrentMemoryState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    .line 795
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 796
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 797
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 798
    .local v1, "is":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 803
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 804
    const-string v3, "ProcessStatsUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading process stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v5, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 809
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ProcessStatsUi"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private makeDuration(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshStats()V
    .locals 92

    .prologue
    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    .line 391
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    move-wide/from16 v16, v0

    cmp-long v8, v10, v16

    if-eqz v8, :cond_1

    .line 392
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->load()V

    .line 397
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x9

    if-ne v8, v10, :cond_2

    .line 398
    sget-object v76, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 399
    .local v76, "stats":[I
    const v77, 0x7f0b04ee

    .line 409
    .local v77, "statsLabel":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 410
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v10, v8, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v16, v0

    sub-long v30, v10, v16

    .line 414
    .local v30, "elapsedTime":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    const/4 v10, -0x2

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-wide/from16 v0, v30

    long-to-double v10, v0

    const/4 v14, 0x0

    invoke-static {v8, v10, v11, v14}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v28

    .line 418
    .local v28, "durationString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f080056

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v53

    .line 419
    .local v53, "memStatesStr":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    if-ltz v8, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    move-object/from16 v0, v53

    array-length v10, v0

    if-ge v8, v10, :cond_5

    .line 420
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    aget-object v54, v53, v8

    .line 424
    .local v54, "memString":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b04ec

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v16

    const/16 v16, 0x1

    aput-object v28, v14, v16

    invoke-virtual {v10, v11, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b04f0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v54, v14, v16

    invoke-virtual {v10, v11, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 441
    .local v12, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 443
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v9, v10, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v10, v10, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    invoke-static/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    .line 447
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    array-length v8, v8

    move/from16 v0, v38

    if-ge v0, v8, :cond_6

    .line 448
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v38

    .line 447
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 400
    .end local v12    # "now":J
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "durationString":Ljava/lang/String;
    .end local v30    # "elapsedTime":J
    .end local v38    # "i":I
    .end local v53    # "memStatesStr":[Ljava/lang/CharSequence;
    .end local v54    # "memString":Ljava/lang/CharSequence;
    .end local v76    # "stats":[I
    .end local v77    # "statsLabel":I
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0xa

    if-ne v8, v10, :cond_3

    .line 401
    sget-object v76, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 402
    .restart local v76    # "stats":[I
    const v77, 0x7f0b04ef

    .restart local v77    # "statsLabel":I
    goto/16 :goto_0

    .line 404
    .end local v76    # "stats":[I
    .end local v77    # "statsLabel":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz v8, :cond_4

    sget-object v76, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 406
    .restart local v76    # "stats":[I
    :goto_3
    const v77, 0x7f0b04ed

    .restart local v77    # "statsLabel":I
    goto/16 :goto_0

    .line 404
    .end local v76    # "stats":[I
    .end local v77    # "statsLabel":I
    :cond_4
    sget-object v76, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    goto :goto_3

    .line 422
    .restart local v28    # "durationString":Ljava/lang/String;
    .restart local v30    # "elapsedTime":J
    .restart local v53    # "memStatesStr":[Ljava/lang/CharSequence;
    .restart local v76    # "stats":[I
    .restart local v77    # "statsLabel":I
    :cond_5
    const-string v54, "?"

    .restart local v54    # "memString":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 450
    .restart local v12    # "now":J
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v38    # "i":I
    :cond_6
    const/16 v44, 0x0

    .local v44, "iscreen":I
    :goto_4
    const/16 v8, 0x8

    move/from16 v0, v44

    if-ge v0, v8, :cond_8

    .line 451
    const/16 v39, 0x0

    .local v39, "imem":I
    :goto_5
    const/4 v8, 0x4

    move/from16 v0, v39

    if-ge v0, v8, :cond_7

    .line 452
    add-int v75, v39, v44

    .line 453
    .local v75, "state":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    aget-wide v10, v8, v39

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v16, v14, v75

    add-long v10, v10, v16

    aput-wide v10, v8, v39

    .line 451
    add-int/lit8 v39, v39, 0x1

    goto :goto_5

    .line 450
    .end local v75    # "state":I
    :cond_7
    add-int/lit8 v44, v44, 0x4

    goto :goto_4

    .line 460
    .end local v39    # "imem":I
    :cond_8
    new-instance v27, Lcom/android/settings/applications/LinearColorPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-direct {v0, v8}, Lcom/android/settings/applications/LinearColorPreference;-><init>(Landroid/content/Context;)V

    .line 461
    .local v27, "colors":Lcom/android/settings/applications/LinearColorPreference;
    const/4 v8, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/LinearColorPreference;->setOrder(I)V

    .line 462
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    packed-switch v8, :pswitch_data_0

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    move-wide/from16 v56, v0

    .line 475
    .local v56, "memTotalTime":J
    sget-object v52, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 478
    .local v52, "memStates":[I
    :goto_6
    const/4 v8, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    .line 481
    sget-object v23, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    .line 482
    .local v23, "badColors":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x0

    aget-wide v78, v8, v10

    .line 483
    .local v78, "timeGood":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x1

    aget-wide v10, v8, v10

    const-wide/16 v16, 0x2

    mul-long v10, v10, v16

    const-wide/16 v16, 0x3

    div-long v10, v10, v16

    add-long v78, v78, v10

    .line 484
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x2

    aget-wide v10, v8, v10

    const-wide/16 v16, 0x3

    div-long v10, v10, v16

    add-long v78, v78, v10

    .line 485
    move-wide/from16 v0, v78

    long-to-float v8, v0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v10, v10

    div-float v47, v8, v10

    .line 486
    .local v47, "memBadness":F
    move-object/from16 v0, v23

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    mul-float v8, v8, v47

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget v26, v23, v8

    .line 487
    .local v26, "badnessColor":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v26

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorPreference;->setColors(III)V

    .line 494
    const/16 v38, 0x0

    :goto_7
    const/4 v8, 0x4

    move/from16 v0, v38

    if-ge v0, v8, :cond_9

    .line 495
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    aget-wide v10, v10, v38

    long-to-double v10, v10

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    double-to-long v10, v10

    aput-wide v10, v8, v38

    .line 494
    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    .line 464
    .end local v23    # "badColors":[I
    .end local v26    # "badnessColor":I
    .end local v47    # "memBadness":F
    .end local v52    # "memStates":[I
    .end local v56    # "memTotalTime":J
    .end local v78    # "timeGood":J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x3

    aget-wide v56, v8, v10

    .line 465
    .restart local v56    # "memTotalTime":J
    sget-object v52, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    .line 466
    .restart local v52    # "memStates":[I
    goto/16 :goto_6

    .line 468
    .end local v52    # "memStates":[I
    .end local v56    # "memTotalTime":J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x3

    aget-wide v10, v8, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v14, 0x2

    aget-wide v16, v8, v14

    add-long v10, v10, v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v14, 0x1

    aget-wide v16, v8, v14

    add-long v56, v10, v16

    .line 471
    .restart local v56    # "memTotalTime":J
    sget-object v52, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    .line 472
    .restart local v52    # "memStates":[I
    goto/16 :goto_6

    .line 498
    .restart local v23    # "badColors":[I
    .restart local v26    # "badnessColor":I
    .restart local v47    # "memBadness":F
    .restart local v78    # "timeGood":J
    :cond_9
    new-instance v80, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, v80

    move-object/from16 v1, v52

    invoke-direct {v0, v8, v1}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 500
    .local v80, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, v80

    invoke-virtual {v8, v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 501
    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, v80

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-wide/from16 v16, v0

    add-double v36, v10, v16

    .line 502
    .local v36, "freeWeight":D
    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, v80

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-wide/from16 v16, v0

    add-double v10, v10, v16

    move-object/from16 v0, v80

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-wide/from16 v16, v0

    add-double v90, v10, v16

    .line 504
    .local v90, "usedWeight":D
    const-wide/16 v24, 0x0

    .local v24, "backgroundWeight":D
    const-wide/16 v62, 0x0

    .line 505
    .local v62, "persBackgroundWeight":D
    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemCachedWeight:D

    .line 506
    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemFreeWeight:D

    .line 507
    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemZRamWeight:D

    .line 508
    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemKernelWeight:D

    .line 509
    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemNativeWeight:D

    .line 510
    const/16 v38, 0x0

    :goto_8
    const/16 v8, 0xe

    move/from16 v0, v38

    if-ge v0, v8, :cond_e

    .line 511
    const/4 v8, 0x7

    move/from16 v0, v38

    if-ne v0, v8, :cond_b

    .line 513
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v38

    .line 510
    :cond_a
    :goto_9
    add-int/lit8 v38, v38, 0x1

    goto :goto_8

    .line 515
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    move-object/from16 v0, v80

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v10, v38

    aput-wide v10, v8, v38

    .line 516
    const/16 v8, 0x9

    move/from16 v0, v38

    if-lt v0, v8, :cond_d

    .line 517
    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v36, v36, v10

    .line 521
    :goto_a
    const/4 v8, 0x2

    move/from16 v0, v38

    if-lt v0, v8, :cond_c

    .line 522
    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v24, v24, v10

    .line 523
    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v62, v62, v10

    .line 525
    :cond_c
    if-nez v38, :cond_a

    .line 526
    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v62, v62, v10

    goto :goto_9

    .line 519
    :cond_d
    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v90, v90, v10

    goto :goto_a

    .line 540
    :cond_e
    add-double v10, v36, v90

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTotalWeight:D

    .line 548
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double v10, v10, v90

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v86, v10, v16

    .line 549
    .local v86, "usedRam":D
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double v10, v10, v36

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v34, v10, v16

    .line 550
    .local v34, "freeRam":D
    add-double v82, v86, v34

    .line 551
    .local v82, "totalRam":D
    new-instance v51, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v51 .. v51}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 552
    .local v51, "memReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 553
    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    long-to-double v0, v10

    move-wide/from16 v70, v0

    .line 554
    .local v70, "realTotalRam":D
    div-double v84, v70, v82

    .line 555
    .local v84, "totalScale":D
    mul-double v72, v86, v84

    .line 556
    .local v72, "realUsedRam":D
    mul-double v68, v34, v84

    .line 563
    .local v68, "realFreeRam":D
    new-instance v50, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v50 .. v50}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 564
    .local v50, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "activity"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 566
    move-object/from16 v0, v50

    iget-wide v10, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v10, v10

    cmpl-double v8, v10, v68

    if-ltz v8, :cond_10

    .line 567
    move-wide/from16 v72, v68

    .line 568
    const-wide/16 v68, 0x0

    .line 580
    :goto_b
    add-double v10, v68, v72

    div-double v10, v72, v10

    double-to-float v0, v10

    move/from16 v88, v0

    .line 581
    .local v88, "usedRatio":F
    const/4 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v88

    move-object/from16 v0, v27

    move/from16 v1, v88

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/settings/applications/LinearColorPreference;->setRatios(FFF)V

    .line 611
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 613
    new-instance v9, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, v52

    move-object/from16 v1, v76

    invoke-direct {v9, v8, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 616
    .local v9, "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v32, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    new-instance v33, Lcom/android/internal/app/ProcessMap;

    invoke-direct/range {v33 .. v33}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 630
    .local v33, "entriesMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/settings/applications/ProcStatsEntry;>;"
    const/16 v41, 0x0

    .local v41, "ipkg":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v21

    .local v21, "N":I
    :goto_c
    move/from16 v0, v41

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    .line 631
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/util/SparseArray;

    .line 633
    .local v64, "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v45, 0x0

    .local v45, "iu":I
    :goto_d
    invoke-virtual/range {v64 .. v64}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v45

    if-ge v0, v8, :cond_16

    .line 634
    move-object/from16 v0, v64

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Landroid/util/SparseArray;

    .line 635
    .local v89, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v46, 0x0

    .local v46, "iv":I
    :goto_e
    invoke-virtual/range {v89 .. v89}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v46

    if-ge v0, v8, :cond_15

    .line 636
    move-object/from16 v0, v89

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 637
    .local v74, "st":Lcom/android/internal/app/ProcessStats$PackageState;
    const/16 v42, 0x0

    .local v42, "iproc":I
    :goto_f
    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move/from16 v0, v42

    if-ge v0, v8, :cond_14

    .line 638
    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 639
    .local v55, "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v55

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, v55

    iget v11, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 641
    .local v7, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v7, :cond_11

    .line 642
    const-string v8, "ProcessStatsUi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No process found for pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v74

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v74

    iget v11, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " proc name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v55

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_f
    :goto_10
    add-int/lit8 v42, v42, 0x1

    goto :goto_f

    .line 570
    .end local v7    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v9    # "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .end local v21    # "N":I
    .end local v32    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .end local v33    # "entriesMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .end local v41    # "ipkg":I
    .end local v42    # "iproc":I
    .end local v45    # "iu":I
    .end local v46    # "iv":I
    .end local v55    # "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v64    # "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v74    # "st":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v88    # "usedRatio":F
    .end local v89    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_10
    move-object/from16 v0, v50

    iget-wide v10, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v10, v10

    add-double v72, v72, v10

    .line 571
    move-object/from16 v0, v50

    iget-wide v10, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v10, v10

    sub-double v68, v68, v10

    goto/16 :goto_b

    .line 646
    .restart local v7    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v9    # "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .restart local v21    # "N":I
    .restart local v32    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .restart local v33    # "entriesMap":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .restart local v41    # "ipkg":I
    .restart local v42    # "iproc":I
    .restart local v45    # "iu":I
    .restart local v46    # "iv":I
    .restart local v55    # "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v64    # "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v74    # "st":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v88    # "usedRatio":F
    .restart local v89    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_11
    iget-object v8, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    .line 647
    .local v6, "ent":Lcom/android/settings/applications/ProcStatsEntry;
    if-nez v6, :cond_13

    .line 648
    new-instance v6, Lcom/android/settings/applications/ProcStatsEntry;

    .end local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v14, 0x8

    if-ne v11, v14, :cond_12

    const/4 v11, 0x1

    :goto_11
    invoke-direct/range {v6 .. v11}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;ZZ)V

    .line 650
    .restart local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v10, v6, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    const-wide/16 v16, 0x0

    cmp-long v8, v10, v16

    if-lez v8, :cond_f

    .line 655
    iget-object v8, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v10, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 656
    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 648
    .end local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    :cond_12
    const/4 v11, 0x0

    goto :goto_11

    .line 659
    .restart local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    :cond_13
    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_10

    .line 635
    .end local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v7    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v55    # "pkgProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_14
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_e

    .line 633
    .end local v42    # "iproc":I
    .end local v74    # "st":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_15
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_d

    .line 630
    .end local v46    # "iv":I
    .end local v89    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_16
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_c

    .line 669
    .end local v45    # "iu":I
    .end local v64    # "pkgUids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_17
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_1d

    .line 670
    const/16 v40, 0x0

    .local v40, "ip":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v21

    :goto_12
    move/from16 v0, v40

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d

    .line 671
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/util/SparseArray;

    .line 673
    .local v81, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v45, 0x0

    .restart local v45    # "iu":I
    :goto_13
    invoke-virtual/range {v81 .. v81}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v45

    if-ge v0, v8, :cond_1c

    .line 674
    move-object/from16 v0, v81

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Landroid/util/SparseArray;

    .line 675
    .restart local v89    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v46, 0x0

    .restart local v46    # "iv":I
    :goto_14
    invoke-virtual/range {v89 .. v89}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v46

    if-ge v0, v8, :cond_1b

    .line 676
    move-object/from16 v0, v89

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 677
    .local v66, "ps":Lcom/android/internal/app/ProcessStats$PackageState;
    const/16 v43, 0x0

    .local v43, "is":I
    move-object/from16 v0, v66

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v22

    .local v22, "NS":I
    :goto_15
    move/from16 v0, v43

    move/from16 v1, v22

    if-ge v0, v1, :cond_1a

    .line 678
    move-object/from16 v0, v66

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 679
    .local v67, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v8, :cond_18

    .line 680
    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v81

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    .line 681
    .restart local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    if-eqz v6, :cond_19

    .line 685
    move-object/from16 v0, v67

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 677
    .end local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    :cond_18
    :goto_16
    add-int/lit8 v43, v43, 0x1

    goto :goto_15

    .line 687
    .restart local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    :cond_19
    const-string v8, "ProcessStatsUi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v67

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v81

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v67

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 675
    .end local v6    # "ent":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v67    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_1a
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_14

    .line 673
    .end local v22    # "NS":I
    .end local v43    # "is":I
    .end local v66    # "ps":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_1b
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_13

    .line 670
    .end local v46    # "iv":I
    .end local v89    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_1c
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_12

    .line 722
    .end local v40    # "ip":I
    .end local v45    # "iu":I
    .end local v81    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_1d
    sget-object v8, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, v32

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 724
    const-wide/16 v48, 0x1

    .line 725
    .local v48, "maxWeight":J
    const/16 v38, 0x0

    if-eqz v32, :cond_1f

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v21

    :goto_17
    move/from16 v0, v38

    move/from16 v1, v21

    if-ge v0, v1, :cond_20

    .line 726
    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    .line 727
    .local v7, "proc":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v8, v48, v10

    if-gez v8, :cond_1e

    .line 728
    iget-wide v0, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    move-wide/from16 v48, v0

    .line 725
    :cond_1e
    add-int/lit8 v38, v38, 0x1

    goto :goto_17

    .end local v7    # "proc":Lcom/android/settings/applications/ProcStatsEntry;
    :cond_1f
    const/16 v21, 0x0

    goto :goto_17

    .line 731
    :cond_20
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_27

    .line 732
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz v8, :cond_26

    .end local v62    # "persBackgroundWeight":D
    :goto_18
    move-wide/from16 v0, v62

    double-to-long v10, v0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    .line 733
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    cmp-long v8, v10, v48

    if-gez v8, :cond_21

    .line 734
    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    .line 748
    :cond_21
    :goto_19
    if-eqz v32, :cond_28

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v29, v8, -0x1

    .line 749
    .local v29, "end":I
    :goto_1a
    if-ltz v29, :cond_22

    .line 750
    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    .line 751
    .restart local v7    # "proc":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v60, v10, v16

    .line 752
    .local v60, "percentOfWeight":D
    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v10, v10

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v58, v10, v16

    .line 753
    .local v58, "percentOfTime":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v60, v10

    if-gez v8, :cond_22

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    cmpl-double v8, v58, v10

    if-ltz v8, :cond_29

    .line 758
    .end local v7    # "proc":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v58    # "percentOfTime":D
    .end local v60    # "percentOfWeight":D
    :cond_22
    const/16 v38, 0x0

    :goto_1b
    move/from16 v0, v38

    move/from16 v1, v29

    if-gt v0, v1, :cond_25

    .line 759
    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    .line 760
    .restart local v7    # "proc":Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v60, v10, v16

    .line 761
    .restart local v60    # "percentOfWeight":D
    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v10, v10

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v58, v10, v16

    .line 762
    .restart local v58    # "percentOfTime":D
    new-instance v65, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-object/from16 v0, v65

    invoke-direct {v0, v8}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 763
    .local v65, "pref":Lcom/android/settings/applications/ProcessStatsPreference;
    const/4 v8, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v0, v8, v7}, Lcom/android/settings/applications/ProcessStatsPreference;->init(Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_2a

    const/16 v20, 0x1

    :goto_1c
    move-object v14, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v14 .. v20}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;ZZ)V

    .line 766
    invoke-virtual {v7, v15}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    .line 767
    iget-object v8, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUiLabel:Ljava/lang/String;

    move-object/from16 v0, v65

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v8, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_23

    .line 769
    iget-object v8, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v0, v65

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 771
    :cond_23
    move-object/from16 v0, v65

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsPreference;->setOrder(I)V

    .line 772
    move-object/from16 v0, v65

    move-wide/from16 v1, v60

    move-wide/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/ProcessStatsPreference;->setPercent(DD)V

    .line 773
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v65

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 774
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_24

    .line 784
    :cond_24
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v10, 0x3d

    if-le v8, v10, :cond_2b

    .line 789
    .end local v7    # "proc":Lcom/android/settings/applications/ProcStatsEntry;
    .end local v58    # "percentOfTime":D
    .end local v60    # "percentOfWeight":D
    .end local v65    # "pref":Lcom/android/settings/applications/ProcessStatsPreference;
    :cond_25
    return-void

    .end local v29    # "end":I
    .restart local v62    # "persBackgroundWeight":D
    :cond_26
    move-wide/from16 v62, v24

    .line 732
    goto/16 :goto_18

    .line 741
    :cond_27
    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    goto/16 :goto_19

    .line 748
    .end local v62    # "persBackgroundWeight":D
    :cond_28
    const/16 v29, -0x1

    goto/16 :goto_1a

    .line 756
    .restart local v7    # "proc":Lcom/android/settings/applications/ProcStatsEntry;
    .restart local v29    # "end":I
    .restart local v58    # "percentOfTime":D
    .restart local v60    # "percentOfWeight":D
    :cond_29
    add-int/lit8 v29, v29, -0x1

    .line 757
    goto/16 :goto_1a

    .line 764
    .restart local v65    # "pref":Lcom/android/settings/applications/ProcessStatsPreference;
    :cond_2a
    const/16 v20, 0x0

    goto :goto_1c

    .line 758
    :cond_2b
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1b

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 152
    :cond_0
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 153
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUm:Landroid/os/UserManager;

    .line 156
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "mem_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    .line 158
    if-eqz p1, :cond_2

    const-string v0, "duration"

    sget-object v1, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v6, v1, v2

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 159
    if-eqz p1, :cond_3

    const-string v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    .line 160
    if-eqz p1, :cond_1

    const-string v0, "use_uss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    .line 161
    if-eqz p1, :cond_4

    const-string v0, "stats_type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    .line 163
    if-eqz p1, :cond_5

    const-string v0, "mem_region"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->showBBKBackButton()V

    .line 168
    return-void

    .line 158
    :cond_2
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v0, v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 159
    goto :goto_1

    :cond_4
    move v0, v3

    .line 161
    goto :goto_2

    :cond_5
    move v0, v4

    .line 163
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 238
    const v3, 0x7f0b04e2

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02005e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x72

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    .line 241
    .local v1, "refresh":Landroid/view/MenuItem;
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 243
    const v3, 0x7f0b04f5

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 244
    .local v2, "subMenu":Landroid/view/SubMenu;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    aget v5, v5, v0

    invoke-interface {v2, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v3, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    const/4 v3, 0x6

    const v4, 0x7f0b0503

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x73

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    .line 251
    const/4 v3, 0x7

    const v4, 0x7f0b0504

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x75

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    .line 254
    const v3, 0x7f0b0505

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 255
    const/16 v3, 0x8

    const v4, 0x7f0b0506

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x62

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    .line 259
    const/16 v3, 0x9

    const v4, 0x7f0b0507

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x66

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    .line 263
    const/16 v3, 0xa

    const v4, 0x7f0b0508

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    .line 276
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    .line 198
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 315
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 335
    :pswitch_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 336
    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    add-int/lit8 v3, v0, -0x2

    aget-wide v2, v2, v3

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 337
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    :cond_0
    move v2, v1

    .line 339
    :goto_0
    return v2

    .line 317
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 318
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 321
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    .line 322
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 325
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    .line 326
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 331
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    .line 332
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 180
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 202
    instance-of v0, p2, Lcom/android/settings/applications/LinearColorPreference;

    if-eqz v0, :cond_1

    .line 203
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "mem_times"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 205
    const-string v0, "mem_state_weights"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 206
    const-string v0, "mem_cached_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemCachedWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 207
    const-string v0, "mem_free_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemFreeWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 208
    const-string v0, "mem_zram_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemZRamWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 209
    const-string v0, "mem_kernel_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemKernelWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 210
    const-string v0, "mem_native_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemNativeWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 211
    const-string v0, "mem_total_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTotalWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 212
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/ProcessStatsMemDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04f6

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 217
    const/4 v6, 0x1

    .line 233
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v6

    .line 220
    :cond_1
    instance-of v0, p2, Lcom/android/settings/applications/ProcessStatsPreference;

    if-eqz v0, :cond_0

    move-object v7, p2

    .line 224
    check-cast v7, Lcom/android/settings/applications/ProcessStatsPreference;

    .line 225
    .local v7, "pgp":Lcom/android/settings/applications/ProcessStatsPreference;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 226
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v0, "entry"

    invoke-virtual {v7}, Lcom/android/settings/applications/ProcessStatsPreference;->getEntry()Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 227
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    const-string v0, "max_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 229
    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04af

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 233
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onRegionTapped(I)V
    .locals 1
    .param p1, "region"    # I

    .prologue
    .line 345
    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    if-eq v0, p1, :cond_0

    .line 346
    iput p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    .line 347
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    .line 349
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 175
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const-string v0, "stats_type"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v0, "mem_region"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    return-void
.end method

.method updateMenus()V
    .locals 10

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "closestIndex":I
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 281
    .local v0, "closestDelta":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 282
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v6, v6, v3

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 283
    .local v4, "delta":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 284
    move-wide v0, v4

    .line 285
    move v2, v3

    .line 281
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    .end local v4    # "delta":J
    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v3, v6, :cond_4

    .line 289
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v6, v6, v3

    if-eqz v6, :cond_2

    .line 290
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v7, v6, v3

    if-ne v3, v2, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 288
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 290
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 293
    :cond_4
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v6, v6, v2

    iput-wide v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 294
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_5

    .line 295
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 296
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_a

    const/4 v6, 0x1

    :goto_3
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 298
    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_6

    .line 299
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    iget-boolean v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 301
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_7

    .line 302
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_b

    const/4 v6, 0x1

    :goto_4
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 304
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_8

    .line 305
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0x9

    if-ne v6, v8, :cond_c

    const/4 v6, 0x1

    :goto_5
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 307
    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_9

    .line 308
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_d

    const/4 v6, 0x1

    :goto_6
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 310
    :cond_9
    return-void

    .line 296
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 302
    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 305
    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    .line 308
    :cond_d
    const/4 v6, 0x0

    goto :goto_6
.end method
