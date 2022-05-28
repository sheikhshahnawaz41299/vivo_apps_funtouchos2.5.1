.class public Lcom/vivo/settings/SocketClient;
.super Ljava/lang/Object;
.source "SocketClient.java"


# static fields
.field private static final SERVER_NAME:Ljava/lang/String; = "vivoEmSvr-service"

.field private static final TAG:Ljava/lang/String; = "SocketClient"


# instance fields
.field private client:Landroid/net/LocalSocket;

.field private localAddr:Landroid/net/LocalSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v6, "sys.emsvr.opt"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "emsvr":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 26
    const-string v6, "sys.emsvr.opt"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 28
    const-string v6, "sys.emsvr.opt.bak"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "emsvrBak":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 42
    .end local v2    # "emsvrBak":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_0
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V

    iput-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    .line 43
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string v7, "vivoEmSvr-service"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v6, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v6, p0, Lcom/vivo/settings/SocketClient;->localAddr:Landroid/net/LocalSocketAddress;

    .line 44
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->localAddr:Landroid/net/LocalSocketAddress;

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :cond_1
    :goto_1
    return-void

    .line 33
    .restart local v2    # "emsvrBak":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_2
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 45
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "emsvrBak":Ljava/lang/String;
    .end local v5    # "i":I
    :catch_1
    move-exception v3

    .line 47
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-eqz v6, :cond_1

    .line 48
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 50
    :catch_2
    move-exception v4

    .line 52
    .local v4, "ex2":Ljava/io/IOException;
    const-string v6, "SocketClient"

    const-string v7, "NullPointerException ex2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static clearNetworkLock()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 147
    const-string v4, "persist.radio.vivo.defmdtype"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "defaultType":I
    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    if-gez v1, :cond_2

    :cond_0
    move v2, v3

    .line 156
    :cond_1
    :goto_0
    return v2

    .line 151
    :cond_2
    const-string v4, "persist.radio.vivo.modemtype"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "curType":I
    const-string v4, "SocketClient"

    const-string v5, "defaultType:[%s] curType:[%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eq v1, v0, :cond_1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set_netlock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/settings/SocketClient;->sendSocketMsg(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private static sendSocketMsg(Ljava/lang/String;)Z
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v2, Lcom/vivo/settings/SocketClient;

    invoke-direct {v2}, Lcom/vivo/settings/SocketClient;-><init>()V

    .line 134
    .local v2, "socketClient":Lcom/vivo/settings/SocketClient;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 135
    .local v1, "rsp":Ljava/lang/String;
    const-string v3, "SocketClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/vivo/settings/SocketClient;->sendMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    const-string v3, "SocketClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReceiveMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SocketClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send Message fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "netOut":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 62
    .local v1, "in":Ljava/io/BufferedReader;
    const-string v4, "error"

    .line 63
    .local v4, "response":Ljava/lang/String;
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-nez v6, :cond_0

    .line 64
    const-string v6, "SocketClient"

    const-string v7, "the client is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 86
    .end local v4    # "response":Ljava/lang/String;
    .local v5, "response":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 68
    .end local v5    # "response":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 70
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string v6, "SocketClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 79
    :cond_1
    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 82
    :cond_2
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-eqz v6, :cond_9

    .line 83
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    move-object v5, v4

    .line 86
    .end local v4    # "response":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v5    # "response":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    if-eqz v3, :cond_4

    .line 77
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 79
    :cond_4
    if-eqz v1, :cond_5

    .line 80
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 82
    :cond_5
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-eqz v6, :cond_3

    .line 83
    iget-object v6, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_6

    .line 77
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 79
    :cond_6
    if-eqz v1, :cond_7

    .line 80
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 82
    :cond_7
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-eqz v7, :cond_8

    .line 83
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V

    :cond_8
    throw v6

    .line 76
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 73
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_9
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "needState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, "netOut":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 94
    .local v1, "in":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 96
    .local v5, "response":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-nez v7, :cond_0

    .line 97
    const-string v7, "SocketClient"

    const-string v8, "the client is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 129
    .end local v5    # "response":Ljava/lang/String;
    .local v6, "response":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 101
    .end local v6    # "response":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 103
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 111
    if-nez p2, :cond_1

    const-string v7, "ok\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_1
    const-string v7, "SocketClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    if-eqz v4, :cond_2

    .line 120
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 122
    :cond_2
    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 125
    :cond_3
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-eqz v7, :cond_b

    .line 126
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    move-object v6, v5

    .line 129
    .end local v5    # "response":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v6    # "response":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    goto :goto_1

    .line 116
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    if-eqz v4, :cond_6

    .line 120
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 122
    :cond_6
    if-eqz v1, :cond_7

    .line 123
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 125
    :cond_7
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-eqz v7, :cond_4

    .line 126
    iget-object v7, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V

    goto :goto_2

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_8

    .line 120
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 122
    :cond_8
    if-eqz v1, :cond_9

    .line 123
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 125
    :cond_9
    iget-object v8, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    if-eqz v8, :cond_a

    .line 126
    iget-object v8, p0, Lcom/vivo/settings/SocketClient;->client:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    :cond_a
    throw v7

    .line 119
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 116
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_b
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method
