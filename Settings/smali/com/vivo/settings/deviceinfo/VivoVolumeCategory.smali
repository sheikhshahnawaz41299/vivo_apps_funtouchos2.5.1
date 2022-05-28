.class public Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
.super Landroid/preference/PreferenceCategory;
.source "VivoVolumeCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;
    }
.end annotation


# static fields
.field private static final ACTION_FILEMANAGER_MAIN_CATEGORY:Ljava/lang/String; = "com.android.filemanager.action.MAIN_CATEGORY"

.field private static final FILEMANAGER_EXTRA:Ljava/lang/String; = "FilePathToBeOpenAfterScan"

.field private static final FILEMANAGER_EXTRA_SETTINGS:Ljava/lang/String; = "com.vivo.settings.storage"

.field private static final MSG_UI_SECOND_UPDATE:I = 0x3

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_DETAILS:I = 0x2

.field private static final PREFS_NAME:Ljava/lang/String; = "settings_info"

.field private static final STORED_EMMC_SIZE:Ljava/lang/String; = "stored_emmc_size"

.field private static final STORED_U_DICK_LONG_TOTAL_SIZE_KEY:Ljava/lang/String; = "stored_int_u_disk_long_totalSize"

.field private static final STORED_U_DICK_TOTAL_SIZE_KEY:Ljava/lang/String; = "stored_int_u_disk_totalSize"

.field private static final TAG:Ljava/lang/String; = "VivoVolumeCategory"


# instance fields
.field private mCategoryIsTotal:Z

.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsEmptyOtg:Z

.field private mIsEmulate:Z

.field private mItemApps:Landroid/preference/Preference;

.field private mItemAvailable:Landroid/preference/Preference;

.field private mItemFiles:Landroid/preference/Preference;

.field private mItemManageVolume:Landroid/preference/Preference;

.field private mItemRunningApps:Landroid/preference/Preference;

.field private mItemSys:Landroid/preference/Preference;

.field private mItemTotal:Landroid/preference/Preference;

.field private mItemUsed:Landroid/preference/Preference;

.field private final mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private final mPath:Ljava/lang/String;

.field private mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mStrResAvailable:I

.field private mStrResCategory:I

.field private mStrResFormat:I

.field private mStrResInsert:I

.field private mStrResManageVolume:I

.field private mStrResMount:I

.field private mStrResRunningApps:I

.field private mStrResSummaryInsert:I

.field private mStrResSummaryMount:I

.field private mStrResSummaryUnmount:I

.field private mStrResTotal:I

.field private mStrResUnmount:I

.field private mStrResUsed:I

.field private mStrResUsedApps:I

.field private mStrResUsedFiles:I

.field private mStrResUsedSys:I

.field private mTotalSize:J

.field private mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

