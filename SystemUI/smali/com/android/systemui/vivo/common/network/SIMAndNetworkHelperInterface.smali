.class public interface abstract Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelperInterface;
.super Ljava/lang/Object;
.source "SIMAndNetworkHelperInterface.java"


# virtual methods
.method public abstract getDefaultDataPhoneId()I
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getSIMIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSIMName(I)Ljava/lang/String;
.end method

.method public abstract getSIMNumber(I)Ljava/lang/String;
.end method

.method public abstract isRadioOn(I)Z
.end method

.method public abstract isSIMInserted(I)Z
.end method

.method public abstract isSupportDualSIM()Z
.end method

.method public abstract setDefaultDataPhoneId(I)V
.end method

.method public abstract setRadioOnValue()V
.end method

.method public abstract setSIMInsertState()V
.end method
