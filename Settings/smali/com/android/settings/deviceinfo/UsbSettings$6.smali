.class Lcom/android/settings/deviceinfo/UsbSettings$6;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;

.field final synthetic val$mountTask:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->val$mountTask:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->val$mountTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 571
    return-void
.end method
