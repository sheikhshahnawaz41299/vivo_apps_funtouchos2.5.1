.class public Lcom/squareup/leakcanary/DisplayLeakService;
.super Lcom/squareup/leakcanary/AbstractAnalysisResultService;
.source "DisplayLeakService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;-><init>()V

    return-void
.end method

.method private renameHeapdump(Lcom/squareup/leakcanary/HeapDump;Ljava/lang/String;)Lcom/squareup/leakcanary/HeapDump;
    .locals 19
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "leakInfo"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd_HH-mm-ss_SSS\'.hprof\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 159
    .local v14, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/squareup/leakcanary/DisplayLeakService;->saveLogInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v4, "newFile":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v17

    .line 163
    .local v17, "renamed":Z
    if-nez v17, :cond_0

    .line 164
    const-string v5, "Could not rename heap dump file %s to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 164
    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_0
    new-instance v3, Lcom/squareup/leakcanary/HeapDump;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 169
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    .line 168
    invoke-direct/range {v3 .. v13}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs;JJJ)V

    .line 171
    .end local p1    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .local v3, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 172
    .local v18, "resources":Landroid/content/res/Resources;
    const/16 v16, 0x64

    .line 173
    .local v16, "maxStoredHeapDumps":I
    iget-object v5, v3, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/squareup/leakcanary/DisplayLeakService$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/squareup/leakcanary/DisplayLeakService$1;-><init>(Lcom/squareup/leakcanary/DisplayLeakService;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v15

    .line 179
    .local v15, "hprofFiles":[Ljava/io/File;
    array-length v5, v15

    move/from16 v0, v16

    if-le v5, v0, :cond_1

    .line 181
    new-instance v5, Lcom/squareup/leakcanary/DisplayLeakService$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/squareup/leakcanary/DisplayLeakService$2;-><init>(Lcom/squareup/leakcanary/DisplayLeakService;)V

    invoke-static {v15, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 186
    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    .line 187
    .local v2, "deleted":Z
    if-nez v2, :cond_1

    .line 188
    const-string v5, "Could not delete old hprof file %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v15, v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .end local v2    # "deleted":Z
    :cond_1
    return-object v3
.end method

.method private saveLogInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "leakInfo"    # Ljava/lang/String;
    .param p2, "preName"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v2, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;

    invoke-virtual {p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, "directoryProvider":Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;
    invoke-virtual {v2}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->leakDirectory()Ljava/io/File;

    move-result-object v1

    .line 106
    .local v1, "dir":Ljava/io/File;
    const/4 v4, 0x0

    .line 108
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_LeakLog.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 110
    .local v6, "fileOS":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 111
    .local v0, "buf":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 113
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 117
    .end local v0    # "buf":Ljava/io/BufferedWriter;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v4    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method private saveResult(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)Z
    .locals 9
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    const/4 v5, 0x0

    .line 133
    new-instance v4, Ljava/io/File;

    iget-object v6, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v4, "resultFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 137
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    if-eqz v2, :cond_0

    .line 147
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    :cond_0
    :goto_0
    const/4 v5, 0x1

    move-object v1, v2

    .line 152
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v5

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "Could not save leak analysis result to disk."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    if-eqz v1, :cond_1

    .line 147
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 148
    :catch_1
    move-exception v6

    goto :goto_1

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 145
    :goto_3
    if-eqz v1, :cond_2

    .line 147
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 151
    :cond_2
    :goto_4
    throw v5

    .line 148
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 144
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 142
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method protected afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V
    .locals 0
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;
    .param p3, "leakInfo"    # Ljava/lang/String;

    .prologue
    .line 200
    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 123
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 124
    invoke-virtual {p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 125
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onHeapAnalyzed(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
    .locals 12
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 52
    invoke-static {p0, p1, p2, v9}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "leakInfo":Ljava/lang/String;
    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v3, v10}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 v5, 0x0

    .line 56
    .local v5, "resultSaved":Z
    iget-boolean v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    if-nez v10, :cond_2

    iget-object v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v10, :cond_2

    .line 57
    .local v6, "shouldSaveResult":Z
    :goto_0
    if-eqz v6, :cond_0

    iget-boolean v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    if-nez v9, :cond_0

    .line 58
    invoke-direct {p0, p1, v3}, Lcom/squareup/leakcanary/DisplayLeakService;->renameHeapdump(Lcom/squareup/leakcanary/HeapDump;Ljava/lang/String;)Lcom/squareup/leakcanary/HeapDump;

    move-result-object p1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/DisplayLeakService;->saveResult(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)Z

    move-result v5

    .line 66
    :cond_0
    const/4 v7, 0x0

    .line 67
    .local v7, "showNotify":Z
    if-nez v6, :cond_3

    .line 68
    const-string v2, "No leak found"

    .line 69
    .local v2, "contentTitle":Ljava/lang/String;
    const-string v1, "The GC was being lazy."

    .line 70
    .local v1, "contentText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 96
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    if-eqz v7, :cond_1

    .line 97
    invoke-static {p0, v2, v1, v4}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->showNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 99
    :cond_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    .line 100
    return-void

    .end local v1    # "contentText":Ljava/lang/String;
    .end local v2    # "contentTitle":Ljava/lang/String;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "shouldSaveResult":Z
    .end local v7    # "showNotify":Z
    :cond_2
    move v6, v9

    .line 56
    goto :goto_0

    .line 71
    .restart local v6    # "shouldSaveResult":Z
    .restart local v7    # "showNotify":Z
    :cond_3
    if-eqz v5, :cond_6

    .line 72
    iget-object v9, p1, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 74
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    iget-object v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v9, :cond_5

    .line 76
    iget-wide v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    invoke-static {p0, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "size":Ljava/lang/String;
    iget-object v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v9}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "className":Ljava/lang/String;
    iget-boolean v9, p2, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    if-eqz v9, :cond_4

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " has leaked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (excluded leak)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .restart local v2    # "contentTitle":Ljava/lang/String;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getApplicationName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .end local v0    # "className":Ljava/lang/String;
    .end local v8    # "size":Ljava/lang/String;
    :goto_3
    const-string v1, "Click for more details"

    .line 91
    .restart local v1    # "contentText":Ljava/lang/String;
    goto :goto_1

    .line 81
    .end local v1    # "contentText":Ljava/lang/String;
    .end local v2    # "contentTitle":Ljava/lang/String;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v8    # "size":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "  has leaked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentTitle":Ljava/lang/String;
    goto :goto_2

    .line 87
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "contentTitle":Ljava/lang/String;
    .end local v8    # "size":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getApplicationName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " Leak analysis failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "contentTitle":Ljava/lang/String;
    const/4 v7, 0x1

    goto :goto_3

    .line 92
    .end local v2    # "contentTitle":Ljava/lang/String;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_6
    const-string v2, "Could not save result."

    .line 93
    .restart local v2    # "contentTitle":Ljava/lang/String;
    const-string v1, "LeakCanary was unable to save the analysis result."

    .line 94
    .restart local v1    # "contentText":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1
.end method
