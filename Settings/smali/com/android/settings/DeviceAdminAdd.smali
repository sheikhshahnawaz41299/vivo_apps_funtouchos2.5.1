.class public Lcom/android/settings/DeviceAdminAdd;
.super Lcom/vivo/settings/VivoSettingsBaseActivity;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminAdd$ViewHolder;,
        Lcom/android/settings/DeviceAdminAdd$MyAdapter;
    }
.end annotation


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field private static final MAX_ADD_MSG_LINES:I = 0xf

.field private static final MAX_ADD_MSG_LINES_LANDSCAPE:I = 0x2

.field private static final MAX_ADD_MSG_LINES_PORTRAIT:I = 0x5

.field static final TAG:Ljava/lang/String; = "DeviceAdminAdd"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field private mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

.field mAddMsgEllipsized:Z

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field mAddingProfileOwner:Z

.field mAppOps:Landroid/app/AppOpsManager;

.field private mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

.field mCancelButton:Landroid/widget/Button;

.field mCurSysAppOpMode:I

.field mCurToastAppOpMode:I

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field private mHandlerfinish:Landroid/os/Handler;

.field private mImageCallback:Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

.field private mListView:Landroid/widget/ListView;

.field private mMarkupView:Lcom/vivo/common/MarkupView;

.field mProfileOwnerName:Ljava/lang/String;

.field mRefreshing:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 371
    new-instance v0, Lcom/android/settings/DeviceAdminAdd$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mHandlerfinish:Landroid/os/Handler;

    .line 818
    new-instance v0, Lcom/android/settings/DeviceAdminAdd$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceAdminAdd$5;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mImageCallback:Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceAdminAdd;)Lcom/vivo/settings/AsyncImageLoader$ImageCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminAdd;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mImageCallback:Lcom/vivo/settings/AsyncImageLoader$ImageCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceAdminAdd;)Lcom/vivo/settings/AsyncImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceAdminAdd;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    return-object v0
.end method

