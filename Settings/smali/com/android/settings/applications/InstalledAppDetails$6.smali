.class Lcom/android/settings/applications/InstalledAppDetails$6;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 2541
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2543
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2600(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    .line 2544
    .local v0, "item":Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMoveToClick which:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " moveTo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget v3, v0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->value:I

    invoke-static {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->access$2702(Lcom/android/settings/applications/InstalledAppDetails;I)I

    .line 2548
    iget v2, v0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->value:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2550
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v2, v2, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v3, v3, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v3}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2551
    .local v1, "status":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2552
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v8, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V

    .line 2591
    .end local v1    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 2553
    .restart local v1    # "status":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2554
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v7, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V

    goto :goto_0

    .line 2555
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v6}, Lcom/android/settings/applications/InstalledAppDetails;->access$1100(Lcom/android/settings/applications/InstalledAppDetails;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2556
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const/16 v3, 0xa

    invoke-static {v2, v3, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V

    goto :goto_0

    .line 2558
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v6}, Lcom/android/settings/applications/InstalledAppDetails;->access$2902(Lcom/android/settings/applications/InstalledAppDetails;Z)Z

    .line 2559
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2500(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 2560
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->access$3000(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2700(Lcom/android/settings/applications/InstalledAppDetails;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto :goto_0

    .line 2564
    .end local v1    # "status":Ljava/lang/String;
    :cond_3
    iget v2, v0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->value:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 2566
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v2, v2, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v3, v3, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v3}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2567
    .restart local v1    # "status":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2568
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v8, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V

    goto :goto_0

    .line 2569
    :cond_4
    if-eqz v1, :cond_5

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2570
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v7, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V

    goto :goto_0

    .line 2571
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$1100(Lcom/android/settings/applications/InstalledAppDetails;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2572
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const/16 v3, 0xe

    invoke-static {v2, v3, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V

    goto/16 :goto_0

    .line 2574
    :cond_6
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v6}, Lcom/android/settings/applications/InstalledAppDetails;->access$2902(Lcom/android/settings/applications/InstalledAppDetails;Z)Z

    .line 2575
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2500(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 2576
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->access$3000(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2700(Lcom/android/settings/applications/InstalledAppDetails;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .line 2582
    .end local v1    # "status":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-boolean v2, v2, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    if-nez v2, :cond_8

    .line 2583
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const/16 v3, 0xb

    invoke-static {v2, v3, v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V

    goto/16 :goto_0

    .line 2585
    :cond_8
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2, v6}, Lcom/android/settings/applications/InstalledAppDetails;->access$2902(Lcom/android/settings/applications/InstalledAppDetails;Z)Z

    .line 2586
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2500(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 2587
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->access$3000(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$6;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$2700(Lcom/android/settings/applications/InstalledAppDetails;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method
