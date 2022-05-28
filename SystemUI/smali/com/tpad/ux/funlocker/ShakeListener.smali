.class public Lcom/tpad/ux/funlocker/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;
    }
.end annotation


# instance fields
.field private average:I

.field private len:I

.field private mContext:Landroid/content/Context;

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mListener:Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mrange:I

.field private num:[I

.field private range:I

.field private s_count:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x5

    iput v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->range:I

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mrange:I

    .line 21
    iget v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->range:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->num:[I

    .line 28
    iput-object p1, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 30
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastZ:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 73
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-object v1, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    invoke-virtual {p0}, Lcom/tpad/ux/funlocker/ShakeListener;->setShakeInit()V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 76
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    float-to-int v2, v3

    .line 77
    .local v2, "x":I
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iput v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastX:F

    .line 78
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    iput v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastY:F

    .line 79
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v3, v5

    iput v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastZ:F

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "sum":I
    iget v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->s_count:I

    iget v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->range:I

    if-ge v3, v5, :cond_3

    .line 82
    iget-object v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->num:[I

    iget v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->s_count:I

    aput v2, v3, v5

    .line 83
    iget v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->s_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->s_count:I

    .line 87
    :goto_0
    iget v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->len:I

    iget v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->range:I

    if-ge v3, v5, :cond_0

    .line 88
    iget v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->len:I

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->num:[I

    array-length v6, v5

    move v3, v4

    :goto_1
    if-lt v3, v6, :cond_4

    .line 93
    iget v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->len:I

    div-int v3, v1, v3

    iput v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->average:I

    .line 94
    iget v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->average:I

    sub-int v3, v2, v3

    iget v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mrange:I

    if-gt v3, v5, :cond_1

    iget v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->average:I

    sub-int/2addr v3, v2

    iget v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mrange:I

    if-le v3, v5, :cond_5

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mListener:Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mListener:Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;

    iget v4, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastY:F

    float-to-int v5, v5

    invoke-interface {v3, v4, v5, v7}, Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;->onShake(III)V

    .line 100
    :cond_2
    :goto_2
    return-void

    .line 85
    :cond_3
    iput v4, p0, Lcom/tpad/ux/funlocker/ShakeListener;->s_count:I

    goto :goto_0

    .line 90
    :cond_4
    aget v0, v5, v3

    .line 91
    .local v0, "n":I
    add-int/2addr v1, v0

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "n":I
    :cond_5
    iget-object v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mListener:Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;

    if-eqz v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mListener:Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;

    iget v5, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastY:F

    float-to-int v6, v6

    invoke-interface {v3, v5, v6, v4}, Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;->onShake(III)V

    goto :goto_2
.end method

.method public setOnShakeListener(Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mListener:Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;

    .line 52
    return-void
.end method

.method public setShakeInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastX:F

    .line 46
    iput v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastY:F

    .line 47
    iput v0, p0, Lcom/tpad/ux/funlocker/ShakeListener;->mLastZ:F

    .line 48
    return-void
.end method
