.class public Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;


# static fields
.field public static final LOCATION_STATUS_ICON_ID:I = 0x7f020138

.field public static final LOCATION_STATUS_ICON_PLACEHOLDER:Ljava/lang/String; = "location"

.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 70
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 93
    return-void
.end method

.method private areActiveHighPowerLocationRequests()Z
    .locals 10

    .prologue
    .line 160
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 163
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_2

    .line 164
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    .local v1, "numPackages":I
    const/4 v5, 0x0

    .local v5, "packageInd":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 166
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 167
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v2, :cond_1

    .line 169
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    .local v0, "numOps":I
    const/4 v4, 0x0

    .local v4, "opInd":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 171
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 174
    .local v3, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    .line 175
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 176
    const/4 v8, 0x1

    .line 184
    .end local v0    # "numOps":I
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :goto_2
    return v8

    .line 170
    .restart local v0    # "numOps":I
    .restart local v1    # "numPackages":I
    .restart local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .restart local v4    # "opInd":I
    .restart local v5    # "packageInd":I
    .restart local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "numOps":I
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isUserLocationRestricted(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 151
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_share_location"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private locationSettingsChanged()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v2

    .line 211
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 212
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_0

    .line 214
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private locationSettingsChanged(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    .line 218
    return-void
.end method

.method private refreshViews()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 203
    .local v0, "hadActiveLocationRequests":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 204
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->refreshViews()V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->locationSettingsChanged(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 101
    return-void
.end method

.method public isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 143
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    .line 226
    :cond_0
    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public setLocationEnabled(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 120
    .local v1, "currentUserId":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isUserLocationRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :goto_0
    return v2

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const/4 v2, 0x3

    .line 130
    .local v2, "mode":I
    :cond_1
    const-string v3, "location_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method
