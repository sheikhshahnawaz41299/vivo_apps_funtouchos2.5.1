.class public abstract Lcom/vivo/settings/xml/SettingsResouce;
.super Ljava/lang/Object;
.source "SettingsResouce.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FILTER_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final FILTER_MANAGER:Ljava/lang/String; = "manager"

.field public static final FILTER_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final FILTER_SIM:Ljava/lang/String; = "sim"

.field public static final FILTER_SIMCARD:Ljava/lang/String; = "simcard"

.field public static final FILTER_VISIT_MODE:Ljava/lang/String; = "visit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 30
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    return-void
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 27
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    return-void
.end method

.method public generalRes(Ljava/lang/Object;I)I
    .locals 0
    .param p2, "def"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public getChildResouces(Ljava/lang/Object;)Lcom/vivo/settings/xml/SettingsResouce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSearchNodes(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation
.end method

.method public getSpecialFilter(Landroid/content/Context;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TK;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getXmlResouce()I
.end method

.method public isCategory(Ljava/lang/Object;Z)Z
    .locals 0
    .param p2, "def"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return p2
.end method

.method public isIntentEnable(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    return v0
.end method
