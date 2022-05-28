.class public Lcom/android/systemui/vivo/common/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static CURRENT_THEME_ID:Ljava/lang/String; = null

.field private static CURRENT_THEME_OPEN_STYLE:Ljava/lang/String; = null

.field private static FIRST_READ_THEME_XML:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field private static mCurrentThemeId:I = 0x0

.field private static mCurrentThemeOpenStyle:Z = false

.field private static mFirstReadThemeInfo:Z = false

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/ThemeUtils; = null

.field private static final themeFilePath:Ljava/lang/String; = "/data/bbkcore/theme/description.xml"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mProductName:Ljava/lang/String;

.field private mShare:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v0, "current_theme_id"

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->CURRENT_THEME_ID:Ljava/lang/String;

    .line 21
    const-string v0, "current_theme_open_style"

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->CURRENT_THEME_OPEN_STYLE:Ljava/lang/String;

    .line 22
    const-string v0, "fist_read_theme_xml"

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->FIRST_READ_THEME_XML:Ljava/lang/String;

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeId:I

    .line 24
    sput-boolean v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeOpenStyle:Z

    .line 25
    sput-boolean v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mFirstReadThemeInfo:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ThemeUtils;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mProductName:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mShare:Landroid/content/SharedPreferences;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mShare:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mShare:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->FIRST_READ_THEME_XML:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mFirstReadThemeInfo:Z

    .line 46
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mShare:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->CURRENT_THEME_ID:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeId:I

    .line 47
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mShare:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->CURRENT_THEME_OPEN_STYLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeOpenStyle:Z

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ThemeUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ThemeUtils;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ThemeUtils;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ThemeUtils;

    return-object v0
.end method

.method private readThemeInfo()V
    .locals 10

    .prologue
    .line 51
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/bbkcore/theme/description.xml"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v5, "themeFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 53
    const-string v7, "ThemeUtils"

    const-string v8, "theme xml not exists :/data/bbkcore/theme/description.xml"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v2, "inS":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 59
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 60
    .local v3, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v4, Lcom/android/systemui/vivo/common/utils/XmlFileReadHandler;

    invoke-direct {v4}, Lcom/android/systemui/vivo/common/utils/XmlFileReadHandler;-><init>()V

    .line 61
    .local v4, "s":Lcom/android/systemui/vivo/common/utils/XmlFileReadHandler;
    invoke-virtual {v3, v2, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 62
    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/utils/XmlFileReadHandler;->getThemeInfo()Ljava/util/HashMap;

    move-result-object v6

    .line 63
    .local v6, "themeInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeId:I

    .line 64
    const-string v7, "open"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeOpenStyle:Z

    .line 65
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mFirstReadThemeInfo:Z

    .line 66
    iget-object v7, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v8, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->CURRENT_THEME_ID:Ljava/lang/String;

    sget v9, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeId:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v7, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v8, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->CURRENT_THEME_OPEN_STYLE:Ljava/lang/String;

    sget-boolean v9, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeOpenStyle:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object v7, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v8, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->FIRST_READ_THEME_XML:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v7, p0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "inS":Ljava/io/InputStream;
    .end local v3    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "s":Lcom/android/systemui/vivo/common/utils/XmlFileReadHandler;
    .end local v6    # "themeInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    const-string v7, "ThemeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ThemeId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Open theme style = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeOpenStyle:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ThemeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readThemeInfo exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public isDefaultThemeStyle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 84
    sget-boolean v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mFirstReadThemeInfo:Z

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->readThemeInfo()V

    .line 87
    :cond_0
    sget-boolean v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeOpenStyle:Z

    if-eqz v1, :cond_2

    .line 91
    :cond_1
    :goto_0
    return v0

    .line 89
    :cond_2
    sget v1, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->isSupportOpeningTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpeningThemeStyle()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mCurrentThemeOpenStyle:Z

    return v0
.end method

.method public isSupportOpeningTheme()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public updateThemeInfo(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 78
    if-nez p1, :cond_0

    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->mFirstReadThemeInfo:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/ThemeUtils;->readThemeInfo()V

    .line 81
    :cond_1
    return-void
.end method