.method private getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "grpName"    # Ljava/lang/CharSequence;
    .param p4, "permList"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v6, 0x8

    .line 584
    const v4, 0x3030001

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 586
    .local v3, "permView":Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 587
    .local v2, "permGrpView":Landroid/widget/TextView;
    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 589
    .local v1, "permDescView":Landroid/widget/TextView;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 590
    .local v0, "imgView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    :cond_0
    if-eqz p3, :cond_1

    .line 594
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :goto_0
    return-object v3

    .line 597
    :cond_1
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 462
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 463
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method addAndFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 347
    const v2, 0x16059

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 349
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v2, :cond_1

    .line 361
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mHandlerfinish:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 364
    .local v1, "re":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_1
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 378
    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 381
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 382
    if-nez p1, :cond_1

    .line 384
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 388
    const-string v1, "DeviceAdminAdd"

    const-string v2, "continueRemoveAction is "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mHandlerfinish:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 395
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 401
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 396
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 385
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 566
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 569
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grpName"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 575
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 577
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f020051

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 578
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DeviceAdminAdd;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super/range {p0 .. p1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v19, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 130
    const-string v19, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 131
    const-string v19, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/AppOpsManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/vivo/settings/AsyncImageLoader;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    .line 135
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 137
    .local v15, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getFlags()I

    move-result v19

    const/high16 v20, 0x10000000

    and-int v19, v19, v20

    if-eqz v19, :cond_1

    .line 138
    const-string v19, "DeviceAdminAdd"

    const-string v20, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 342
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/ComponentName;

    .line 146
    .local v18, "who":Landroid/content/ComponentName;
    if-nez v18, :cond_2

    .line 147
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "No component specified in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 152
    :cond_2
    if-eqz v3, :cond_5

    const-string v19, "android.app.action.SET_PROFILE_OWNER"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 153
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 154
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 155
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "callingPackage":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 160
    :cond_3
    const-string v19, "DeviceAdminAdd"

    const-string v20, "Unknown or incorrect caller"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 165
    :cond_4
    const/16 v19, 0x0

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v15, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 166
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_5

    .line 167
    const-string v19, "DeviceAdminAdd"

    const-string v20, "Cannot set a non-system app as a profile owner"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 171
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    .line 172
    .local v13, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find the package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 180
    .end local v6    # "callingPackage":Ljava/lang/String;
    .end local v13    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const/16 v19, 0x80

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 190
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 191
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v20, 0x8000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 194
    .local v5, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_7

    const/4 v7, 0x0

    .line 195
    .local v7, "count":I
    :goto_1
    const/4 v10, 0x0

    .line 196
    .local v10, "found":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v7, :cond_6

    .line 197
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 198
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 203
    :try_start_2
    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 204
    new-instance v8, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 205
    .local v8, "dpi":Landroid/app/admin/DeviceAdminInfo;
    const/4 v10, 0x1

    .line 214
    .end local v8    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    :goto_3
    if-nez v10, :cond_9

    .line 215
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Request to add invalid device admin: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 181
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "count":I
    .end local v10    # "found":Z
    .end local v11    # "i":I
    :catch_1
    move-exception v9

    .line 182
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve device policy "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 194
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    goto/16 :goto_1

    .line 206
    .restart local v7    # "count":I
    .restart local v10    # "found":Z
    .restart local v11    # "i":I
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v9

    .line 207
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 208
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v9

    .line 209
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 196
    .end local v9    # "e":Ljava/io/IOException;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 221
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "count":I
    .end local v10    # "found":Z
    .end local v11    # "i":I
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_9
    new-instance v17, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 222
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 224
    :try_start_3
    new-instance v19, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 238
    const-string v19, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 239
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v12

    .line 242
    .local v12, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_a

    .line 243
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 244
    .local v16, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v19

    if-nez v19, :cond_b

    .line 245
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    .line 249
    .end local v16    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 251
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 225
    .end local v11    # "i":I
    .end local v12    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    :catch_4
    move-exception v9

    .line 226
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve device policy "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 229
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v9

    .line 230
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve device policy "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 242
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "i":I
    .restart local v12    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .restart local v16    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 260
    .end local v11    # "i":I
    .end local v12    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v16    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v19

    if-nez v19, :cond_d

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->addAndFinish()V

    goto/16 :goto_0

    .line 265
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 267
    const v19, 0x7f04004e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    .line 269
    const v19, 0x102000a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ListView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mListView:Landroid/widget/ListView;

    .line 271
    new-instance v19, Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;-><init>(Lcom/android/settings/DeviceAdminAdd;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    const v19, 0x7f0e00f4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/vivo/common/MarkupView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mMarkupView:Lcom/vivo/common/MarkupView;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mMarkupView:Lcom/vivo/common/MarkupView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vivo/common/MarkupView;->initCheckLayout()V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mMarkupView:Lcom/vivo/common/MarkupView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vivo/common/MarkupView;->getRightButton()Landroid/widget/Button;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f0b00cb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/DeviceAdminAdd$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mMarkupView:Lcom/vivo/common/MarkupView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/DeviceAdminAdd$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_0

    .line 455
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 436
    :pswitch_0
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 437
    .local v1, "msg":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 440
    const v2, 0x7f0b037e

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    const v2, 0x7f0b037f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 420
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onPause()V

    .line 422
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 423
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 424
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget v4, p0, Lcom/android/settings/DeviceAdminAdd;->mCurSysAppOpMode:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 425
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2d

    iget v4, p0, Lcom/android/settings/DeviceAdminAdd;->mCurToastAppOpMode:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 427
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 407
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onResume()V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    .line 410
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 411
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 412
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/DeviceAdminAdd;->mCurSysAppOpMode:I

    .line 413
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/DeviceAdminAdd;->mCurToastAppOpMode:I

    .line 414
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 415
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 416
    return-void
.end method

.method updateInterface()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 469
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->setAppName(Ljava/lang/CharSequence;)V

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    invoke-virtual {v3}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->getPermItemCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v2

    .line 496
    .local v2, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 497
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 502
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->addPermission(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    .end local v0    # "i":I
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v2    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    const v4, 0x7f0b0572

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->setSummary2(Ljava/lang/CharSequence;)V

    .line 511
    const v3, 0x7f0b0568

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v4, 0x7f0b0569

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iput-boolean v8, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 550
    :goto_2
    return-void

    .line 515
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    invoke-virtual {v3}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->getPermItemCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 516
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v2

    .line 517
    .restart local v2    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 518
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 534
    .restart local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->addPermission(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 540
    .end local v0    # "i":I
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v2    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAdapter:Lcom/android/settings/DeviceAdminAdd$MyAdapter;

    const v4, 0x7f0b0571

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceAdminAdd$MyAdapter;->setSummary2(Ljava/lang/CharSequence;)V

    .line 542
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v3, :cond_3

    .line 543
    const v3, 0x7f0b0573

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 547
    :goto_4
    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v4, 0x7f0b056f

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iput-boolean v9, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    goto :goto_2

    .line 545
    :cond_3
    const v3, 0x7f0b056e

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 479
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
