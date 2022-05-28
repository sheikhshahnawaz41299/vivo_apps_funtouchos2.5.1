.class Lcom/android/settings/deviceinfo/UsbSettings$7;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$7;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$7;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$7;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 581
    :cond_0
    return-void
.end method
