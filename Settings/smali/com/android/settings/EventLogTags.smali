.class public Lcom/android/settings/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final EXP_DET_DEVICE_ADMIN_ACTIVATED_BY_USER:I = 0x16059

.field public static final EXP_DET_DEVICE_ADMIN_DECLINED_BY_USER:I = 0x1605a

.field public static final LOCK_SCREEN_TYPE:I = 0x16058


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeExpDetDeviceAdminActivatedByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 27
    const v0, 0x16059

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 28
    return-void
.end method

.method public static writeExpDetDeviceAdminDeclinedByUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 31
    const v0, 0x1605a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 32
    return-void
.end method

.method public static writeLockScreenType(Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    const v0, 0x16058

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 24
    return-void
.end method
