.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static SCREENSHOTS_DIR_NAME:Ljava/lang/String; = null

.field private static SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = null

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "TakeScreenshotService"

.field private static mTickerAddSpace:Z


# instance fields
.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private mImageTime:J

.field private final mImageWidth:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mScreenshotDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "Screenshot"

    sput-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOTS_DIR_NAME:Ljava/lang/String;

    .line 129
    const-string v0, "Screenshot_%s.jpg"

    sput-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;
    .param p4, "nId"    # I

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 158
    .local v19, "r":Landroid/content/res/Resources;
    :try_start_0
    invoke-static {}, Lcom/android/systemui/screenshot/GlobalScreenshot;->IsExport()Z

    move-result v22

    if-nez v22, :cond_0

    .line 159
    const-string v22, "%E6%88%AA%E5%B1%8F"

    const-string v23, "UTF8"

    invoke-static/range {v22 .. v23}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOTS_DIR_NAME:Ljava/lang/String;

    .line 160
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOTS_DIR_NAME:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_%s.jpg"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 168
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v23, "yyyyMMdd_HHmmss"

    invoke-direct/range {v22 .. v23}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v24, v0

    invoke-direct/range {v23 .. v25}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "imageDate":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/screenshot/GlobalScreenshot;->IsExport()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 171
    const-string v22, "1"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "use_thai_calendar"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 174
    .local v21, "year":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x21f

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .end local v21    # "year":I
    :cond_1
    sget-object v22, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "visit_mode"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    .line 185
    .local v10, "isVisitorMode":Z
    :goto_1
    if-eqz v10, :cond_3

    .line 186
    new-instance v22, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOTS_DIR_NAME:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/new screenshot"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 191
    :goto_2
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "vivoice_photo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 198
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 199
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 200
    .local v8, "iconSize":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move/from16 v18, v0

    .line 201
    .local v18, "previewWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    move/from16 v17, v0

    .line 203
    .local v17, "previewHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v20, v0

    .line 204
    .local v20, "shortSide":I
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v22

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 205
    .local v16, "preview":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 206
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 207
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 208
    .local v6, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v22, 0x3e800000    # 0.25f

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 209
    new-instance v22, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 210
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 211
    .local v11, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 213
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 214
    const v22, 0x40ffffff    # 7.9999995f

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 215
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v8, v8, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 221
    .local v5, "croppedIcon":Landroid/graphics/Bitmap;
    sget-boolean v22, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v22, :cond_5

    const/16 v22, 0x1

    :goto_4
    sput-boolean v22, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 222
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 223
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 226
    .local v14, "now":J
    new-instance v23, Landroid/app/Notification$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const v24, 0x7f0e003b

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v22, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v22, :cond_6

    const-string v22, " "

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x7f0e003c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x7f0e003d

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x7f020127

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x1060059

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 235
    new-instance v22, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v22 .. v22}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 256
    .local v12, "n":Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 265
    return-void

    .line 162
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v6    # "desat":Landroid/graphics/ColorMatrix;
    .end local v8    # "iconSize":I
    .end local v9    # "imageDate":Ljava/lang/String;
    .end local v10    # "isVisitorMode":Z
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "n":Landroid/app/Notification;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "now":J
    .end local v16    # "preview":Landroid/graphics/Bitmap;
    .end local v17    # "previewHeight":I
    .end local v18    # "previewWidth":I
    .end local v20    # "shortSide":I
    :catch_0
    move-exception v7

    .line 163
    .local v7, "e":Ljava/lang/Exception;
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 183
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "imageDate":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 188
    .restart local v10    # "isVisitorMode":Z
    :cond_3
    new-instance v22, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    sget-object v24, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->SCREENSHOTS_DIR_NAME:Ljava/lang/String;

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    goto/16 :goto_2

    .line 203
    .restart local v8    # "iconSize":I
    .restart local v17    # "previewHeight":I
    .restart local v18    # "previewWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    goto/16 :goto_3

    .line 221
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "croppedIcon":Landroid/graphics/Bitmap;
    .restart local v6    # "desat":Landroid/graphics/ColorMatrix;
    .restart local v11    # "matrix":Landroid/graphics/Matrix;
    .restart local v13    # "paint":Landroid/graphics/Paint;
    .restart local v16    # "preview":Landroid/graphics/Bitmap;
    .restart local v20    # "shortSide":I
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 226
    .restart local v14    # "now":J
    :cond_6
    const-string v22, ""

    goto/16 :goto_5
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 32
    .param p1, "params"    # [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 269
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    const/16 v27, 0x0

    .line 387
    :goto_0
    return-object v27

    .line 270
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 271
    const/16 v27, 0x0

    aget-object v27, p1, v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 272
    const/16 v27, 0x0

    aget-object v27, p1, v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 273
    const/16 v27, 0x0

    goto :goto_0

    .line 275
    :cond_1
    const-string v27, "TakeScreenshotService"

    const-string v28, "start to save image"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/16 v27, -0x2

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    .line 281
    const/16 v27, 0x0

    aget-object v27, p1, v27

    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 282
    .local v11, "context":Landroid/content/Context;
    const/16 v27, 0x0

    aget-object v27, p1, v27

    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 283
    .local v15, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 286
    .local v17, "r":Landroid/content/res/Resources;
    const-wide/16 v6, -0x1

    .line 288
    .local v6, "availSDSize":J
    :try_start_0
    new-instance v20, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 289
    .local v20, "statfs":Landroid/os/StatFs;
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v27

    move/from16 v0, v27

    int-to-long v8, v0

    .line 290
    .local v8, "bsize":J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v27

    move/from16 v0, v27

    int-to-long v4, v0

    .line 291
    .local v4, "avail":J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockCount()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 292
    .local v24, "total":J
    const-wide/16 v28, 0x0

    cmp-long v27, v8, v28

    if-lez v27, :cond_2

    const-wide/16 v28, 0x0

    cmp-long v27, v24, v28

    if-gtz v27, :cond_4

    .line 293
    :cond_2
    new-instance v27, Ljava/lang/IllegalArgumentException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Invalid stat: bsize="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " avail="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " total="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v4    # "avail":J
    .end local v8    # "bsize":J
    .end local v20    # "statfs":Landroid/os/StatFs;
    .end local v24    # "total":J
    :catch_0
    move-exception v14

    .line 298
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v27, "TakeScreenshotService"

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-wide/16 v28, 0x0

    cmp-long v27, v6, v28

    if-ltz v27, :cond_5

    const-wide/16 v28, 0x5

    cmp-long v27, v6, v28

    if-gez v27, :cond_5

    .line 303
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 304
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/systemui/screenshot/GlobalScreenshot;->isNoMemory:Z

    .line 387
    :cond_3
    :goto_2
    const/16 v27, 0x0

    aget-object v27, p1, v27

    goto/16 :goto_0

    .line 296
    .restart local v4    # "avail":J
    .restart local v8    # "bsize":J
    .restart local v20    # "statfs":Landroid/os/StatFs;
    .restart local v24    # "total":J
    :cond_4
    mul-long v28, v4, v8

    const/16 v27, 0x14

    shr-long v6, v28, v27

    goto :goto_1

    .line 306
    .end local v4    # "avail":J
    .end local v8    # "bsize":J
    .end local v20    # "statfs":Landroid/os/StatFs;
    .end local v24    # "total":J
    :cond_5
    const/16 v27, 0x0

    sput-boolean v27, Lcom/android/systemui/screenshot/GlobalScreenshot;->isNoMemory:Z

    .line 311
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z

    .line 315
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    div-long v12, v28, v30

    .line 318
    .local v12, "dateSeconds":J
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v26, "values":Landroid/content/ContentValues;
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 320
    .local v18, "resolver":Landroid/content/ContentResolver;
    const-string v27, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v27, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v27, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v27, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v27, "date_added"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 325
    const-string v27, "date_modified"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    const-string v27, "mime_type"

    const-string v28, "image/jpg"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v27, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v27, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    sget-object v27, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 330
    const-string v27, "TakeScreenshotService"

    const-string v28, "insert uri done "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "file://"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 333
    .local v23, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v27

    new-instance v28, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v27 .. v28}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 334
    .local v22, "subjectDate":Ljava/lang/String;
    const-string v27, "Screenshot (%s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v22, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 335
    .local v21, "subject":Ljava/lang/String;
    new-instance v19, Landroid/content/Intent;

    const-string v27, "android.intent.action.SEND"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v19, "sharingIntent":Landroid/content/Intent;
    const-string v27, "image/jpg"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v27, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    const-string v27, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    .line 341
    .local v10, "chooserIntent":Landroid/content/Intent;
    const v27, 0x10008000

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v27, v0

    const v28, 0x7f020067

    const v29, 0x1040587

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/high16 v31, 0x10000000

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v11, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    invoke-virtual/range {v27 .. v30}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 349
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v16

    .line 350
    .local v16, "out":Ljava/io/OutputStream;
    sget-object v27, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v28, 0x64

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 351
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 352
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 355
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    .line 356
    const-string v27, "_size"

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const/16 v27, 0x0

    aget-object v27, p1, v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "file://"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 362
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 363
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    .end local v10    # "chooserIntent":Landroid/content/Intent;
    .end local v12    # "dateSeconds":J
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v18    # "resolver":Landroid/content/ContentResolver;
    .end local v19    # "sharingIntent":Landroid/content/Intent;
    .end local v21    # "subject":Ljava/lang/String;
    .end local v22    # "subjectDate":Ljava/lang/String;
    .end local v23    # "uri":Landroid/net/Uri;
    .end local v26    # "values":Landroid/content/ContentValues;
    :goto_3
    if-eqz v15, :cond_3

    .line 378
    sget-object v28, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFinisherRunLock:Ljava/lang/Object;

    monitor-enter v28

    .line 379
    :try_start_2
    sget-boolean v27, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationEnd:Z

    if-eqz v27, :cond_6

    .line 380
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    const-string v27, "TakeScreenshotService"

    const-string v29, "image.recycle() ...."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_6
    monitor-exit v28

    goto/16 :goto_2

    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v27

    .line 364
    :catch_1
    move-exception v14

    .line 369
    .local v14, "e":Ljava/lang/Exception;
    const-string v27, "TakeScreenshotService"

    const-string v28, "Exception  IOException/UnsupportedOperationException creation: "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const/16 v27, 0x0

    aget-object v27, p1, v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 373
    const/16 v27, 0x0

    aget-object v27, p1, v27

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 12
    .param p1, "params"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 393
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 394
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 395
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 459
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 402
    iget v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v7, :cond_2

    .line 404
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v7, v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 452
    :goto_1
    sget-object v8, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFinisherRunLock:Ljava/lang/Object;

    monitor-enter v8

    .line 453
    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->isSaveImageDone:Z

    .line 454
    sget-boolean v7, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationEnd:Z

    if-eqz v7, :cond_1

    .line 455
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 457
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 410
    .local v6, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "launchIntent":Landroid/content/Intent;
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v8, "image/jpg"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 414
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 417
    :try_start_1
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 418
    const-string v7, "TakeScreenshotService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send Broadcast, URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 426
    .local v4, "now":J
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f020127

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0e003e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0e003f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v8, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x1060059

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 448
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 449
    .local v3, "n":Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v3, Landroid/app/Notification;->flags:I

    goto/16 :goto_1

    .line 419
    .end local v3    # "n":Landroid/app/Notification;
    .end local v4    # "now":J
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 457
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v6    # "r":Landroid/content/res/Resources;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
