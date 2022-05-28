.class Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FactoryAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/FactoryAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/vivo/settings/applications/FactoryAppManager;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;Landroid/content/Context;Lcom/vivo/settings/applications/FactoryAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/vivo/settings/applications/FactoryAppManager$1;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "actionStr":Ljava/lang/String;
    const-string v3, "FactoryAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actionStr is :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 125
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/vivo/settings/applications/FactoryAppManager;->access$000(Lcom/vivo/settings/applications/FactoryAppManager;Ljava/lang/String;Z)V

    .line 132
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 129
    .restart local v1    # "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2    # "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/vivo/settings/applications/FactoryAppManager;->access$000(Lcom/vivo/settings/applications/FactoryAppManager;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method registerReceiver()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method
