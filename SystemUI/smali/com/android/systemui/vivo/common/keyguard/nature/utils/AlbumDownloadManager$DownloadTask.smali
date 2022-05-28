.class Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;
.super Ljava/lang/Object;
.source "AlbumDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$ReConException;,
        Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$FailException;
    }
.end annotation


# instance fields
.field private final CONNECTION_TYPE_MOBILE:I

.field private final CONNECTION_TYPE_NULL:I

.field private final CONNECTION_TYPE_WIFI:I

.field private final TIMEOUTMILLIS:I

.field private mGoingOnCotrol:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

.field private mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

.field private mNetType:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field public mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;
    .param p5, "goingOnCotrol"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 181
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->CONNECTION_TYPE_NULL:I

    .line 168
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->CONNECTION_TYPE_WIFI:I

    .line 169
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->CONNECTION_TYPE_MOBILE:I

    .line 171
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->TIMEOUTMILLIS:I

    .line 173
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 174
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetType:I

    .line 175
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    .line 176
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mGoingOnCotrol:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

    .line 178
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mUri:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mUri:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    .line 184
    iput-object p5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mGoingOnCotrol:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

    .line 186
    const-string v1, "connectivity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 188
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 189
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->getConnectionType(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetType:I

    .line 190
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetType:I

    invoke-interface {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onStart(I)V

    .line 191
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetType:I

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, " type is null!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 194
    :cond_0
    return-void
.end method

.method private getHttpURLConnection(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "urlHeader"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v6, 0x0

    .line 227
    .local v6, "inStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 228
    .local v12, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 229
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, -0x1

    .line 230
    .local v9, "responseCode":I
    const/4 v5, 0x0

    .line 233
    .local v5, "httpConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 234
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "host":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    .line 236
    .local v7, "port":I
    if-eqz v4, :cond_3

    const/4 v14, -0x1

    if-eq v7, v14, :cond_3

    .line 237
    const-string v14, "/"

    const/4 v15, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 238
    .local v3, "first":I
    const-string v14, "/"

    const/4 v15, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 239
    .local v10, "second":I
    add-int/lit8 v14, v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 240
    .local v11, "strip":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "proxyUrl":Ljava/lang/String;
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v12    # "url":Ljava/net/URL;
    .local v13, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 243
    const-string v14, "X-Online-Host"

    invoke-virtual {v5, v14, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v13

    .line 252
    .end local v3    # "first":I
    .end local v4    # "host":Ljava/lang/String;
    .end local v7    # "port":I
    .end local v8    # "proxyUrl":Ljava/lang/String;
    .end local v10    # "second":I
    .end local v11    # "strip":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    :goto_0
    const/16 v14, 0x4e20

    :try_start_2
    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 253
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mGoingOnCotrol:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;->isGoingOn(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 256
    if-eqz v5, :cond_0

    .line 257
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    const/4 v5, 0x0

    .line 260
    :cond_0
    const/4 v14, 0x0

    .line 284
    if-eqz v5, :cond_1

    .line 285
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 286
    const/4 v5, 0x0

    .line 290
    :cond_1
    if-eqz v6, :cond_2

    .line 291
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 292
    const/4 v6, 0x0

    .line 299
    :cond_2
    :goto_1
    return-object v14

    .line 245
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v7    # "port":I
    :cond_3
    :try_start_4
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :try_start_5
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v12, v13

    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_0

    .line 249
    .end local v4    # "host":Ljava/lang/String;
    .end local v7    # "port":I
    :cond_4
    :try_start_6
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :try_start_7
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v12, v13

    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_0

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    invoke-interface {v15, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 296
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 263
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 264
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_9

    .line 265
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 266
    if-eqz v6, :cond_6

    .line 267
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    .line 284
    :cond_6
    if-eqz v5, :cond_7

    .line 285
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 286
    const/4 v5, 0x0

    .line 290
    :cond_7
    if-eqz v6, :cond_8

    .line 291
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 292
    const/4 v6, 0x0

    :cond_8
    :goto_2
    move-object v14, v1

    .line 299
    goto :goto_1

    .line 270
    :cond_9
    const/16 v14, 0x1f4

    if-eq v9, v14, :cond_a

    const/16 v14, 0x194

    if-eq v9, v14, :cond_a

    if-nez v9, :cond_c

    .line 273
    :cond_a
    :try_start_a
    new-instance v14, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$ReConException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The network is bad, we should reconnect. responseCode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$ReConException;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;Ljava/lang/String;)V

    throw v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 280
    :catch_1
    move-exception v2

    .line 281
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    invoke-interface {v14, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 282
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 284
    if-eqz v5, :cond_b

    .line 285
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 286
    const/4 v5, 0x0

    .line 290
    :cond_b
    if-eqz v6, :cond_8

    .line 291
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 292
    const/4 v6, 0x0

    goto :goto_2

    .line 277
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_d
    new-instance v14, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$FailException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "responseCode is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask$FailException;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;Ljava/lang/String;)V

    throw v14
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 284
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v5, :cond_d

    .line 285
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 286
    const/4 v5, 0x0

    .line 290
    :cond_d
    if-eqz v6, :cond_e

    .line 291
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 292
    const/4 v6, 0x0

    .line 297
    :cond_e
    :goto_5
    throw v14

    .line 294
    :catch_2
    move-exception v2

    .line 295
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    invoke-interface {v14, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 296
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 294
    :catch_3
    move-exception v2

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    invoke-interface {v14, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 296
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 294
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 295
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    invoke-interface {v15, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 296
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 284
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_4

    .line 280
    .end local v12    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_5
    move-exception v2

    move-object v12, v13

    .end local v13    # "url":Ljava/net/URL;
    .restart local v12    # "url":Ljava/net/URL;
    goto :goto_3
.end method


# virtual methods
.method public getConnectionType(Landroid/net/NetworkInfo;)I
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 217
    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 198
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mNetType:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mUri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->getHttpURLConnection(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v1, "AlbumDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadTask.run mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mUri:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onOneBitmapFinish(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 208
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, " result is null!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
