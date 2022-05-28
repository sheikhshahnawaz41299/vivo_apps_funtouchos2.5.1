.class Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;
.super Landroid/os/AsyncTask;
.source "VivoCollectData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/analysis/VivoCollectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertDataToSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private duration:J

.field private endTime:J

.field private eventId:Ljava/lang/String;

.field private hashParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J
    .param p8, "duration"    # J
    .param p10, "useNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p11, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 123
    iput-object p1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 113
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 114
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 115
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 116
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 117
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 119
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 121
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 124
    iput-object p2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 126
    iput-wide p4, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 127
    iput-wide p6, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 128
    iput-wide p8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 129
    iput p10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 130
    iput-object p11, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;Lcom/vivo/analysis/VivoCollectData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/analysis/VivoCollectData;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # I
    .param p11, "x7"    # Ljava/util/HashMap;
    .param p12, "x8"    # Lcom/vivo/analysis/VivoCollectData$1;

    .prologue
    .line 109
    invoke-direct/range {p0 .. p11}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 134
    iput-object p1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    .line 113
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    .line 114
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    .line 115
    iput-wide v2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    .line 116
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    .line 117
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    .line 119
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 121
    iput v1, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 135
    iput-object p2, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    .line 138
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/analysis/VivoCollectData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/analysis/VivoCollectData;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/vivo/analysis/VivoCollectData$1;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 143
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 144
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 147
    :cond_0
    :try_start_0
    iget v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->type:I

    packed-switch v7, :pswitch_data_0

    .line 207
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 149
    :pswitch_0
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    .line 150
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->hashParams:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 151
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 155
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .local v6, "val":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$300(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "insertData"

    invoke-static {v7, v8, v0}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 205
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$300(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "InsertDataToSaveTask"

    invoke-static {v7, v8, v0}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 163
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "eventValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$400(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$500(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$600(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$700(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$800(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$900(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1000(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1100(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$1300(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1200(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v9}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 174
    .end local v2    # "eventValue":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$400(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$600(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$700(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$800(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$900(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1000(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1100(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$1300(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1200(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v9}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 184
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$400(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$600(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->startTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$700(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->endTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$800(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$900(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->useNum:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1000(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->label:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1100(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$1300(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1200(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v9}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 195
    :pswitch_1
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$400(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->eventId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1400(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1500(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->value:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1100(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    iget-object v7, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v7}, Lcom/vivo/analysis/VivoCollectData;->access$1300(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v8}, Lcom/vivo/analysis/VivoCollectData;->access$1600(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->this$0:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {v9}, Lcom/vivo/analysis/VivoCollectData;->access$200(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
