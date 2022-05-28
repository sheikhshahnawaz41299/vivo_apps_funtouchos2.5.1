.class Lcom/android/systemui/usb/VivoStorageNotification$2;
.super Landroid/content/BroadcastReceiver;
.source "VivoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/VivoStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/VivoStorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/VivoStorageNotification;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 94
    const-string v4, "com.android.systemui.action.UNMOUNT_OTG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v4}, Lcom/android/systemui/usb/VivoStorageNotification;->access$400(Lcom/android/systemui/usb/VivoStorageNotification;)I

    move-result v1

    .line 96
    .local v1, "otgCount":I
    if-ne v1, v6, :cond_3

    .line 97
    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v4}, Lcom/android/systemui/usb/VivoStorageNotification;->access$500(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 99
    aget-object v4, v2, v0

    const-string v5, "otg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v4}, Lcom/android/systemui/usb/VivoStorageNotification;->access$500(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Lcom/android/systemui/usb/VivoStorageNotification;->access$600(Lcom/android/systemui/usb/VivoStorageNotification;Ljava/lang/String;)V

    .line 110
    .end local v0    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    iget-object v5, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v5}, Lcom/android/systemui/usb/VivoStorageNotification;->access$800(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/app/StatusBarManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/usb/VivoStorageNotification;->access$702(Lcom/android/systemui/usb/VivoStorageNotification;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 111
    iget-object v4, p0, Lcom/android/systemui/usb/VivoStorageNotification$2;->this$0:Lcom/android/systemui/usb/VivoStorageNotification;

    invoke-static {v4}, Lcom/android/systemui/usb/VivoStorageNotification;->access$700(Lcom/android/systemui/usb/VivoStorageNotification;)Landroid/app/StatusBarManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 113
    .end local v1    # "otgCount":I
    :cond_1
    return-void

    .line 98
    .restart local v0    # "i":I
    .restart local v1    # "otgCount":I
    .restart local v2    # "paths":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :cond_3
    if-le v1, v6, :cond_0

    .line 106
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "storageIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
