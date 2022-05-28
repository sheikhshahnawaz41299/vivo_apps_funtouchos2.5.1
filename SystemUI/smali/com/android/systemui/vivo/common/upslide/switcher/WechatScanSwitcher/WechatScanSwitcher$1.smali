.class Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;
.super Ljava/lang/Object;
.source "WechatScanSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)V

    .line 67
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.tencent.mm"

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.tencent.mm.action.BIZSHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "LauncherUI.From.Scaner.Shortcut"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v4

    const-string v5, "WechatScanSwitcher"

    const-string v6, "0"

    const-string v7, "1"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "WechatScanSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start scanner service error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/system/vivo-apps/MicroMsg.apk"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "file":Ljava/io/File;
    const-string v4, "WechatScanSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWechatScanClickListener, file.exists() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x30f0004

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 82
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e0232

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    const v4, 0x7f0e0224

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 85
    const v4, 0x7f0e01e6

    new-instance v5, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;Ljava/io/File;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    const v4, 0x7f0e01e5

    new-instance v5, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    new-instance v4, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$702(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 146
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 147
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
