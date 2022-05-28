.class Lcom/vivo/motionrecognition/SmartWakeSettings$11;
.super Ljava/lang/Object;
.source "SmartWakeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/motionrecognition/SmartWakeSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;


# direct methods
.method constructor <init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings$11;->this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings$11;->this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;

    invoke-static {v0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->access$400(Lcom/vivo/motionrecognition/SmartWakeSettings;)Landroid/preference/VivoCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 401
    return-void
.end method
