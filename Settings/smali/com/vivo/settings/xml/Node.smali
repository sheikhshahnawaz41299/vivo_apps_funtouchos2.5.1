.class public Lcom/vivo/settings/xml/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field public static final ATTR_ACTION:Ljava/lang/String; = "action"

.field public static final ATTR_CLASS:Ljava/lang/String; = "className"

.field public static final ATTR_ENABLE:Ljava/lang/String; = "enable"

.field public static final ATTR_EXTRA:Ljava/lang/String; = "extra"

.field public static final ATTR_FILTER:Ljava/lang/String; = "filter"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_IS_CATEGORY:Ljava/lang/String; = "isCategory"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final ATTR_XML_PATH:Ljava/lang/String; = "xmlPath"

.field public static final EXTRA_FRAGMENT:Ljava/lang/String; = "fragment:"

.field public static final EXTRA_PREF_KEY:Ljava/lang/String; = "key:"

.field public static final EXTRA_TILE_ID:Ljava/lang/String; = "headerId:"

.field public static final EXTRA_TILE_ORDER:Ljava/lang/String; = "headerOrder:"

.field public static final FILETER_VISIT_MODE:Ljava/lang/String; = "visit"

.field public static final FILTER_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final FILTER_MANAGER:Ljava/lang/String; = "manager"

.field public static final FILTER_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final FILTER_SIM:Ljava/lang/String; = "sim"

.field public static final FILTER_SIMCARD:Ljava/lang/String; = "simcard"

.field public static final MAX_SUPPORT_LOCALES:I = 0xa

.field public static final TAG_NODE:Ljava/lang/String; = "node"


# instance fields
.field private isStringResourceExecuted:Z

.field private mAction:Ljava/lang/String;

.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mClassName:Ljava/lang/String;

.field private mEnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Ljava/lang/String;

.field private mHeaderId:I

.field private mHeaderOrder:I

.field private mId:I

.field private mIsCategory:Z

.field private mKey:Ljava/lang/String;

.field private mLanguages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrder:I

.field private mPackage:Ljava/lang/String;

.field private mSpecialExtra:Ljava/lang/String;

.field private mStrRes:I

.field private mXmlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 176
    sget v0, Lcom/vivo/settings/xml/XmlReader;->NEXT_ID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/vivo/settings/xml/XmlReader;->NEXT_ID:I

    invoke-direct {p0, v0}, Lcom/vivo/settings/xml/Node;-><init>(I)V

    .line 177
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/xml/Node;->mLanguages:Ljava/util/HashMap;

    .line 108
    iput v2, p0, Lcom/vivo/settings/xml/Node;->mId:I

    .line 112
    iput v2, p0, Lcom/vivo/settings/xml/Node;->mStrRes:I

    .line 117
    iput v2, p0, Lcom/vivo/settings/xml/Node;->mHeaderId:I

    .line 121
    iput v2, p0, Lcom/vivo/settings/xml/Node;->mHeaderOrder:I

    .line 125
    iput-object v1, p0, Lcom/vivo/settings/xml/Node;->mFragment:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/vivo/settings/xml/Node;->mKey:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/vivo/settings/xml/Node;->mAction:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/vivo/settings/xml/Node;->mClassName:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/vivo/settings/xml/Node;->mPackage:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/vivo/settings/xml/Node;->mXmlPath:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/vivo/settings/xml/Node;->mSpecialExtra:Ljava/lang/String;

    .line 150
    iput-boolean v2, p0, Lcom/vivo/settings/xml/Node;->isStringResourceExecuted:Z

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/xml/Node;->mEnables:Ljava/util/ArrayList;

    .line 156
    iput-boolean v2, p0, Lcom/vivo/settings/xml/Node;->mIsCategory:Z

    .line 157
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vivo/settings/xml/Node;->mOrder:I

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/xml/Node;->mChildren:Ljava/util/ArrayList;

    .line 168
    iput p1, p0, Lcom/vivo/settings/xml/Node;->mId:I

    .line 169
    return-void
.end method

