.class Lcom/android/settings/TetherSettings$8;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/settings/TetherSettings$8;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings/TetherSettings$8;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$2802(Lcom/android/settings/TetherSettings;Z)Z

    .line 777
    const-string v0, "TetherSettings"

    const-string v1, "mRestoreUsbTether run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/settings/TetherSettings$8;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)V

    .line 779
    return-void
.end method
