.class public Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
.super Ljava/lang/Object;
.source "LockSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;,
        Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;
    }
.end annotation


# static fields
.field private static final AUTHOR_INFO:Ljava/lang/String; = "authorinfo"

.field public static final BACKGROUND:Ljava/lang/String; = "background"

.field private static final IMAGE_LIST:Ljava/lang/String; = "imagelist"

.field private static final SCREEN_INFO:Ljava/lang/String; = "screeninfo"

.field private static final SKIN:Ljava/lang/String; = "lockscreen"

.field public static final SKINDATA_GUID_PATH:Ljava/lang/String; = "/data/bbkcore/unlock"

.field public static final SKINDATA_PATH:Ljava/lang/String; = "/data/bbkcore/unlock/lock_screen_config.xml"

.field private static final TAG:Ljava/lang/String; = "LockSkin"

.field public static final TIME_0:Ljava/lang/String; = "time_0"

.field public static final TIME_1:Ljava/lang/String; = "time_1"

.field public static final TIME_2:Ljava/lang/String; = "time_2"

.field public static final TIME_3:Ljava/lang/String; = "time_3"

.field public static final TIME_4:Ljava/lang/String; = "time_4"

.field public static final TIME_5:Ljava/lang/String; = "time_5"

.field public static final TIME_6:Ljava/lang/String; = "time_6"

.field public static final TIME_7:Ljava/lang/String; = "time_7"

.field public static final TIME_8:Ljava/lang/String; = "time_8"

.field public static final TIME_9:Ljava/lang/String; = "time_9"

.field public static final TIME_DOT:Ljava/lang/String; = "time_dot"

.field public static final XML_CONFIG_NAME:Ljava/lang/String; = "lock_screen_config.xml"

.field public static final XML_ZIP_NAME:Ljava/lang/String; = "LockScreen.zip"

.field private static sCurrentSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

