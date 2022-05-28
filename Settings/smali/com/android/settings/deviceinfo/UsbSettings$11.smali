.class Lcom/android/settings/deviceinfo/UsbSettings$11;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 712
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$11;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$11;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$11;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1600(Lcom/android/settings/deviceinfo/UsbSettings;Lcom/vivo/settings/preference/RadioPreference;)V

    .line 716
    return-void
.end method
