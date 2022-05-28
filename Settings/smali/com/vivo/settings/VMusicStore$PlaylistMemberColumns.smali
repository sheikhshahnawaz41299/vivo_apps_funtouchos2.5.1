.class public Lcom/vivo/settings/VMusicStore$PlaylistMemberColumns;
.super Ljava/lang/Object;
.source "VMusicStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VMusicStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistMemberColumns"
.end annotation


# static fields
.field public static final PLAYLIST_MEMBER_ID:Ljava/lang/String; = "audio_id"

.field public static final PLAYLIST_MEMBER_ORDER:Ljava/lang/String; = "play_order"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
