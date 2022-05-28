.class public interface abstract Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
.super Ljava/lang/Object;
.source "UpSlideUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallBack"
.end annotation


# static fields
.field public static final TYPE_PACKAGE_ADDED:I = 0x4

.field public static final TYPE_PACKAGE_DATA_CLEARED:I = 0x3

.field public static final TYPE_PACKAGE_REMOVED:I = 0x2

.field public static final TYPE_PACKAGE_RESTARTED:I = 0x1

.field public static final TYPE_PACKAGE_UNAVAILABLE:I


# virtual methods
.method public abstract onDateChanged()V
.end method

.method public abstract onFontChanged()V
.end method

.method public abstract onFontSizeChanged()V
.end method

.method public abstract onLocaleChanged()V
.end method

.method public abstract onPackageChanged(ILandroid/content/Intent;)V
.end method

.method public abstract onThemeChanged()V
.end method

.method public abstract onTimeChanged()V
.end method

.method public abstract onTimeTick()V
.end method

.method public abstract onTimeZoneChanged()V
.end method
