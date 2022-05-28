.class final Lcom/android/settings/applications/CanBeOnSdCardChecker;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# instance fields
.field mInstallLocation:I

.field final mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    .line 128
    return-void
.end method

.method private isLimitApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 187
    invoke-static {}, Landroid/content/pm/PackageParser;->initLimitVal()V

    .line 188
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 189
    .local v0, "archiveFilePath":Ljava/lang/String;
    const-string v5, "ManagerApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " archiveFilePath is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3}, Landroid/content/pm/PackageParser;-><init>()V

    .line 191
    .local v3, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v4, "sourceFile":Ljava/io/File;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    const/4 v3, 0x0

    .line 202
    invoke-static {}, Landroid/content/pm/PackageParser;->isLimitApp()Z

    move-result v2

    .line 203
    .local v2, "isLimit":Z
    return v2

    .line 196
    .end local v2    # "isLimit":Z
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ManagerApplication"

    const-string v6, "isLimitApp exception"

    invoke-static {v5, v6, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method check(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v4, 0x2

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "canBe":Z
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 143
    const/4 v0, 0x0

    move v1, v0

    .line 181
    .end local v0    # "canBe":Z
    .local v1, "canBe":I
    :goto_0
    return v1

    .line 147
    .end local v1    # "canBe":I
    .restart local v0    # "canBe":Z
    :cond_0
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 148
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 181
    .restart local v1    # "canBe":I
    goto :goto_0

    .line 150
    .end local v1    # "canBe":I
    :cond_2
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 151
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v2, v4, :cond_3

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-nez v2, :cond_5

    .line 153
    :cond_3
    const/4 v0, 0x1

    .line 163
    :cond_4
    :goto_2
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.vivo.PCTools"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 164
    const/4 v0, 0x0

    move v1, v0

    .line 165
    .restart local v1    # "canBe":I
    goto :goto_0

    .line 154
    .end local v1    # "canBe":I
    :cond_5
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 156
    iget v2, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mInstallLocation:I

    if-ne v2, v4, :cond_4

    .line 159
    const/4 v0, 0x1

    goto :goto_2

    .line 167
    :cond_6
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v3, "vendor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 168
    const-string v2, "ManagerApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.sourceDir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    move v1, v0

    .line 170
    .restart local v1    # "canBe":I
    goto :goto_0

    .line 172
    .end local v1    # "canBe":I
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->isLimitApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 173
    const-string v2, "ManagerApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  canBe = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; pkg name is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    move v1, v0

    .line 175
    .restart local v1    # "canBe":I
    goto/16 :goto_0

    .line 177
    .end local v1    # "canBe":I
    :cond_8
    const/4 v0, 0x1

    goto :goto_1
.end method

.method init()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/CanBeOnSdCardChecker;->mInstallLocation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CanBeOnSdCardChecker"

    const-string v2, "Is Package Manager running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
