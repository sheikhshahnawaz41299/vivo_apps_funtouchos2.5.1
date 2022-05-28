.class public Lcom/vivo/settings/VMusicStore$ArtistColumns;
.super Ljava/lang/Object;
.source "VMusicStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VMusicStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistColumns"
.end annotation


# static fields
.field public static final ARTIST_ALBUM_COUNT:Ljava/lang/String; = "number_of_albums"

.field public static final ARTIST_ID:Ljava/lang/String; = "_id"

.field public static final ARTIST_NAME:Ljava/lang/String; = "artist"

.field public static final ARTIST_TITLE_KEY:Ljava/lang/String; = "artist_key"

.field public static final ARTIST_TRACK_COUNT:Ljava/lang/String; = "number_of_tracks"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
