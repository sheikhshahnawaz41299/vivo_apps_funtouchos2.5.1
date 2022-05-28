.class Lcom/vivo/motionrecognition/SmartWakeupSettings$4;
.super Ljava/lang/Object;
.source "SmartWakeupSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/motionrecognition/SmartWakeupSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/motionrecognition/SmartWakeupSettings;


# direct methods
.method constructor <init>(Lcom/vivo/motionrecognition/SmartWakeupSettings;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings$4;->this$0:Lcom/vivo/motionrecognition/SmartWakeupSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeupSettings$4;->this$0:Lcom/vivo/motionrecognition/SmartWakeupSettings;

    invoke-static {v0}, Lcom/vivo/motionrecognition/SmartWakeupSettings;->access$100(Lcom/vivo/motionrecognition/SmartWakeupSettings;)Landroid/preference/VivoCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 244
    return-void
.end method
