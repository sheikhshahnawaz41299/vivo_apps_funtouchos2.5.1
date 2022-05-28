.class public Lcom/android/settings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final APP_OP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field static final TAG:Ljava/lang/String; = "AppOpsState"


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v2, 0x7

    const/16 v3, 0x8

    .line 99
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 116
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    new-array v2, v3, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 135
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    new-array v2, v4, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 156
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xd

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 186
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    new-array v2, v3, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 205
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 419
    new-instance v0, Lcom/android/settings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 116
    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 135
    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 156
    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 186
    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 61
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .param p2, "pkgOps"    # Landroid/app/AppOpsManager$PackageOps;
    .param p3, "appEntry"    # Lcom/android/settings/applications/AppOpsState$AppEntry;
    .param p4, "opEntry"    # Landroid/app/AppOpsManager$OpEntry;
    .param p5, "allowMerge"    # Z
    .param p6, "switchOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 442
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 443
    .local v2, "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    .line 444
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 445
    .local v3, "lastExe":Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 446
    .local v1, "entryExe":Z
    :goto_1
    if-ne v3, v1, :cond_2

    .line 449
    invoke-virtual {v2, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 463
    .end local v1    # "entryExe":Z
    .end local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :goto_2
    return-void

    .line 444
    .restart local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 445
    .restart local v3    # "lastExe":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 454
    .end local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 455
    .local v0, "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 459
    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local v0    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V

    .line 462
    .restart local v0    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 472
    .local v0, "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v0, :cond_1

    .line 473
    if-nez p4, :cond_0

    .line 475
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 483
    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .end local v0    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 484
    .restart local v0    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 485
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v0

    .line 487
    :goto_0
    return-object v2

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2
    .param p1, "tpl"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 31
    .param p1, "tpl"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 493
    .local v18, "context":Landroid/content/Context;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v15, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v27, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v26, "permOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v3, 0x3c

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 499
    .local v24, "opToOrder":[I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_1

    .line 500
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v3, v3, v21

    if-eqz v3, :cond_0

    .line 501
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v21

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v25

    .line 502
    .local v25, "perm":Ljava/lang/String;
    if-eqz v25, :cond_0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 503
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v3, v3, v21

    aput v21, v24, v3

    .line 499
    .end local v25    # "perm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 511
    :cond_1
    if-eqz p3, :cond_3

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v8}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v30

    .line 517
    .local v30, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    if-eqz v30, :cond_7

    .line 518
    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_7

    .line 519
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 520
    .local v5, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3, v8}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v6

    .line 521
    .local v6, "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v6, :cond_4

    .line 518
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 514
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v3, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v30

    .restart local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 524
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .restart local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    :cond_4
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_3
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    .line 525
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 526
    .local v7, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    if-nez p3, :cond_5

    const/4 v8, 0x1

    :goto_4
    if-nez p3, :cond_6

    const/4 v9, 0x0

    :goto_5
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 524
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 526
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v24, v3

    goto :goto_5

    .line 533
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v22    # "j":I
    :cond_7
    if-eqz p3, :cond_a

    .line 534
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v17, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v29

    .line 537
    .local v29, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    .end local v29    # "pi":Landroid/content/pm/PackageInfo;
    :goto_6
    const/16 v21, 0x0

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_13

    .line 546
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageInfo;

    .line 547
    .local v16, "appInfo":Landroid/content/pm/PackageInfo;
    if-nez p3, :cond_8

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 549
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x1000

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 555
    :cond_8
    :goto_8
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3, v8}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v6

    .line 557
    .restart local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v6, :cond_b

    .line 545
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 541
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_a
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 542
    .local v28, "permsArray":[Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    .restart local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_6

    .line 550
    .end local v28    # "permsArray":[Ljava/lang/String;
    .restart local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v20

    .line 552
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    check-cast v16, Landroid/content/pm/PackageInfo;

    .restart local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    goto :goto_8

    .line 560
    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    :cond_b
    const/16 v19, 0x0

    .line 561
    .local v19, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v5, 0x0

    .line 562
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 563
    const/16 v22, 0x0

    .restart local v22    # "j":I
    :goto_9
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_9

    .line 564
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_d

    .line 565
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v22

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_d

    .line 563
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 574
    :cond_d
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_a
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_c

    .line 575
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v22

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 574
    :cond_e
    :goto_b
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 580
    :cond_f
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/settings/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 583
    if-nez v19, :cond_10

    .line 584
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .restart local v19    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    new-instance v5, Landroid/app/AppOpsManager$PackageOps;

    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v19

    invoke-direct {v5, v3, v8, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 589
    .restart local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    :cond_10
    new-instance v7, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    .line 591
    .restart local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    if-nez p3, :cond_11

    const/4 v8, 0x1

    :goto_c
    if-nez p3, :cond_12

    const/4 v9, 0x0

    :goto_d
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_b

    :cond_11
    const/4 v8, 0x0

    goto :goto_c

    :cond_12
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    aget v9, v24, v3

    goto :goto_d

    .line 600
    .end local v5    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v7    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v16    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v22    # "j":I
    .end local v23    # "k":I
    :cond_13
    sget-object v3, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 603
    return-object v4

    .line 538
    :catch_1
    move-exception v3

    goto/16 :goto_6
.end method
