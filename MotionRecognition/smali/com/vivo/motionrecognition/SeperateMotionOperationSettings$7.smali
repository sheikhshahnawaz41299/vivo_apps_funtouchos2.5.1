.class Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$7;
.super Ljava/lang/Object;
.source "SeperateMotionOperationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;


# direct methods
.method constructor <init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$7;->this$0:Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$7;->this$0:Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    invoke-static {v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->access$200(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)Landroid/preference/VivoCheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 253
    return-void
.end method
