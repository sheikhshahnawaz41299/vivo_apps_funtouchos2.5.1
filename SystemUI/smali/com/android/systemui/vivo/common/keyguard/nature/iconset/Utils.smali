.class public Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static COLOR_VALUE:[Ljava/lang/String; = null

.field public static final CUSTOM_FONT_COLOR:Ljava/lang/String; = "font_color"

.field public static final CUSTOM_HEAD_PORTRAIT_ICON_ID_STRING:Ljava/lang/String; = "lock_screen_nature_icon_id"

.field public static final CUSTOM_HEAD_PORTRAIT_NAME_STRING:Ljava/lang/String; = "lock_screen_custom_head_portrait_name_string"

.field public static final CUSTOM_ICON_ID:Ljava/lang/String; = "icon_id"

.field public static final CUSTOM_LEFT_CLS:Ljava/lang/String; = "left_cls"

.field public static final CUSTOM_LEFT_DOUBLE:Ljava/lang/String; = "left_double"

.field public static final CUSTOM_LEFT_PKG:Ljava/lang/String; = "left_pkg"

.field public static final CUSTOM_LEFT_SHORTCUT_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/left_shortcut"

.field public static final CUSTOM_NAME:Ljava/lang/String; = "name"

.field public static final CUSTOM_RIGHT_CLS:Ljava/lang/String; = "right_cls"

.field public static final CUSTOM_RIGHT_DOUBLE:Ljava/lang/String; = "right_double"

.field public static final CUSTOM_RIGHT_PKG:Ljava/lang/String; = "right_pkg"

.field public static final CUSTOM_RIGHT_SHORTCUT_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/right_shortcut"

.field public static final CUSTOM_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final CUSTOM_SIGNATURE_COLOR_NAME_STRING:Ljava/lang/String; = "lock_screen_custom_signature_color_name_string"

.field public static final CUSTOM_SIGNATURE_NAME_STRING:Ljava/lang/String; = "lock_screen_custom_signature_name_string"

.field public static final DEFAULT_LEFT_CLS:Ljava/lang/String; = "com.android.dialer.TwelveKeyDialer"

.field public static final DEFAULT_LEFT_PKG:Ljava/lang/String; = "com.android.dialer"

.field public static final DEFAULT_RIGHT_CLS:Ljava/lang/String; = "com.android.camera.CameraActivity"

.field public static final DEFAULT_RIGHT_PKG:Ljava/lang/String; = "com.android.camera"

.field private static HEAD_PORTRAIT_SELECTOR_ICONS:[I = null

.field private static HEAD_PORTRAIT_SELECTOR_ICONS_SEC:[I = null

.field public static HEAD_PORTRAIT_STR_KEY:[Ljava/lang/String; = null

.field public static final ICON_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/icon"

.field public static final NAME_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/name"

.field public static final NATURE_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/"

.field public static final ONLINE_MUSIC_ALBUM_NAME:Ljava/lang/String; = "online_music_album_name"

.field public static final ONLINE_MUSIC_ALBUM_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/online_music_album"

.field public static final ONLINE_MUSIC_ALBUM_SONG_ID:Ljava/lang/String; = "online_music_album_song_id"

.field public static SELECTOR_INDICATOR:[I = null

.field public static final SIGNATURE_COLOR_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/signature_color"

.field public static final SIGNATURE_PATH:Ljava/lang/String; = "/data/bbkcore/lock_screen_nature/signature"

.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x2

    .line 63
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->SELECTOR_INDICATOR:[I

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "head_item_0"

    aput-object v1, v0, v5

    const-string v1, "head_item_1"

    aput-object v1, v0, v6

    const-string v1, "head_item_2"

    aput-object v1, v0, v3

    const-string v1, "head_item_3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "head_item_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "head_item_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "head_item_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "head_item_0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->HEAD_PORTRAIT_STR_KEY:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->HEAD_PORTRAIT_SELECTOR_ICONS:[I

    .line 88
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->HEAD_PORTRAIT_SELECTOR_ICONS_SEC:[I

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#ffffffff"

    aput-object v1, v0, v5

    const-string v1, "#fffff960"

    aput-object v1, v0, v6

    const-string v1, "#fff6b229"

    aput-object v1, v0, v3

    const-string v1, "#ffeb0c3b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "#ff82d413"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#ff30ace0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#ff000000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    return-void

    .line 63
    :array_0
    .array-data 4
        0x7f0202d6
        0x7f0202d7
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x7f0202b3
        0x7f0202b4
        0x7f0202b5
        0x7f0202b6
        0x7f0202b7
        0x7f0202b8
        0x7f0202b3
        0x7f0202b3
    .end array-data

    .line 88
    :array_2
    .array-data 4
        0x7f0202b5
        0x7f0202b4
        0x7f0202b3
        0x7f0202b6
        0x7f0202b7
        0x7f0202b8
        0x7f0202b3
        0x7f0202b3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 109
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorIndexBySring(Ljava/lang/String;)I
    .locals 3
    .param p0, "colorString"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 119
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    move v1, v0

    .line 124
    :cond_0
    return v1

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getColorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 113
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getHeadPortpaitSelectorIcon()[I
    .locals 3

    .prologue
    .line 278
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->PRODUCT_MODEL:Ljava/lang/String;

    .line 279
    .local v1, "productModel":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "PD1415D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PD1501D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->HEAD_PORTRAIT_SELECTOR_ICONS_SEC:[I

    .line 284
    .local v0, "iconIds":[I
    :goto_0
    return-object v0

    .line 282
    .end local v0    # "iconIds":[I
    :cond_1
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->HEAD_PORTRAIT_SELECTOR_ICONS:[I

    .restart local v0    # "iconIds":[I
    goto :goto_0
.end method

.method public static getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "iconWidth"    # I
    .param p4, "isDobule"    # Z

    .prologue
    .line 181
    const/4 v5, 0x0

    .line 182
    .local v5, "bm":Landroid/graphics/Bitmap;
    const-string v14, "Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkg = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", cls ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 184
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v7, "component":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 187
    .local v4, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz p4, :cond_1

    .line 188
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x80

    invoke-virtual {v14, v7, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 189
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedApplicationIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v4, :cond_4

    .line 199
    if-eqz p4, :cond_2

    .line 200
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v14, v0, v1, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 206
    :goto_1
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-ge v12, v14, :cond_4

    .line 207
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 208
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 209
    .local v6, "color":I
    shr-int/lit8 v14, v6, 0x18

    and-int/lit16 v2, v14, 0xff

    .line 210
    .local v2, "a":I
    shr-int/lit8 v14, v6, 0x10

    and-int/lit16 v11, v14, 0xff

    .line 211
    .local v11, "r":I
    shr-int/lit8 v14, v6, 0x8

    and-int/lit16 v9, v14, 0xff

    .line 212
    .local v9, "g":I
    and-int/lit16 v3, v6, 0xff

    .line 213
    .local v3, "b":I
    int-to-double v14, v11

    const-wide v16, 0x3fd3333333333333L    # 0.3

    mul-double v14, v14, v16

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v16, v16, v18

    add-double v14, v14, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide v18, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v6, v14

    .line 214
    rsub-int v14, v6, 0xff

    mul-int/2addr v14, v2

    div-int/lit16 v14, v14, 0xff

    mul-int/lit8 v2, v14, 0x2

    .line 215
    const/16 v14, 0xff

    if-le v2, v14, :cond_0

    .line 216
    const/16 v2, 0xff

    .line 219
    :cond_0
    shl-int/lit8 v14, v2, 0x18

    shl-int/lit8 v15, v6, 0x10

    add-int/2addr v14, v15

    shl-int/lit8 v15, v6, 0x8

    add-int/2addr v14, v15

    add-int/2addr v14, v6

    invoke-virtual {v5, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 207
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 191
    .end local v2    # "a":I
    .end local v3    # "b":I
    .end local v6    # "color":I
    .end local v9    # "g":I
    .end local v11    # "r":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v8

    .line 194
    .local v8, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "Utils"

    const-string v15, "Get activity icon, but the activity not found."

    invoke-static {v14, v15}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v8    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/systemui/vivo/compatible/keyguard/IconUtils;->createRedrawIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v14, v0, v1, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_1

    .line 206
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 226
    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_4
    return-object v5
.end method

.method public static getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "isDobule"    # Z

    .prologue
    const/4 v4, 0x0

    .line 230
    const-string v5, ""

    .line 232
    .local v5, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 233
    .local v2, "hidePkg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "visit_password"

    invoke-static {p0, v7, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .line 234
    .local v4, "isVisitorMode":Z
    :cond_0
    if-eqz v4, :cond_1

    .line 235
    invoke-static {p0}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getVisitHideApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 238
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 259
    .end local v5    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 242
    .end local v6    # "name":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 243
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 247
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p3, :cond_4

    .line 248
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isCloneEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7, p0}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedApplicationLabel(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    :goto_1
    move-object v6, v5

    .line 259
    .end local v5    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v6    # "name":Ljava/lang/String;
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 254
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Utils"

    const-string v8, "Get activity info, but the activity not found."

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isExport()Z
    .locals 3

    .prologue
    .line 128
    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "countside":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 132
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static saveShortcutIcon(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "left"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "clsName"    # Ljava/lang/String;
    .param p4, "shortcutWidth"    # I

    .prologue
    .line 263
    const/4 v3, 0x0

    invoke-static {p0, p2, p3, p4, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 264
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 265
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 267
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 268
    .local v2, "iconDataBytes":[B
    if-eqz p1, :cond_1

    .line 269
    const-string v3, "/data/bbkcore/lock_screen_nature/left_shortcut"

    invoke-static {v3, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->writeImageDataToFile(Ljava/lang/String;[B)V

    .line 274
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "iconDataBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 271
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "iconDataBytes":[B
    :cond_1
    const-string v3, "/data/bbkcore/lock_screen_nature/right_shortcut"

    invoke-static {v3, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->writeImageDataToFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public static setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V
    .locals 3
    .param p0, "skin"    # Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    .param p1, "view"    # Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    .param p2, "id"    # I

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 139
    .local v0, "file":Ljava/io/File;
    if-eqz p0, :cond_0

    .line 140
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->HEAD_PORTRAIT_STR_KEY:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->getImageNameByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    :cond_0
    if-eqz v1, :cond_1

    .line 144
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {p1, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {p1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    goto :goto_0
.end method

.method public static writeImageDataToFile(Ljava/lang/String;[B)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/bbkcore/lock_screen_nature/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v4, "parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 161
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 162
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 163
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 164
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 166
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 167
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 168
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 169
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 172
    .end local v4    # "parent":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 174
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 178
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
