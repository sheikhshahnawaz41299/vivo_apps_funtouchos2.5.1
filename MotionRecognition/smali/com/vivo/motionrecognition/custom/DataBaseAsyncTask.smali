.class public Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "DataBaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAME:Ljava/lang/String; = "activityname"

.field public static final APP_NAME:Ljava/lang/String; = "appname"

.field public static final AUTHORITY:Ljava/lang/String; = "com.custom.database"

.field public static final CONTACT_NAME:Ljava/lang/String; = "callname"

.field public static final CONTACT_NUMBER:Ljava/lang/String; = "callnumber"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FUNCTION:Ljava/lang/String; = "function"

.field public static final IC_NO:Ljava/lang/String; = "icno"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final OPERATION:Ljava/lang/String; = "operation"

.field public static final PK_NAME:Ljava/lang/String; = "pkname"

.field public static final POINT:Ljava/lang/String; = "pointic"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final QUERYFUNCTION:Ljava/lang/String; = "query_function"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE:Ljava/lang/String; = "update"


# instance fields
.field private dataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/motionrecognition/custom/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

.field private mPostExecute:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;

.field private opreation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, "content://com.custom.database/gestureic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    invoke-direct {p0, p1, v0, v0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->initAsyncTask(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPostExecute"    # Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->initAsyncTask(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/vivo/motionrecognition/custom/DataItem;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->initAsyncTask(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/vivo/motionrecognition/custom/DataItem;
    .param p3, "mPostExecute"    # Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->initAsyncTask(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V

    .line 60
    return-void
.end method

.method private customGestureFunction(Lcom/vivo/motionrecognition/custom/DataItem;)V
    .locals 5
    .param p1, "item"    # Lcom/vivo/motionrecognition/custom/DataItem;

    .prologue
    const/4 v4, -0x1

    .line 157
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getFunction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 158
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->queryContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    :cond_0
    invoke-virtual {p1, v4}, Lcom/vivo/motionrecognition/custom/DataItem;->setFunction(I)V

    .line 173
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 165
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallName(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getFunction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getPkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vivo/motionrecognition/custom/DataItem;->getClsName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->getPkgClsLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p1, v4}, Lcom/vivo/motionrecognition/custom/DataItem;->setFunction(I)V

    goto :goto_0
.end method

.method private getPattern(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "strPoints"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "patternPoint":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v6, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 224
    .local v7, "s":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "coordinate":[Ljava/lang/String;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 226
    .local v4, "p":Landroid/graphics/Point;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Point;->x:I

    .line 227
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Landroid/graphics/Point;->y:I

    .line 228
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "coordinate":[Ljava/lang/String;
    .end local v4    # "p":Landroid/graphics/Point;
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method private getPkgClsLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object v3

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 210
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 215
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initAsyncTask(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataItem;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataItem"    # Lcom/vivo/motionrecognition/custom/DataItem;
    .param p3, "mPostExecute"    # Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    .line 67
    iput-object p3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mPostExecute:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->dataItems:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method private queryContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    sget-object v0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v8, ""

    .line 177
    .local v8, "name":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v4

    const-string v0, "display_name_source"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 181
    .local v2, "projection":[Ljava/lang/String;
    const-string v10, "indicate_phone_or_sim_contact"

    .line 182
    .local v10, "sortOrder":Ljava/lang/String;
    const-string v9, "data1 = ?"

    .line 183
    .local v9, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 185
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "encrypt"

    const-string v4, "<2"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "data1 = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "indicate_phone_or_sim_contact"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 194
    .local v7, "index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 198
    .end local v7    # "index":I
    :cond_0
    if-eqz v6, :cond_1

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_1
    :goto_0
    sget-object v0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-object v8

    .line 196
    :catch_0
    move-exception v0

    .line 198
    if-eqz v6, :cond_1

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private queryGesture()V
    .locals 15

    .prologue
    .line 97
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "icno"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pointic"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "appname"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "activityname"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "pkname"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "callname"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "callnumber"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "function"

    aput-object v1, v2, v0

    .line 98
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 99
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 100
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    new-instance v11, Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-direct {v11}, Lcom/vivo/motionrecognition/custom/DataItem;-><init>()V

    .line 103
    .local v11, "item":Lcom/vivo/motionrecognition/custom/DataItem;
    const-string v0, "icno"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setIndex(I)V

    .line 104
    const-string v0, "pointic"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "data":Ljava/lang/String;
    const-string v0, "activityname"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setClsName(Ljava/lang/String;)V

    .line 106
    const-string v0, "pkname"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setPkName(Ljava/lang/String;)V

    .line 107
    const-string v0, "callname"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallName(Ljava/lang/String;)V

    .line 108
    const-string v0, "callnumber"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setCallNumber(Ljava/lang/String;)V

    .line 109
    const-string v0, "function"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setFunction(I)V

    .line 110
    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "patternPoint":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-direct {p0, v0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->getPattern(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setPoints(Ljava/util/ArrayList;)V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 114
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 115
    .local v12, "mainIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v11}, Lcom/vivo/motionrecognition/custom/DataItem;->getPkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/vivo/motionrecognition/custom/DataItem;->getClsName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    const/4 v0, 0x0

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 119
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps.size ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 121
    sget-object v1, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLabel ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setAppName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "mainIntent":Landroid/content/Intent;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    .end local v8    # "data":Ljava/lang/String;
    .end local v11    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    .end local v13    # "patternPoint":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 134
    .restart local v11    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    invoke-direct {p0, v11}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->customGestureFunction(Lcom/vivo/motionrecognition/custom/DataItem;)V

    goto :goto_1

    .line 124
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "data":Ljava/lang/String;
    .restart local v12    # "mainIntent":Landroid/content/Intent;
    .restart local v13    # "patternPoint":[Ljava/lang/String;
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    const-string v0, "appname"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setAppName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "mainIntent":Landroid/content/Intent;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v9

    .line 128
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "appname"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vivo/motionrecognition/custom/DataItem;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v8    # "data":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    .end local v13    # "patternPoint":[Ljava/lang/String;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 138
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private queryGestureFunction()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method private updateGestureData()V
    .locals 5

    .prologue
    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v0, "values":Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icno="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "where":Ljava/lang/String;
    const-string v2, "activityname"

    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/DataItem;->getClsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "pkname"

    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/DataItem;->getPkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "appname"

    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/DataItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "callname"

    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "callnumber"

    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/DataItem;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "function"

    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mDataItem:Lcom/vivo/motionrecognition/custom/DataItem;

    invoke-virtual {v3}, Lcom/vivo/motionrecognition/custom/DataItem;->getFunction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "params"    # [Landroid/os/Bundle;

    .prologue
    .line 73
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->opreation:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->opreation:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->queryGesture()V

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->opreation:Ljava/lang/String;

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->updateGestureData()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->opreation:Ljava/lang/String;

    const-string v2, "query_function"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->queryGestureFunction()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->opreation:Ljava/lang/String;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vivo/motionrecognition/custom/GestureSingleton;->setGestureItems(Ljava/util/ArrayList;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mPostExecute:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->mPostExecute:Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;

    invoke-interface {v0, p1}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;->OnPostExecute(Landroid/os/Bundle;)V

    .line 95
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
