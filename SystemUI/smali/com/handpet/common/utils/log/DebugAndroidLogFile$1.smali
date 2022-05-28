.class Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;
.super Ljava/lang/Object;
.source "DebugAndroidLogFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handpet/common/utils/log/DebugAndroidLogFile;->postLogMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handpet/common/utils/log/DebugAndroidLogFile;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/handpet/common/utils/log/DebugAndroidLogFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;->this$0:Lcom/handpet/common/utils/log/DebugAndroidLogFile;

    iput-object p2, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;->val$message:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 47
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "time":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;->val$message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "log":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;->this$0:Lcom/handpet/common/utils/log/DebugAndroidLogFile;

    invoke-static {v4}, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->access$0(Lcom/handpet/common/utils/log/DebugAndroidLogFile;)Ljava/io/FileOutputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
