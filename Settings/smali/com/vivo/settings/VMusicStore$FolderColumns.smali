.class public Lcom/vivo/settings/VMusicStore$FolderColumns;
.super Ljava/lang/Object;
.source "VMusicStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VMusicStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderColumns"
.end annotation


# static fields
.field public static final FOLDER_ID:Ljava/lang/String; = "_id"

.field public static final FOLDER_LOCATION:Ljava/lang/String; = "audio_bucket._data"

.field public static final FOLDER_NAME:Ljava/lang/String; = "audio_meta.bucket_display_name"

.field public static final FOLDER_TITLE_KEY:Ljava/lang/String; = "audio_bucket.bucket_key"

.field public static final FOLDER_TRACKS_NUM:Ljava/lang/String; = "numsongs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
