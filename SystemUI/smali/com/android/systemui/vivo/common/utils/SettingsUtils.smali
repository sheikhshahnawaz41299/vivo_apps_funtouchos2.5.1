.class public final Lcom/android/systemui/vivo/common/utils/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/utils/SettingsUtils$Secure;,
        Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;,
        Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtils"

.field private static final sObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->sObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->sObject:Ljava/lang/Object;

    return-object v0
.end method