.method public static getLocalString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    const-string v0, "null"

    .line 319
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringLocal(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .param p0, "local"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 328
    if-nez p0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v1

    .line 329
    :cond_1
    const-string v2, "-r"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "-r"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "strings":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 336
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSupportLocals()[Ljava/util/Locale;
    .locals 9

    .prologue
    .line 601
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "locales":[Ljava/lang/String;
    array-length v4, v2

    .line 603
    .local v4, "origSize":I
    new-array v5, v4, [Ljava/util/Locale;

    .line 604
    .local v5, "result":[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 605
    aget-object v6, v2, v0

    const/16 v7, 0x5f

    const/16 v8, 0x2d

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 606
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    const-string v6, "und"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 604
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    aget-object v6, v2, v0

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 611
    aget-object v6, v2, v0

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "locales_temp":[Ljava/lang/String;
    new-instance v6, Ljava/util/Locale;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    goto :goto_1

    .line 615
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v3    # "locales_temp":[Ljava/lang/String;
    :cond_2
    return-object v5
.end method


# virtual methods
.method public addChild(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public addChildren(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/xml/Node;

    .line 461
    .local v1, "n":Lcom/vivo/settings/xml/Node;
    invoke-virtual {p0, v1}, Lcom/vivo/settings/xml/Node;->addChild(Lcom/vivo/settings/xml/Node;)V

    goto :goto_0

    .line 463
    .end local v1    # "n":Lcom/vivo/settings/xml/Node;
    :cond_0
    return-void
.end method

.method public addEnable(Ljava/lang/String;)V
    .locals 3
    .param p1, "enable"    # Ljava/lang/String;

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/xml/Node;->mEnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 372
    .end local v0    # "f":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/vivo/settings/xml/Node;->mEnables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs addEnable([Ljava/lang/String;)V
    .locals 4
    .param p1, "filters"    # [Ljava/lang/String;

    .prologue
    .line 386
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 387
    .local v1, "f":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/settings/xml/Node;->addEnable(Ljava/lang/String;)V

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "f":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 360
    .end local v0    # "f":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs addFilter([Ljava/lang/String;)V
    .locals 4
    .param p1, "filters"    # [Ljava/lang/String;

    .prologue
    .line 380
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 381
    .local v1, "f":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/settings/xml/Node;->addFilter(Ljava/lang/String;)V

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "f":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 302
    iget-object v2, p0, Lcom/vivo/settings/xml/Node;->mLanguages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 303
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/vivo/settings/xml/Node;->mLanguages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    .end local v1    # "l":Ljava/util/Locale;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDescriptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mLanguages:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEnableString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mEnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 423
    .local v2, "size":I
    if-gtz v2, :cond_0

    .line 424
    const/4 v3, 0x0

    .line 436
    :goto_0
    return-object v3

    .line 426
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mEnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 430
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mEnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 433
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mEnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mSpecialExtra:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mSpecialExtra:Ljava/lang/String;

    .line 284
    :goto_0
    return-object v3

    .line 262
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v1, "extra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v3, p0, Lcom/vivo/settings/xml/Node;->mHeaderId:I

    if-lez v3, :cond_1

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/settings/xml/Node;->mHeaderId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_1
    iget v3, p0, Lcom/vivo/settings/xml/Node;->mHeaderOrder:I

    if-lez v3, :cond_2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headerOrder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/settings/xml/Node;->mHeaderOrder:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/xml/Node;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mFragment:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fragment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/xml/Node;->mFragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_6

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 279
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 282
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 284
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getFilter()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilterString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 404
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 405
    .local v2, "size":I
    if-gtz v2, :cond_0

    .line 406
    const/4 v3, 0x0

    .line 418
    :goto_0
    return-object v3

    .line 408
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 409
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 415
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v3, p0, Lcom/vivo/settings/xml/Node;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderId()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/vivo/settings/xml/Node;->mHeaderId:I

    return v0
.end method

.method public getHeaderOrder()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/vivo/settings/xml/Node;->mHeaderOrder:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/vivo/settings/xml/Node;->mId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/vivo/settings/xml/Node;->mOrder:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getStrRes()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/vivo/settings/xml/Node;->mStrRes:I

    return v0
.end method

.method public getXmlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mXmlPath:Ljava/lang/String;

    return-object v0
.end method

.method public isCategory()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/vivo/settings/xml/Node;->mIsCategory:Z

    return v0
.end method

.method public isIntentEnabled()Z
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/vivo/settings/xml/Node;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vivo/settings/xml/Node;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vivo/settings/xml/Node;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStringResourceExecuted()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/vivo/settings/xml/Node;->isStringResourceExecuted:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/vivo/settings/xml/Node;->mAction:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/vivo/settings/xml/Node;->mClassName:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setDescription(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vivo/settings/xml/Node;->mLanguages:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/vivo/settings/xml/Node;->mFragment:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setHeaderId(I)V
    .locals 0
    .param p1, "headerId"    # I

    .prologue
    .line 480
    iput p1, p0, Lcom/vivo/settings/xml/Node;->mHeaderId:I

    .line 481
    return-void
.end method

.method public setHeaderOrder(I)V
    .locals 0
    .param p1, "headerOrder"    # I

    .prologue
    .line 568
    iput p1, p0, Lcom/vivo/settings/xml/Node;->mHeaderOrder:I

    .line 569
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/vivo/settings/xml/Node;->mId:I

    .line 210
    return-void
.end method

.method public setIsCategory(Z)V
    .locals 0
    .param p1, "isCategory"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/vivo/settings/xml/Node;->mIsCategory:Z

    .line 582
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/vivo/settings/xml/Node;->mKey:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/vivo/settings/xml/Node;->mOrder:I

    .line 594
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/vivo/settings/xml/Node;->mPackage:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setSpeicalExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/vivo/settings/xml/Node;->mSpecialExtra:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setStrRes(I)V
    .locals 0
    .param p1, "strRes"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/vivo/settings/xml/Node;->mStrRes:I

    .line 193
    return-void
.end method

.method public setStringResourceExecuted(Z)V
    .locals 0
    .param p1, "isStringResourceExecuted"    # Z

    .prologue
    .line 534
    iput-boolean p1, p0, Lcom/vivo/settings/xml/Node;->isStringResourceExecuted:Z

    .line 535
    return-void
.end method

.method public setXmlPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlPath"    # Ljava/lang/String;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/vivo/settings/xml/Node;->mXmlPath:Ljava/lang/String;

    .line 551
    return-void
.end method
