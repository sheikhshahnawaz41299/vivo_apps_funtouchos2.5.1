.class public Lcom/vivo/settings/NightModeUtils;
.super Ljava/lang/Object;
.source "NightModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/NightModeUtils$NightModeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NightModeUtils"


# instance fields
.field private mNightModeListener:Lcom/vivo/settings/NightModeUtils$NightModeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/NightModeUtils;->mNightModeListener:Lcom/vivo/settings/NightModeUtils$NightModeListener;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/NightModeUtils;)Lcom/vivo/settings/NightModeUtils$NightModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/NightModeUtils;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/vivo/settings/NightModeUtils;->mNightModeListener:Lcom/vivo/settings/NightModeUtils$NightModeListener;

    return-object v0
.end method


# virtual methods
.method public checkNightMode(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {}, Lcom/android/settings/AppFeature;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/vivo/settings/NightModeUtils$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/NightModeUtils$1;-><init>(Lcom/vivo/settings/NightModeUtils;)V

    invoke-static {p1, v0, v1}, Lvivo/common/FtColorManager;->getInstanceWithCallBack(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)I

    .line 22
    return-void
.end method

.method public setNightModeListener(Lcom/vivo/settings/NightModeUtils$NightModeListener;)V
    .locals 0
    .param p1, "nightmodelistener"    # Lcom/vivo/settings/NightModeUtils$NightModeListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vivo/settings/NightModeUtils;->mNightModeListener:Lcom/vivo/settings/NightModeUtils$NightModeListener;

    .line 30
    return-void
.end method
