.class public Lcom/vivo/settings/AutoDateTimeService;
.super Landroid/app/Service;
.source "AutoDateTimeService.java"


# static fields
.field public static final AUTO_DATE_TIME_FROM_VIVO:Ljava/lang/String; = "vivo.settings.service.AUTO_DATE_TIME_FROM_VIVO"

.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final CONNECTION_TYPE_MOBILE:I = 0x3ea

.field public static final CONNECTION_TYPE_NULL:I = 0x3e9

.field public static final CONNECTION_TYPE_WIFI:I = 0x3eb

.field private static DELAY_AUTO_DATE_TIME:I = 0x0

.field private static final KEY_AUTO_TIME_BEGIN:Ljava/lang/String; = "auto_time_begin"

.field private static final MSG_AUTO_DATE_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutoDateTimeService"

.field private static final UPDATE_TIME_TRY_TIMES:I = 0x1


# instance fields
.field private mDefaultPrefs:Landroid/content/SharedPreferences;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-class v2, Lcom/vivo/settings/AutoDateTimeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/settings/AutoDateTimeService;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 36
    const v0, 0x186a0

    sput v0, Lcom/vivo/settings/AutoDateTimeService;->DELAY_AUTO_DATE_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 289
    new-instance v0, Lcom/vivo/settings/AutoDateTimeService$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/AutoDateTimeService$2;-><init>(Lcom/vivo/settings/AutoDateTimeService;)V

    iput-object v0, p0, Lcom/vivo/settings/AutoDateTimeService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/AutoDateTimeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/AutoDateTimeService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vivo/settings/AutoDateTimeService;->isAutoTimeZoneOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/AutoDateTimeService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/AutoDateTimeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/settings/AutoDateTimeService;->mDefaultPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/vivo/settings/AutoDateTimeService;->DELAY_AUTO_DATE_TIME:I

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/AutoDateTimeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/AutoDateTimeService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vivo/settings/AutoDateTimeService;->getTimeFromServer()V

    return-void
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x3e9

    .line 267
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 270
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 273
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 276
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 277
    .local v2, "type":I
    const-string v4, "AutoDateTimeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-nez v2, :cond_2

    .line 279
    const/16 v3, 0x3ea

    goto :goto_0

    .line 280
    :cond_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 281
    const/16 v3, 0x3eb

    goto :goto_0
.end method

.method private getTimeFromServer()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/vivo/settings/AutoDateTimeService$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/AutoDateTimeService$1;-><init>(Lcom/vivo/settings/AutoDateTimeService;)V

    invoke-virtual {v0}, Lcom/vivo/settings/AutoDateTimeService$1;->start()V

    .line 103
    return-void
.end method