.field private mUpdateHandler:Landroid/os/Handler;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;-><init>(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;-><init>(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 82
    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 90
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    .line 91
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 92
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    .line 93
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsed:I

    .line 94
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedApps:I

    .line 95
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedFiles:I

    .line 96
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedSys:I

    .line 97
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResManageVolume:I

    .line 98
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResRunningApps:I

    .line 99
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    .line 100
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    .line 101
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResMount:I

    .line 102
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    .line 103
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryUnmount:I

    .line 104
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryMount:I

    .line 105
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mCategoryIsTotal:Z

    .line 108
    iput-boolean v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmptyOtg:Z

    .line 109
    iput-boolean v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    .line 254
    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 255
    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mPath:Ljava/lang/String;

    .line 256
    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mResources:Landroid/content/res/Resources;

    .line 258
    iput-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 260
    const-string v0, "1"

    const-string v1, "persist.sys.primary.emulate"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    .line 261
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$1;-><init>(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$2;-><init>(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 82
    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 90
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    .line 91
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 92
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    .line 93
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsed:I

    .line 94
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedApps:I

    .line 95
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedFiles:I

    .line 96
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedSys:I

    .line 97
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResManageVolume:I

    .line 98
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResRunningApps:I

    .line 99
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    .line 100
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    .line 101
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResMount:I

    .line 102
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    .line 103
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryUnmount:I

    .line 104
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryMount:I

    .line 105
    iput v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mCategoryIsTotal:Z

    .line 108
    iput-boolean v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmptyOtg:Z

    .line 109
    iput-boolean v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    .line 242
    iput-object p2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 243
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mPath:Ljava/lang/String;

    .line 244
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mResources:Landroid/content/res/Resources;

    .line 246
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 249
    const-string v0, "1"

    const-string v1, "persist.sys.primary.emulate"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    .line 250
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->measure()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 181
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-direct {v0, p0, p1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 183
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mCategoryIsTotal:Z

    .line 184
    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeInternal:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    iput-object v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 186
    iget-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    if-eqz v1, :cond_0

    .line 187
    const v1, 0x7f0b084f

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 188
    const v1, 0x7f0b084e

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    .line 194
    :goto_0
    const v1, 0x7f0b0900

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    .line 195
    const v1, 0x7f0b0904

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsed:I

    .line 198
    invoke-direct {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->construct()V

    .line 199
    return-object v0

    .line 190
    :cond_0
    const v1, 0x7f0b098f

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 191
    const v1, 0x7f0b0990

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    goto :goto_0
.end method

.method public static buildForOtg(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const v3, 0x7f0b089d

    const/4 v2, 0x1

    .line 151
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-direct {v0, p0, p1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 153
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    iput-boolean v2, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mCategoryIsTotal:Z

    .line 154
    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    iput-object v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 156
    const v1, 0x7f0b089a

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    .line 157
    const v1, 0x7f0b097b

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 158
    const v1, 0x7f0b0977

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResManageVolume:I

    .line 159
    const v1, 0x7f0b089e

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    .line 160
    iput v3, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResMount:I

    .line 161
    iput v3, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    .line 162
    const v1, 0x7f0b089c

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    .line 163
    const v1, 0x7f0b089b

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    .line 165
    iget-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    if-eqz v1, :cond_1

    .line 166
    const v1, 0x7f0b080d

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    .line 171
    :goto_0
    if-nez p1, :cond_0

    .line 172
    iput-boolean v2, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmptyOtg:Z

    .line 175
    :cond_0
    invoke-direct {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->construct()V

    .line 176
    return-object v0

    .line 168
    :cond_1
    const v1, 0x7f0b0899

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    goto :goto_0
.end method

.method public static buildForRam(Landroid/content/Context;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-direct {v0, p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mCategoryIsTotal:Z

    .line 229
    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    iput-object v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 231
    const v1, 0x7f0b096e

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    .line 232
    const v1, 0x7f0b097b

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 233
    const v1, 0x7f0b07ec

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    .line 234
    const v1, 0x7f0b097a

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResRunningApps:I

    .line 236
    invoke-direct {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->construct()V

    .line 237
    return-object v0
.end method

.method public static buildForSD(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const v2, 0x7f0b029e

    .line 125
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    invoke-direct {v0, p0, p1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 127
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mCategoryIsTotal:Z

    .line 128
    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSD:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    iput-object v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 130
    const v1, 0x7f0b08f4

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    .line 131
    const v1, 0x7f0b097b

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 132
    const v1, 0x7f0b0978

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResManageVolume:I

    .line 133
    const v1, 0x7f0b029b

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    .line 134
    iput v2, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResMount:I

    .line 135
    iput v2, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    .line 136
    const v1, 0x7f0b0032

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    .line 137
    const v1, 0x7f0b029d

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    .line 139
    iget-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    if-eqz v1, :cond_0

    .line 140
    const v1, 0x7f0b080d

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    .line 145
    :goto_0
    invoke-direct {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->construct()V

    .line 146
    return-object v0

    .line 142
    :cond_0
    const v1, 0x7f0b0822

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    goto :goto_0
.end method

.method public static buildForSystem(Landroid/content/Context;)Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    .line 205
    .local v0, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mCategoryIsTotal:Z

    .line 206
    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    iput-object v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    .line 208
    const v1, 0x7f0b08f6

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    .line 209
    iget-boolean v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    if-eqz v1, :cond_0

    .line 210
    const v1, 0x7f0b097b

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 211
    const v1, 0x7f0b07ec

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    .line 216
    :goto_0
    const v1, 0x7f0b0904

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsed:I

    .line 217
    const v1, 0x7f0b08f3

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedApps:I

    .line 218
    const v1, 0x7f0b08f5

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedFiles:I

    .line 219
    const v1, 0x7f0b08ff

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedSys:I

    .line 221
    invoke-direct {v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->construct()V

    .line 222
    return-object v0

    .line 213
    :cond_0
    const v1, 0x7f0b0379

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    .line 214
    const v1, 0x7f0b07eb

    iput v1, v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    goto :goto_0
.end method

.method private buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isInformation"    # Z

    .prologue
    .line 610
    new-instance v0, Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;-><init>(Landroid/content/Context;ILandroid/content/Intent;Z)V

    return-object v0
.end method

.method private construct()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getEmmcSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->valueOfstr(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    if-lez v0, :cond_1

    .line 269
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->setLayoutResource(I)V

    .line 270
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResCategory:I

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->setTitle(I)V

    .line 274
    :goto_0
    const-string v0, "storage_category"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->setKey(Ljava/lang/String;)V

    .line 275
    return-void

    .line 272
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmmcSize()F
    .locals 5

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "settings_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 415
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "stored_emmc_size"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const-string v2, "stored_emmc_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 420
    :goto_0
    return v0

    .line 418
    :cond_0
    invoke-static {}, Lcom/android/settings/AppFeature;->getIntTotalSpaceSize()F

    move-result v0

    .line 419
    .local v0, "emmcSize":F
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "stored_emmc_size"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private getFileManagerIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 584
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 586
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.filemanager"

    const-string v2, "com.android.filemanager.FileManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v1, "FilePathToBeOpenAfterScan"

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v1, "com.vivo.settings.storage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    return-object v0
.end method

.method private getFixedSystemTotal()J
    .locals 10

    .prologue
    const/high16 v6, 0x44800000    # 1024.0f

    .line 388
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getEmmcSize()F

    move-result v0

    .line 389
    .local v0, "fEmmc":F
    mul-float v1, v0, v6

    mul-float/2addr v1, v6

    mul-float/2addr v1, v6

    float-to-long v4, v1

    .line 390
    .local v4, "lEmmc":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getInternalSize()J

    move-result-wide v2

    .line 392
    .local v2, "internalSize":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    const-wide/16 v8, 0x1f4

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 394
    const-string v1, "VivoVolumeCategory"

    const-string v6, "fixed system total after 500ms"

    invoke-static {v1, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    const-string v1, "VivoVolumeCategory"

    const-string v6, "fixed system total emmcSize:[%s] internalSize:[%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sub-long/2addr v4, v2

    .line 399
    .end local v2    # "internalSize":J
    .end local v4    # "lEmmc":J
    :cond_1
    return-wide v4
.end method

.method private getFormatIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 577
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 580
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInternalSize()J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v6, 0x44800000    # 1024.0f

    .line 403
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "settings_info"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 404
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "stored_int_u_disk_long_totalSize"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    const-string v1, "stored_int_u_disk_long_totalSize"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 410
    :cond_0
    :goto_0
    return-wide v2

    .line 407
    :cond_1
    const-string v1, "stored_int_u_disk_totalSize"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const-string v1, "stored_int_u_disk_totalSize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    mul-float/2addr v1, v6

    mul-float/2addr v1, v6

    mul-float/2addr v1, v6

    float-to-long v2, v1

    goto :goto_0
.end method

.method private getIntoAppIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 594
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.ManageApplications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    return-object v0
.end method

.method private getRunningAppsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 604
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$RunningServicesActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    return-object v0
.end method

.method private measure()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-eq v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 634
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 636
    :cond_0
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 352
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 353
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 354
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updateInternalSize(J)V
    .locals 7
    .param p1, "internalSize"    # J

    .prologue
    const/4 v5, 0x0

    .line 377
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const-string v1, "VivoVolumeCategory"

    const-string v2, "update internal size:[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings_info"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "stored_int_u_disk_long_totalSize"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stored_int_u_disk_long_totalSize"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updatePreference(Landroid/preference/Preference;J)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "size"    # J

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 365
    invoke-direct {p0, p2, p3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    return-object v0
.end method

.method public getVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removeAll()V

    .line 522
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResTotal:I

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    .line 523
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 526
    iget-boolean v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 528
    iget v4, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_0
    iget-object v5, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v5, :cond_5

    :goto_1
    invoke-direct {p0, v4, v0, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    .line 533
    :goto_2
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 535
    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResRunningApps:I

    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getRunningAppsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemRunningApps:Landroid/preference/Preference;

    .line 537
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemRunningApps:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mIsEmulate:Z

    if-eqz v0, :cond_1

    .line 541
    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 542
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedApps:I

    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getIntoAppIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemApps:Landroid/preference/Preference;

    .line 543
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUsedFiles:I

    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getFileManagerIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemFiles:Landroid/preference/Preference;

    .line 549
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemApps:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 550
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemFiles:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 560
    :cond_1
    :goto_3
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    if-eqz v0, :cond_2

    .line 561
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    invoke-direct {p0, v0, v1, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 562
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 565
    :cond_2
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    if-eqz v0, :cond_3

    .line 566
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getFormatIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 567
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 571
    :cond_3
    return-void

    .line 528
    :cond_4
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getFileManagerIntent()Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto/16 :goto_1

    .line 531
    :cond_6
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    goto/16 :goto_2

    .line 552
    :cond_7
    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSD:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    :cond_8
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResFormat:I

    if-eqz v0, :cond_1

    .line 554
    iget v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResManageVolume:I

    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getFileManagerIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v0, v2, v3}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->buildItem(ILandroid/content/Intent;Z)Lcom/vivo/settings/deviceinfo/VivoStorageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemManageVolume:Landroid/preference/Preference;

    .line 555
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemManageVolume:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->measure()V

    .line 670
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->measure()V

    .line 640
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-eq v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 676
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 643
    const-string v0, "VivoVolumeCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    sget-object v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeRam:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-eq v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 646
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->measure()V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->updateRamSize(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->init()V

    .line 665
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->measure()V

    .line 666
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 278
    const-string v2, "VivoVolumeCategory"

    const-string v3, "update approximate path:[%s] totalSize:[%s] availSize:[%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mPath:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v2, "VivoVolumeCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v2

    sget-object v3, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeSystem:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v2, v3, :cond_0

    .line 281
    move-wide v0, p1

    .line 282
    .local v0, "dataTotalSize":J
    invoke-direct {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getFixedSystemTotal()J

    move-result-wide p1

    .line 289
    const-string v2, "VivoVolumeCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update system total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "dataTotalSize":J
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    invoke-direct {p0, p3, p4}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    :cond_2
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemUsed:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    .line 299
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemUsed:Landroid/preference/Preference;

    sub-long v4, p1, p3

    invoke-direct {p0, v4, v5}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    :cond_3
    iput-wide p1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mTotalSize:J

    .line 303
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->getType()Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    move-result-object v2

    sget-object v3, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeInternal:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v2, v3, :cond_4

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->updateInternalSize(J)V

    .line 307
    :cond_4
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->updatePreferencesFromState()V

    .line 308
    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 1
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "showDetails":Z
    return-void
.end method

.method public updatePreferencesFromState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 424
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_3

    .line 425
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mType:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    sget-object v2, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;->TypeOtg:Lcom/vivo/settings/deviceinfo/VivoVolumeCategory$VolumeCategoryType;

    if-ne v1, v2, :cond_2

    .line 426
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 427
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemManageVolume:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemManageVolume:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemUsed:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemUsed:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 438
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 440
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 515
    :cond_2
    :goto_0
    return-void

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 452
    :cond_4
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "state":Ljava/lang/String;
    const-string v1, "VivoVolumeCategory"

    const-string v2, "updatePreferencesFromState current state path:[%s] state:[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mPath:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 455
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    const v2, 0x7f0b0292

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 460
    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 462
    :cond_5
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    if-lez v1, :cond_6

    .line 465
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResUnmount:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 467
    :cond_6
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryUnmount:I

    if-lez v1, :cond_8

    .line 468
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryUnmount:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 457
    :cond_7
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResAvailable:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 470
    :cond_8
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 474
    :cond_9
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    if-eqz v1, :cond_a

    .line 475
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 477
    :cond_a
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    if-eqz v1, :cond_b

    .line 478
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    :cond_b
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_c

    .line 481
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 483
    :cond_c
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemUsed:Landroid/preference/Preference;

    if-eqz v1, :cond_d

    .line 484
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemUsed:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 486
    :cond_d
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemManageVolume:Landroid/preference/Preference;

    if-eqz v1, :cond_e

    .line 487
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemManageVolume:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    :cond_e
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 490
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 491
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 492
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResMount:I

    if-lez v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResMount:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 494
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryMount:I

    if-lez v1, :cond_f

    .line 495
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryMount:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 497
    :cond_f
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 500
    :cond_10
    const-string v1, "removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 503
    :cond_11
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 504
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    if-eqz v1, :cond_2

    .line 505
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResInsert:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 506
    iget v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    if-lez v1, :cond_12

    .line 507
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget v2, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mStrResSummaryInsert:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 509
    :cond_12
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public updateRamSize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    invoke-static {p1}, Lcom/vivo/settings/RamUtils;->updateRamVolume(Landroid/content/Context;)V

    .line 654
    const-string v0, "VivoVolumeCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update ramsize :totalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vivo/settings/RamUtils;->getTotalRunRam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  availSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vivo/settings/RamUtils;->getAvaiableRam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemTotal:Landroid/preference/Preference;

    invoke-static {}, Lcom/vivo/settings/RamUtils;->getTotalRunRam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->mItemAvailable:Landroid/preference/Preference;

    invoke-static {}, Lcom/vivo/settings/RamUtils;->getAvaiableRam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    :cond_1
    return-void
.end method

.method public valueOfstr(F)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # F

    .prologue
    .line 619
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
