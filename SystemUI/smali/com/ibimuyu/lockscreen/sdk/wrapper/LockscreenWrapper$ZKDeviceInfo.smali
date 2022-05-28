.class public Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;
.super Ljava/lang/Object;
.source "LockscreenWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZKDeviceInfo"
.end annotation


# instance fields
.field public mDeviceId:Ljava/lang/String;

.field public mNetworkOptName:Ljava/lang/String;

.field public mNetworkType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;->mDeviceId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;->mNetworkOptName:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;->mNetworkType:I

    .line 55
    return-void
.end method
