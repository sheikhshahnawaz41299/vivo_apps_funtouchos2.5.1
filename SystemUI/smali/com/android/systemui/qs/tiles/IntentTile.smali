.class public Lcom/android/systemui/qs/tiles/IntentTile;
.super Lcom/android/systemui/qs/QSTile;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;,
        Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "intent("


# instance fields
.field private mCurrentUserId:I

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Ljava/lang/String;

.field private mOnLongClick:Landroid/app/PendingIntent;

.field private mOnLongClickUri:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 138
    new-instance v0, Lcom/android/systemui/qs/tiles/IntentTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/IntentTile$1;-><init>(Lcom/android/systemui/qs/tiles/IntentTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/IntentTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/IntentTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/IntentTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 4
    .param p0, "host"    # Lcom/android/systemui/qs/QSTile$Host;
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile$Host;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    const-string v1, "intent("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad intent tile spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    const-string v1, "intent("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty intent tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_2
    new-instance v1, Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/tiles/IntentTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V

    return-object v1
.end method

.method private sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/app/PendingIntent;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p2, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    if-eqz p3, :cond_0

    .line 98
    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 3

    .prologue
    .line 85
    const-string v0, "click"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/IntentTile;->sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 90
    const-string v0, "long-click"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClick:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClickUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/IntentTile;->sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 108
    instance-of v5, p2, Landroid/content/Intent;

    if-nez v5, :cond_0

    .line 136
    :goto_0
    return-void

    :cond_0
    move-object v3, p2

    .line 109
    check-cast v3, Landroid/content/Intent;

    .line 110
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "visible"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 111
    const-string v5, "contentDescription"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    .line 112
    const-string v5, "label"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 113
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 114
    const-string v5, "iconBitmap"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    .local v0, "iconBitmap":[B
    if-eqz v0, :cond_2

    .line 117
    :try_start_0
    new-instance v5, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;-><init>([B)V

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    :goto_1
    const-string v5, "onClick"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    .line 133
    const-string v5, "onClickUri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    .line 134
    const-string v5, "onLongClick"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClick:Landroid/app/PendingIntent;

    .line 135
    const-string v5, "onLongClickUri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClickUri:Ljava/lang/String;

    goto :goto_0

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading icon bitmap, length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 122
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v5, "iconId"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "iconId":I
    if-eqz v1, :cond_1

    .line 124
    const-string v5, "iconPackage"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "iconPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 126
    new-instance v5, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;-><init>(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/String;I)V

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 128
    :cond_3
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1
.end method

.method protected handleUserSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    .line 80
    iput p1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    .line 81
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 70
    return-void
.end method
