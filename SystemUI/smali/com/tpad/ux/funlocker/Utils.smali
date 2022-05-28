.class public Lcom/tpad/ux/funlocker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static doLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tpad/ux/funlocker/Utils;->doLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/tpad/ux/funlocker/Utils;->getScreen(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static GetScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/tpad/ux/funlocker/Utils;->getScreen(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-boolean v0, Lcom/tpad/ux/funlocker/Utils;->doLog:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method static getBytesFromUX(Landroid/content/Context;I)[B
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "frompath"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 28
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 31
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    .line 36
    :goto_0
    return-object v2

    .line 34
    :catch_0
    move-exception v2

    .line 36
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBytesFromUX(Ljava/lang/String;)[B
    .locals 5
    .param p0, "frompath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 53
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 45
    .local v0, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 47
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 50
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    :goto_1
    move-object v0, v3

    .line 53
    goto :goto_0

    .line 51
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .line 50
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static getHScale(Landroid/content/Context;I)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "h"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "mscale_height":F
    invoke-static {p0}, Lcom/tpad/ux/funlocker/Utils;->getScreen(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 99
    .local v1, "widthPhone":I
    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 100
    return v0
.end method

.method static getScreen(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 59
    .local v0, "WM":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    return-object v1
.end method

.method public static getStatusBar(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "c":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 74
    .local v2, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 75
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 77
    .local v3, "x":I
    :try_start_0
    const-string v4, "com.android.internal.R$dimen"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 79
    const-string v4, "status_bar_height"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 84
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 82
    :catch_0
    move-exception v4

    .line 84
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getWScale(Landroid/content/Context;I)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "mscale_width":F
    invoke-static {p0}, Lcom/tpad/ux/funlocker/Utils;->getScreen(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 91
    .local v1, "widthPhone":I
    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 92
    return v0
.end method
