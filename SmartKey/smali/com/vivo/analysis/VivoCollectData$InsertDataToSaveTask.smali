.class Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;
.super Landroid/os/AsyncTask;
.source "VivoCollectData.java"


# instance fields
.field private duration:J

.field private endTime:J

.field private eventId:Ljava/lang/String;

.field private hashParams:Ljava/util/HashMap;

.field private key:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/vivo/analysis/VivoCollectData;

.field private type:I

.field private useNum:I

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 115
    iput-object p1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 105
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 106
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 107
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 108
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 109
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 111
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 116
    iput-object p2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 118
    iput-wide p4, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 119
    iput-wide p6, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 120
    iput-wide p8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 121
    iput p10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 122
    iput-object p11, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p11}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 126
    iput-object p1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 105
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 106
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 107
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 108
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 109
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 111
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 127
    iput-object p2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 140
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 145
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$1(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$1(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 159
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 160
    if-eqz v0, :cond_1

    .line 161
    const-string v1, "log_from"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :cond_1
    :goto_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 168
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v2}, Lcom/vivo/analysis/VivoCollectData;->access$2(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v2}, Lcom/vivo/analysis/VivoCollectData;->access$3(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$4(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$5(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$6(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$7(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$8(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$9(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$10(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$11(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v2}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 146
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    :try_start_4
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 153
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 163
    :catch_2
    move-exception v0

    .line 165
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$2(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$4(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$5(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$6(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$7(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$8(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$9(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$10(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$11(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v2}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$2(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$4(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$5(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$6(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$7(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$8(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$9(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$10(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$11(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v2}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$2(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$12(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$13(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$9(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v0}, Lcom/vivo/analysis/VivoCollectData;->access$10(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v1}, Lcom/vivo/analysis/VivoCollectData;->access$14(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v2}, Lcom/vivo/analysis/VivoCollectData;->access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
