.class public Lcom/vivo/settings/VMusicStore$PlayCounts;
.super Ljava/lang/Object;
.source "VMusicStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VMusicStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayCounts"
.end annotation


# static fields
.field public static final PLAY_AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final PLAY_DATE:Ljava/lang/String; = "date_played"

.field public static final PLAY_NUM:Ljava/lang/String; = "count(audio_id)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
