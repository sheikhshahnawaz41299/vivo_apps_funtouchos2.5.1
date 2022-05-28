.class Lcom/android/settings/deviceinfo/UsbSettings$14;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;


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
    .line 904
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$14;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$14;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2300(Lcom/android/settings/deviceinfo/UsbSettings;)V

    .line 908
    return-void
.end method
