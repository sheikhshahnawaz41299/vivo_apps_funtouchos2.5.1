.class final Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/NotificationSettings;
    .param p2, "x1"    # Lcom/android/settings/notification/NotificationSettings$1;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->access$300(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$H;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->access$300(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 249
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 255
    :cond_0
    return-void
.end method
