.class public Lcom/vivo/settings/applications/HideApp$HideAppsList;
.super Ljava/lang/Object;
.source "HideApp.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/HideApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HideAppsList"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FORBIDNET:Ljava/lang/String; = "forbidnet"

.field public static final HIDED:Ljava/lang/String; = "hided"

.field public static final PKGNAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE:Ljava/lang/String; = "hideapps_list"

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "content://com.android.settings.applications.hideappprovider/hideapps_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/applications/HideApp$HideAppsList;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
