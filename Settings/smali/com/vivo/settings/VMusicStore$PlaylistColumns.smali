.class public Lcom/vivo/settings/VMusicStore$PlaylistColumns;
.super Ljava/lang/Object;
.source "VMusicStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VMusicStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistColumns"
.end annotation


# static fields
.field public static final PLAYLIST_CREATED_TIME:Ljava/lang/String; = "date_added"

.field public static final PLAYLIST_DATA:Ljava/lang/String; = "_data"

.field public static final PLAYLIST_DEFAULT_ORDER:Ljava/lang/String; = "play_order"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "_id"

.field public static final PLAYLIST_NAME:Ljava/lang/String; = "name"

.field public static final PLAYLIST_TITLEKEY:Ljava/lang/String; = "title_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
