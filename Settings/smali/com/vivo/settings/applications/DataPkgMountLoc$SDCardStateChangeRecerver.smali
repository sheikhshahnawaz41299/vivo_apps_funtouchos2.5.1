.class Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;
.super Landroid/content/BroadcastReceiver;
.source "DataPkgMountLoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/DataPkgMountLoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDCardStateChangeRecerver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/applications/DataPkgMountLoc;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/applications/DataPkgMountLoc;Lcom/vivo/settings/applications/DataPkgMountLoc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/applications/DataPkgMountLoc;
    .param p2, "x1"    # Lcom/vivo/settings/applications/DataPkgMountLoc$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;-><init>(Lcom/vivo/settings/applications/DataPkgMountLoc;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "actionStr":Ljava/lang/String;
    const-string v2, "DataPkgMountLoc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive SDCardRemoveRecerver actionStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$000(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v3}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$000(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "status":Ljava/lang/String;
    const-string v2, "DataPkgMountLoc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive SDCardRemoveRecerver external storage state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v1, "mounted"

    .line 59
    :cond_0
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$100(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$200(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$100(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    .line 63
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$200(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    .line 73
    .end local v1    # "status":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$100(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$200(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    :cond_4
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$100(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    .line 70
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-static {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc;->access$200(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method registerReceiver()V
    .locals 3

    .prologue
    .line 33
    const-string v1, "DataPkgMountLoc"

    const-string v2, "registerReceiver SDCardRemoveRecerver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->this$0:Lcom/vivo/settings/applications/DataPkgMountLoc;

    invoke-virtual {v1}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    return-void
.end method
