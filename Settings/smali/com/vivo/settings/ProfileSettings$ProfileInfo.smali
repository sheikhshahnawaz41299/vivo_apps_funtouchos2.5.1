.class public Lcom/vivo/settings/ProfileSettings$ProfileInfo;
.super Ljava/lang/Object;
.source "ProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileInfo"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mVolume:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mVolume:I

    .line 76
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mVolume:I

    .line 79
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mName:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mVolume:I

    .line 81
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mVolume:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "mVolume"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mVolume:I

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method
