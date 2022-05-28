.class public Lcom/vivo/settings/VMusicStore;
.super Ljava/lang/Object;
.source "VMusicStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/VMusicStore$FolderColumns;,
        Lcom/vivo/settings/VMusicStore$PlaylistMemberColumns;,
        Lcom/vivo/settings/VMusicStore$PlaylistColumns;,
        Lcom/vivo/settings/VMusicStore$SearchColumns;,
        Lcom/vivo/settings/VMusicStore$ArtistColumns;,
        Lcom/vivo/settings/VMusicStore$AlbumColumns;,
        Lcom/vivo/settings/VMusicStore$CueColumns;,
        Lcom/vivo/settings/VMusicStore$TrackColumns;,
        Lcom/vivo/settings/VMusicStore$PlayCounts;,
        Lcom/vivo/settings/VMusicStore$DownLoadMusicColumns;
    }
.end annotation


# static fields
.field public static final ALBUM_FILTER_URI:Landroid/net/Uri;

.field public static final ALBUM_FILT_PROJECTION:[Ljava/lang/String;

.field public static final ALBUM_OF_ARTSIT_PROJECTION:[Ljava/lang/String;

.field public static final ALBUM_PROJECTION:[Ljava/lang/String;

.field public static final ALBUM_URI:Landroid/net/Uri;

.field public static final ARTIST_FILTER_URI:Landroid/net/Uri;

.field public static final ARTIST_FILT_PROJECTION:[Ljava/lang/String;

.field public static final ARTIST_PROJECTION:[Ljava/lang/String;

.field public static final ARTIST_URI:Landroid/net/Uri;

.field public static final CUE_DETAIL_PROJECTION:[Ljava/lang/String;

.field public static final CUE_PLAYLIST:J = -0x5L

.field public static final CUE_PROJECTION:[Ljava/lang/String;

.field public static final CUE_URI:Landroid/net/Uri;

.field public static DOWNLOAD_TABLE_NAME:Ljava/lang/String; = null

.field public static final FOLDER_ALL_PROJECTION:[Ljava/lang/String;

.field public static final FOLDER_FILTER_URI:Landroid/net/Uri;

.field public static final FOLDER_FILT_PROJECTION:[Ljava/lang/String;

.field public static final FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final FOLDER_URI:Landroid/net/Uri;

.field public static final MUSIC_URI:Landroid/net/Uri;

.field public static final PLAYLIST_FREREC_PROJECTION:[Ljava/lang/String;

.field public static final PLAYLIST_PROJECTION:[Ljava/lang/String;

.field public static final PLAYLIST_TRACKS_PROJECTION:[Ljava/lang/String;

.field public static final PLAYLIST_URI:Landroid/net/Uri;

.field public static final PLAY_COUNTS_URI:Landroid/net/Uri;

.field public static final SERACH_PROJECTION:[Ljava/lang/String;

.field public static final TRACK_OF_FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final TRACK_PROJECTION:[Ljava/lang/String;

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/vivo/settings/VMusicStore;->MUSIC_URI:Landroid/net/Uri;

    .line 18
    sget-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ARTIST_URI:Landroid/net/Uri;

    .line 19
    const-string v0, "content://media/external/audio/artists/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ARTIST_FILTER_URI:Landroid/net/Uri;

    .line 20
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ALBUM_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://media/external/audio/albums/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ALBUM_FILTER_URI:Landroid/net/Uri;

    .line 22
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/vivo/settings/VMusicStore;->PLAYLIST_URI:Landroid/net/Uri;

    .line 23
    sget-object v0, Lcom/vivo/common/provider/MusicStore$PlayCounts;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/vivo/settings/VMusicStore;->PLAY_COUNTS_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "content://media/external/audio/bucket"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/VMusicStore;->FOLDER_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://media/external/audio/bucket/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/VMusicStore;->FOLDER_FILTER_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/VMusicStore;->CUE_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "_online_music_download"

    sput-object v0, Lcom/vivo/settings/VMusicStore;->DOWNLOAD_TABLE_NAME:Ljava/lang/String;

    .line 134
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title_key"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "title_pinyin_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "local_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->TRACK_PROJECTION:[Ljava/lang/String;

    .line 152
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "audio.album_id AS _id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "album_art._data AS album_art"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "count(*) AS numsongs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_pinyin_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "album_local_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ALBUM_FILT_PROJECTION:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "album_art"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "numsongs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 172
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "artist_key"

    aput-object v1, v0, v3

    const-string v1, "audio.artist_id AS _id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "COUNT(DISTINCT album_key) AS number_of_albums"

    aput-object v1, v0, v6

    const-string v1, "COUNT(*) AS number_of_tracks"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "artist_pinyin_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "local_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ARTIST_FILT_PROJECTION:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "artist_key"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "number_of_albums"

    aput-object v1, v0, v6

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ARTIST_PROJECTION:[Ljava/lang/String;

    .line 190
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->SERACH_PROJECTION:[Ljava/lang/String;

    .line 201
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "title_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/settings/VMusicStore;->PLAYLIST_PROJECTION:[Ljava/lang/String;

    .line 206
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_music"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->PLAYLIST_TRACKS_PROJECTION:[Ljava/lang/String;

    .line 221
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v3

    const-string v1, "count(audio_id)"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "date_played"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/settings/VMusicStore;->PLAYLIST_FREREC_PROJECTION:[Ljava/lang/String;

    .line 229
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/settings/VMusicStore;->FOLDER_ALL_PROJECTION:[Ljava/lang/String;

    .line 230
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/settings/VMusicStore;->FOLDER_PROJECTION:[Ljava/lang/String;

    .line 231
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio_bucket.bucket_key"

    aput-object v1, v0, v3

    const-string v1, "audio_bucket.bucket_id as _id"

    aput-object v1, v0, v4

    const-string v1, "audio_bucket._data"

    aput-object v1, v0, v5

    const-string v1, "audio_meta.bucket_display_name"

    aput-object v1, v0, v6

    const-string v1, "COUNT(audio_meta._id) AS numsongs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "audio_bucket.bucket_pinyin_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audio_bucket.local_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->FOLDER_FILT_PROJECTION:[Ljava/lang/String;

    .line 241
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/settings/VMusicStore;->CUE_PROJECTION:[Ljava/lang/String;

    .line 246
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/settings/VMusicStore;->CUE_DETAIL_PROJECTION:[Ljava/lang/String;

    .line 252
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio.album_id AS _id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_art._data AS album_art"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "count(*) AS numsongs"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/settings/VMusicStore;->ALBUM_OF_ARTSIT_PROJECTION:[Ljava/lang/String;

    .line 257
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VMusicStore;->TRACK_OF_FOLDER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method