.method private isAutoTimeZoneOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/vivo/settings/AutoDateTimeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 107
    .local v0, "timeOn":Z
    :goto_0
    return v0

    .end local v0    # "timeOn":Z
    :cond_0
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public static updateTimeDate(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    .line 111
    const-wide/16 v2, -0x1

    .line 112
    .local v2, "serverTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 113
    const-string v1, "AutoDateTimeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTimeDate try "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v1, "stdtime.gov.hk"

    invoke-static {v1}, Lcom/vivo/settings/AutoDateTimeService;->updateTimeDateNtp(Ljava/lang/String;)J

    move-result-wide v2

    .line 116
    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 155
    :cond_0
    return-wide v2

    .line 120
    :cond_1
    const-string v1, "asia.pool.ntp.org"

    invoke-static {v1}, Lcom/vivo/settings/AutoDateTimeService;->updateTimeDateNtp(Ljava/lang/String;)J

    move-result-wide v2

    .line 121
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 125
    const-string v1, "time.gpsonextra.net"

    invoke-static {v1}, Lcom/vivo/settings/AutoDateTimeService;->updateTimeDateNtp(Ljava/lang/String;)J

    move-result-wide v2

    .line 126
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 130
    const-string v1, "time-a.nist.gov"

    invoke-static {v1}, Lcom/vivo/settings/AutoDateTimeService;->updateTimeDateNtp(Ljava/lang/String;)J

    move-result-wide v2

    .line 131
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 135
    const-string v1, "2.android.pool.ntp.org"

    invoke-static {v1}, Lcom/vivo/settings/AutoDateTimeService;->updateTimeDateNtp(Ljava/lang/String;)J

    move-result-wide v2

    .line 136
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 140
    invoke-static {p0}, Lcom/vivo/settings/AutoDateTimeService;->updateTimeDateOnline(Landroid/content/Context;)J

    move-result-wide v2

    .line 141
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static updateTimeDateNtp(Ljava/lang/String;)J
    .locals 6
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string v3, "AutoDateTimeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update time with ntp host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v2, Landroid/net/SntpClient;

    invoke-direct {v2}, Landroid/net/SntpClient;-><init>()V

    .line 253
    .local v2, "sntpClient":Landroid/net/SntpClient;
    const/16 v3, 0x4e20

    invoke-virtual {v2, p0, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v0

    .line 255
    .local v0, "now":J
    const-string v3, "AutoDateTimeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTimeDateNtp success! time is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "now":J
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static updateTimeDateOnline(Landroid/content/Context;)J
    .locals 30
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/16 v19, 0x0

    .line 160
    .local v19, "strLine":Ljava/lang/String;
    const-string v9, "http://weather.bbk.com:15000/getNtpTime"

    .line 161
    .local v9, "host":Ljava/lang/String;
    const-string v27, "AutoDateTimeService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "updateTimeDateOnline host:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v4, "10.0.0.172"

    .line 163
    .local v4, "PROXYIP":Ljava/lang/String;
    const-wide/32 v14, 0x3010b00

    .line 167
    .local v14, "offset":J
    const/4 v11, 0x0

    .line 168
    .local v11, "inputStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 169
    .local v10, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v26, 0x0

    .line 170
    .local v26, "tmpHost":Ljava/lang/String;
    const/4 v13, -0x1

    .line 171
    .local v13, "port":I
    :try_start_0
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v25, "timeUrl":Ljava/net/URL;
    const-string v27, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 173
    .local v5, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 174
    .local v12, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 175
    const-string v27, "AutoDateTimeService"

    const-string v28, "update time with wlan"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 178
    const/16 v27, 0x4e20

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 208
    :cond_0
    :goto_0
    const/16 v17, 0x0

    .line 209
    .local v17, "responseCode":I
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 210
    const/16 v27, 0xc8

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 211
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 216
    new-instance v24, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v28, 0xc8

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 218
    .local v24, "timeReader":Ljava/io/BufferedReader;
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 219
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    move-object/from16 v21, v19

    .line 226
    .local v21, "time":Ljava/lang/String;
    if-eqz v21, :cond_1

    const-string v27, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 227
    :cond_1
    const-string v27, "AutoDateTimeService"

    const-string v28, "get time is null failed"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-wide/16 v22, -0x1

    .line 247
    .end local v5    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v17    # "responseCode":I
    .end local v21    # "time":Ljava/lang/String;
    .end local v24    # "timeReader":Ljava/io/BufferedReader;
    .end local v25    # "timeUrl":Ljava/net/URL;
    :goto_1
    return-wide v22

    .line 180
    .restart local v5    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v25    # "timeUrl":Ljava/net/URL;
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v27

    if-nez v27, :cond_0

    .line 181
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v26

    .line 182
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v13

    .line 183
    const-string v27, "AutoDateTimeService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sync time host="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " port="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v26, :cond_3

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v13, v0, :cond_3

    .line 185
    const-string v27, "AutoDateTimeService"

    const-string v28, "sync time with wap eg. cmwap"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v27, "/"

    const/16 v28, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 187
    .local v8, "first":I
    const-string v27, "/"

    const/16 v28, 0x7

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    .line 188
    .local v18, "second":I
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 189
    .local v20, "strip":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 190
    .local v16, "proxyUrl":Ljava/lang/String;
    new-instance v25, Ljava/net/URL;

    .end local v25    # "timeUrl":Ljava/net/URL;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v25    # "timeUrl":Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 193
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 194
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 195
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 196
    const-string v27, "X-Online-Host"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v27, 0x4e20

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 220
    .end local v5    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v8    # "first":I
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v16    # "proxyUrl":Ljava/lang/String;
    .end local v18    # "second":I
    .end local v20    # "strip":Ljava/lang/String;
    .end local v25    # "timeUrl":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 221
    .local v7, "e":Ljava/lang/Exception;
    const-string v27, "AutoDateTimeService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "exception"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-wide/16 v22, -0x1

    goto/16 :goto_1

    .line 201
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v12    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v25    # "timeUrl":Ljava/net/URL;
    :cond_3
    :try_start_2
    const-string v27, "AutoDateTimeService"

    const-string v28, "sync time with net eg. cmnet"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 204
    const/16 v27, 0x4e20

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 205
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    goto/16 :goto_0

    .line 213
    .restart local v17    # "responseCode":I
    :cond_4
    const-string v27, "AutoDateTimeService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network connection is not ok respnse code = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    const-wide/16 v22, -0x1

    goto/16 :goto_1

    .line 230
    .restart local v21    # "time":Ljava/lang/String;
    .restart local v24    # "timeReader":Ljava/io/BufferedReader;
    :cond_5
    const-string v27, "AutoDateTimeService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "time str from server is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v27, "d MMM yyyy HH:mm:ss zzz"

    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 233
    .local v6, "dateFormat":Ljava/text/SimpleDateFormat;
    const-wide/16 v22, 0x0

    .line 235
    .local v22, "systime":J
    :try_start_3
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v22

    .line 236
    sub-long v22, v22, v14

    .line 241
    const-wide/16 v28, 0x0

    cmp-long v27, v22, v28

    if-eqz v27, :cond_6

    .line 246
    const-string v27, "AutoDateTimeService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "updateTimeDateOnline server time:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 237
    :catch_1
    move-exception v7

    .line 238
    .local v7, "e":Ljava/text/ParseException;
    const-string v27, "AutoDateTimeService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "exeption"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v7}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-wide/16 v22, -0x1

    goto/16 :goto_1

    .line 244
    .end local v7    # "e":Ljava/text/ParseException;
    :cond_6
    const-wide/16 v22, -0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    const-string v0, "AutoDateTimeService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "AutoDateTimeService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 60
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v6, 0x1

    .line 65
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 67
    iget-object v3, p0, Lcom/vivo/settings/AutoDateTimeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/vivo/settings/AutoDateTimeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/AutoDateTimeService;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/vivo/settings/AutoDateTimeService;->DELAY_AUTO_DATE_TIME:I

    int-to-long v4, v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/AutoDateTimeService;->mDefaultPrefs:Landroid/content/SharedPreferences;

    .line 74
    iget-object v3, p0, Lcom/vivo/settings/AutoDateTimeService;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 76
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, "curTime":J
    const-string v3, "auto_time_begin"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    const-string v3, "AutoDateTimeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart curTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
