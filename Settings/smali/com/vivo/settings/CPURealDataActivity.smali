.class public Lcom/vivo/settings/CPURealDataActivity;
.super Lcom/vivo/settings/VivoSettingsBaseActivity;
.source "CPURealDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;,
        Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;
    }
.end annotation


# static fields
.field private static final CPU_PATH:Ljava/lang/String; = "/sys/devices/system/cpu"

.field private static final TAG:Ljava/lang/String; = "CPURealDateActivity"

.field private static mProductModel:Ljava/lang/String;

.field private static mShowRangeText:Z


# instance fields
.field private mCpuCoresCount:I

.field private mGridAdapter:Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;

.field private mGridView:Lcom/vivo/settings/VivoCpuGridView;

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/settings/CPURealDataActivity;->mShowRangeText:Z

    .line 59
    const-string v0, "PDXXXX"

    sput-object v0, Lcom/vivo/settings/CPURealDataActivity;->mProductModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/CPURealDataActivity;)Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/CPURealDataActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridAdapter:Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/CPURealDataActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/CPURealDataActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/CPURealDataActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/CPURealDataActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mCpuCoresCount:I

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/vivo/settings/CPURealDataActivity;->mShowRangeText:Z

    return v0
.end method

.method private getCpuCoresCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "count":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    const/4 v5, 0x1

    .line 209
    :goto_0
    return v5

    .line 196
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 197
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 198
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 199
    aget-object v1, v3, v4

    .line 200
    .local v1, "f":Ljava/io/File;
    const-string v5, "cpu[0-9]{1,2}"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 198
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "i":I
    :cond_2
    if-gtz v0, :cond_3

    .line 206
    const/4 v0, 0x1

    .line 208
    :cond_3
    const-string v5, "CPURealDateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kernel count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    .line 209
    goto :goto_0
.end method

.method private static readContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 255
    const/4 v5, 0x0

    .line 256
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 257
    .local v8, "tempString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 259
    .local v7, "targetString":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object v9

    .line 262
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 268
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    :goto_1
    if-eqz v6, :cond_5

    .line 280
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v6

    .line 288
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 289
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 290
    .local v4, "rangeInt":I
    int-to-float v9, v4

    const v10, 0x49742400    # 1000000.0f

    div-float v3, v9, v10

    .line 291
    .local v3, "freqFloat":F
    const-string v9, "%3.2f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v3    # "freqFloat":F
    .end local v4    # "rangeInt":I
    :cond_3
    move-object v9, v7

    .line 294
    goto :goto_0

    .line 272
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reader.readLine():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v5, v6

    .line 276
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    const-string v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the readCpuFreqFileleByline is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    if-eqz v5, :cond_2

    .line 280
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 281
    :catch_2
    move-exception v1

    .line 282
    .local v1, "e1":Ljava/io/IOException;
    const-string v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the readCpuFreqFileleByline is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 281
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 282
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the readCpuFreqFileleByline is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 284
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 278
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v5, :cond_4

    .line 280
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 284
    :cond_4
    :goto_5
    throw v9

    .line 281
    :catch_4
    move-exception v1

    .line 282
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the readCpuFreqFileleByline is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 278
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 275
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public static readCpuFreqFileleByline(I)Ljava/lang/String;
    .locals 2
    .param p0, "position"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "fileName":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 241
    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    .line 217
    :pswitch_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 244
    :goto_1
    invoke-static {v0}, Lcom/vivo/settings/CPURealDataActivity;->readContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :pswitch_1
    const-string v0, "/sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq"

    .line 221
    goto :goto_1

    .line 223
    :pswitch_2
    const-string v0, "/sys/devices/system/cpu/cpu2/cpufreq/scaling_cur_freq"

    .line 224
    goto :goto_1

    .line 226
    :pswitch_3
    const-string v0, "/sys/devices/system/cpu/cpu3/cpufreq/scaling_cur_freq"

    .line 227
    goto :goto_1

    .line 229
    :pswitch_4
    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/scaling_cur_freq"

    .line 230
    goto :goto_1

    .line 232
    :pswitch_5
    const-string v0, "/sys/devices/system/cpu/cpu5/cpufreq/scaling_cur_freq"

    .line 233
    goto :goto_1

    .line 235
    :pswitch_6
    const-string v0, "/sys/devices/system/cpu/cpu6/cpufreq/scaling_cur_freq"

    .line 236
    goto :goto_1

    .line 238
    :pswitch_7
    const-string v0, "/sys/devices/system/cpu/cpu7/cpufreq/scaling_cur_freq"

    .line 239
    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static readCpuRangeFileleByline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "fileName":Ljava/lang/String;
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 251
    invoke-static {v0}, Lcom/vivo/settings/CPURealDataActivity;->readContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/vivo/settings/CPURealDataActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/vivo/settings/CPURealDataActivity;->showBBKBackButton()V

    .line 65
    const v0, 0x7f0b07e8

    invoke-virtual {p0, v0}, Lcom/vivo/settings/CPURealDataActivity;->setTitle(I)V

    .line 67
    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/vivo/settings/CPURealDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/VivoCpuGridView;

    iput-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridView:Lcom/vivo/settings/VivoCpuGridView;

    .line 68
    new-instance v0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;

    const v1, 0x7f04002d

    invoke-direct {v0, p0, p0, v1}, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;-><init>(Lcom/vivo/settings/CPURealDataActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridAdapter:Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;

    .line 69
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridView:Lcom/vivo/settings/VivoCpuGridView;

    iget-object v1, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridAdapter:Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/VivoCpuGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridView:Lcom/vivo/settings/VivoCpuGridView;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/VivoCpuGridView;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridView:Lcom/vivo/settings/VivoCpuGridView;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/VivoCpuGridView;->setFocusable(Z)V

    .line 72
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mGridView:Lcom/vivo/settings/VivoCpuGridView;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/VivoCpuGridView;->setFocusableInTouchMode(Z)V

    .line 74
    const-string v0, "/sys/devices/system/cpu"

    invoke-direct {p0, v0}, Lcom/vivo/settings/CPURealDataActivity;->getCpuCoresCount(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mCpuCoresCount:I

    .line 76
    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/CPURealDataActivity;->mProductModel:Ljava/lang/String;

    .line 77
    const-string v0, "CPURealDateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProductName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/settings/CPURealDataActivity;->mProductModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/vivo/settings/CPURealDataActivity;->mProductModel:Ljava/lang/String;

    const-string v1, "PD1225"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vivo/settings/CPURealDataActivity;->mProductModel:Ljava/lang/String;

    const-string v1, "PD1303"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/settings/CPURealDataActivity;->mShowRangeText:Z

    .line 81
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mTimer:Ljava/util/Timer;

    .line 111
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 85
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mTimer:Ljava/util/Timer;

    .line 89
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/settings/CPURealDataActivity$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/CPURealDataActivity$1;-><init>(Lcom/vivo/settings/CPURealDataActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 101
    :cond_0
    return-void
.end method
