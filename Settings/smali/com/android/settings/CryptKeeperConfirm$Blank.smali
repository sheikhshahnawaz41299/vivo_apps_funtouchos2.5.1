.class public Lcom/android/settings/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Blank"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeperConfirm$Blank;->setContentView(I)V

    .line 55
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm$Blank;->finish()V

    .line 59
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 60
    .local v0, "sbm":Landroid/app/StatusBarManager;
    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/CryptKeeperConfirm$Blank$1;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/settings/CryptKeeperConfirm$Blank;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