.field private static final sTimeImageList:[Ljava/lang/String;


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mBackgroundNode:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;

.field private mContext:Landroid/content/Context;

.field private mCreateTime:Ljava/lang/String;

.field private mDensity:I

.field private mLoadFinish:Z

.field private mLoadSuccess:Z

.field private mLockScreenId:I

.field private mLockScreenStyleID:I

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowAuthor:Z

.field mSkinInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDensity:I

.field private mTargetHeight:I

.field private mTargetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "time_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "time_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "time_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "time_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "time_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "time_8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "time_9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "time_dot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->sTimeImageList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    .line 40
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadFinish:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadSuccess:Z

    .line 71
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLockScreenStyleID:I

    .line 76
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLockScreenId:I

    .line 90
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 92
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetDensity:I

    .line 93
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetHeight:I

    .line 94
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetWidth:I

    .line 96
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetHeight:I

    if-le v1, v2, :cond_0

    .line 97
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetHeight:I

    .line 98
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetWidth:I

    .line 100
    :cond_0
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "LockSkin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method private loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private parseAuthorInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 241
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 242
    const-string v0, "author"

    invoke-interface {p1, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mAuthor:Ljava/lang/String;

    .line 244
    const-string v0, "author"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 247
    const-string v0, "createtime"

    invoke-interface {p1, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mCreateTime:Ljava/lang/String;

    .line 249
    const-string v0, "createtime"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 252
    const-string v0, "authorinfo"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private parseImageList(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 202
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 203
    .local v1, "event":I
    const/4 v0, 0x0

    .line 204
    .local v0, "bk":Z
    packed-switch v1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    .line 238
    return-void

    .line 206
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;-><init>(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;)V

    .line 208
    .local v3, "node":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;
    const/4 v5, 0x0

    const-string v6, "id"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "id":Ljava/lang/String;
    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->IMAGE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    iput-object v5, v3, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mType:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    .line 210
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "value":Ljava/lang/String;
    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    if-ne v5, v6, :cond_2

    .line 213
    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->MOVIE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    iput-object v5, v3, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mType:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    .line 217
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/bbkcore/unlock/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mStrValue:Ljava/lang/String;

    .line 219
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v5, "LockSkin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",strValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mStrValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    :cond_2
    const-string v5, ".GIF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    if-ne v5, v6, :cond_1

    .line 215
    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->MOVIE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    iput-object v5, v3, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mType:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    goto :goto_2

    .line 224
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "node":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const-string v5, "invalid tag in imagelist"

    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->Log(Ljava/lang/String;)V

    .line 225
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "invalid tag in imagelist"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "imagelist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 236
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseScreenInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 257
    const-string v0, "density"

    invoke-interface {p1, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mDensity:I

    .line 260
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mDensity:I

    if-nez v0, :cond_0

    .line 261
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetDensity:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mDensity:I

    .line 262
    :cond_0
    const-string v0, "density"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 266
    const-string v0, "width"

    invoke-interface {p1, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mScreenWidth:I

    .line 268
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mScreenWidth:I

    if-nez v0, :cond_1

    .line 269
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetWidth:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mScreenWidth:I

    .line 270
    :cond_1
    const-string v0, "width"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 273
    const-string v0, "height"

    invoke-interface {p1, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mScreenHeight:I

    .line 275
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mScreenHeight:I

    if-nez v0, :cond_2

    .line 276
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetHeight:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mScreenHeight:I

    .line 277
    :cond_2
    const-string v0, "height"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 280
    const-string v0, "screeninfo"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 283
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mDensity:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 284
    return-void
.end method


# virtual methods
.method protected clearData()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadFinish:Z

    .line 337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 338
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;

    .line 311
    .local v1, "node":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mStrValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mType:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->IMAGE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    if-ne v2, v3, :cond_0

    .line 312
    iget-object v2, v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mStrValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    .end local v1    # "node":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;
    :cond_0
    return-object v0
.end method

.method public getImageNameByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;

    .line 322
    .local v0, "node":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mType:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->IMAGE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mType:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;->MOVIE:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$NodeType;

    if-ne v1, v2, :cond_1

    .line 323
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;->mStrValue:Ljava/lang/String;

    .line 326
    .end local v0    # "node":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin$Node;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLockScreenID()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLockScreenStyleID:I

    return v0
.end method

.method public isLoadFinish()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadFinish:Z

    return v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadSuccess:Z

    return v0
.end method

.method public onLoadSkinFinish(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 300
    return-void
.end method

.method public parseOther(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 288
    return-void
.end method

.method public parseSkinFromXML()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->clearData()V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->recycle()V

    .line 112
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/bbkcore/unlock/lock_screen_config.xml"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 114
    const-string v8, "/data/bbkcore/unlock/LockScreen.zip"

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/ZipUtils;->unZip(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 115
    const-string v8, "LockSkin"

    const-string v9, "unzip file fail..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v8, "LockSkin"

    const-string v9, "unzip file success..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_1
    const/4 v4, 0x0

    .line 128
    .local v4, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 129
    .local v7, "parse":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v5, "input":Ljava/io/FileInputStream;
    :try_start_1
    const-string v8, "utf-8"

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 133
    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, "lockscreen"

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v8, 0x0

    const-string v9, "id"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLockScreenStyleID:I

    .line 136
    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLockScreenStyleID:I

    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLockScreenId:I

    if-eq v8, v9, :cond_4

    .line 137
    const-string v8, "LockSkin"

    const-string v9, "id error,unzip file fail..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-eqz v5, :cond_0

    .line 180
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    const-string v8, "LockSkin"

    const-string v9, "config file exist,begin to parser data..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    .local v0, "bk":Z
    .local v2, "event":I
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 142
    .end local v0    # "bk":Z
    .end local v2    # "event":I
    :cond_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 143
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    .line 144
    .restart local v2    # "event":I
    const/4 v0, 0x0

    .line 145
    .restart local v0    # "bk":Z
    packed-switch v2, :pswitch_data_0

    .line 171
    :cond_5
    :goto_2
    if-eqz v0, :cond_3

    .line 178
    if-eqz v5, :cond_d

    .line 180
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v4, v5

    .line 186
    .end local v0    # "bk":Z
    .end local v2    # "event":I
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mSkinInfo:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 187
    iput-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadSuccess:Z

    .line 192
    :goto_4
    iput-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadFinish:Z

    .line 193
    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLoadSuccess:Z

    invoke-virtual {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->onLoadSkinFinish(Z)V

    goto :goto_0

    .line 147
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "bk":Z
    .restart local v2    # "event":I
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    :try_start_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 149
    const-string v8, "authorinfo"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 150
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->parseAuthorInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 175
    .end local v0    # "bk":Z
    .end local v2    # "event":I
    .end local v6    # "name":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 176
    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    if-eqz v4, :cond_6

    .line 180
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 181
    :catch_2
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "bk":Z
    .restart local v2    # "event":I
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    :try_start_8
    const-string v8, "screeninfo"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 152
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->parseScreenInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 178
    .end local v0    # "bk":Z
    .end local v2    # "event":I
    .end local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .end local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v4, :cond_8

    .line 180
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 183
    :cond_8
    :goto_7
    throw v8

    .line 153
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "bk":Z
    .restart local v2    # "event":I
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_a
    const-string v8, "imagelist"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 154
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->parseImageList(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 156
    :cond_a
    invoke-virtual {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->parseOther(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 161
    .end local v6    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "lockscreen"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 162
    const/4 v0, 0x1

    .line 163
    goto :goto_2

    .line 165
    :cond_b
    const-string v8, "invalid format for the skin xml"

    invoke-direct {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->Log(Ljava/lang/String;)V

    .line 166
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "invalid format for the skin xml"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 181
    :catch_3
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 183
    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 181
    .end local v0    # "bk":Z
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "event":I
    .end local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    :cond_c
    const-string v8, "LockSkin"

    const-string v9, "skin image size is 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 178
    :catchall_1
    move-exception v8

    goto :goto_6

    .line 175
    :catch_5
    move-exception v1

    goto :goto_5

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v0    # "bk":Z
    .restart local v2    # "event":I
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "parse":Lorg/xmlpull/v1/XmlPullParser;
    :cond_d
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 145
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public setLockScreenId(I)V
    .locals 0
    .param p1, "lockScreenId"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->mLockScreenId:I

    .line 104
    return-void
.end method
