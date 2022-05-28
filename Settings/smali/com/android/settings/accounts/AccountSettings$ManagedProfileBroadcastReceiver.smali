.class Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private listeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/accounts/AccountSettings;
    .param p2, "x1"    # Lcom/android/settings/accounts/AccountSettings$1;

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    .line 922
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 924
    :cond_0
    const-string v7, "AccountSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received broadcast: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AccountSettings;->access$700(Lcom/android/settings/accounts/AccountSettings;)V

    .line 927
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AccountSettings;->access$800(Lcom/android/settings/accounts/AccountSettings;)V

    .line 929
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v7}, Lcom/android/settings/accounts/AccountSettings;->updateUi()V

    .line 930
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AccountSettings;->access$900(Lcom/android/settings/accounts/AccountSettings;)V

    .line 933
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v7}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 934
    const-string v7, "AccountSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot handle received broadcast: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_1
    return-void

    .line 935
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.sync"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 936
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AccountSettings;->access$1000(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 937
    .local v1, "count":I
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 938
    .local v2, "currentProfile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    .line 939
    .local v0, "check":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 940
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AccountSettings;->access$1000(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 941
    .local v6, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iget-object v7, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 942
    iget-object v7, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 943
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7, v6}, Lcom/android/settings/accounts/AccountSettings;->access$1100(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 939
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    :cond_4
    if-le v1, v9, :cond_3

    .line 945
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7}, Lcom/android/settings/accounts/AccountSettings;->access$1000(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v7, v7, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 946
    .local v5, "managedProfile":Landroid/os/UserHandle;
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v4

    .line 947
    .local v4, "managedCheck":Z
    iget-object v7, v6, Lcom/android/settings/accounts/AccountSettings$ProfileData;->syncProfilePreference:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v7, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 948
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v7, v6}, Lcom/android/settings/accounts/AccountSettings;->access$1100(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    goto :goto_1
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 955
    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-nez v1, :cond_0

    .line 956
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 957
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 958
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 959
    const-string v1, "android.intent.action.sync"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 961
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 963
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 970
    :cond_0
    return-void
.end method
