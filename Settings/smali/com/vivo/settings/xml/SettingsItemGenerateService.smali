.class public Lcom/vivo/settings/xml/SettingsItemGenerateService;
.super Landroid/app/Service;
.source "SettingsItemGenerateService.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "com.android.settings.xml"

.field static final FILE_PARENT_PATH:Ljava/lang/String; = "/data/bbkcore/search/"

.field private static final PREF_KEY_STORED_VERSION:Ljava/lang/String; = "stored_version"

.field static final TAG:Ljava/lang/String; = "SettingsItemGenerateService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static builNodeStringsInner(Ljava/util/Locale;Landroid/content/res/Resources;Lcom/vivo/settings/xml/Node;)V
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "n"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 158
    invoke-virtual {p2}, Lcom/vivo/settings/xml/Node;->isStringResourceExecuted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    :cond_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p2}, Lcom/vivo/settings/xml/Node;->getStrRes()I

    move-result v3

    .line 162
    .local v3, "strRes":I
    if-lez v3, :cond_2

    .line 164
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p0, v4}, Lcom/vivo/settings/xml/Node;->setDescription(Ljava/util/Locale;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/vivo/settings/xml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 170
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/xml/Node;>;"
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/xml/Node;

    .line 172
    .local v0, "child":Lcom/vivo/settings/xml/Node;
    invoke-static {p0, p1, v0}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->builNodeStringsInner(Ljava/util/Locale;Landroid/content/res/Resources;Lcom/vivo/settings/xml/Node;)V

    goto :goto_1

    .line 165
    .end local v0    # "child":Lcom/vivo/settings/xml/Node;
    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/xml/Node;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static varargs buildNodeStrings(Landroid/content/res/Resources;[Lcom/vivo/settings/xml/Node;)V
    .locals 14
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "nodes"    # [Lcom/vivo/settings/xml/Node;

    .prologue
    .line 139
    invoke-static {}, Lcom/vivo/settings/xml/Node;->getSupportLocals()[Ljava/util/Locale;

    move-result-object v9

    .line 140
    .local v9, "locales":[Ljava/util/Locale;
    move-object v0, v9

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v6, v0, v5

    .line 141
    .local v6, "l":Ljava/util/Locale;
    if-nez v6, :cond_1

    .line 142
    const-string v11, "SettingsItemGenerateService"

    const-string v12, "locale is null"

    invoke-static {v11, v12}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v5    # "i$":I
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 145
    :cond_1
    const-string v11, "SettingsItemGenerateService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "support locale :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 147
    .local v2, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 148
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iput-object v6, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 150
    move-object v1, p1

    .local v1, "arr$":[Lcom/vivo/settings/xml/Node;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v10, v1, v4

    .line 151
    .local v10, "n":Lcom/vivo/settings/xml/Node;
    invoke-static {v6, p0, v10}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->builNodeStringsInner(Ljava/util/Locale;Landroid/content/res/Resources;Lcom/vivo/settings/xml/Node;)V

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "arr$":[Lcom/vivo/settings/xml/Node;
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "i$":I
    .end local v6    # "l":Ljava/util/Locale;
    .end local v8    # "len$":I
    .end local v10    # "n":Lcom/vivo/settings/xml/Node;
    .restart local v5    # "i$":I
    :cond_2
    return-void
.end method

.method static logd(Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {}, Lcom/vivo/settings/Vlog;->getLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v1, "SettingsItemGenerateService"

    if-nez p0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static startServiceIfNeeded(Landroid/content/Context;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceupdate"    # Z

    .prologue
    .line 47
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 49
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "stored_version"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "storedVer":Ljava/lang/String;
    const-string v5, "ro.vivo.product.version"

    const-string v6, "unkonw"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "currentVer":Ljava/lang/String;
    const-string v5, "SettingsItemGenerateService"

    const-string v6, "Stored ver: [%s] current ver: [%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/bbkcore/search/com.android.settings.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "file":Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 55
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "stored_version"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/vivo/settings/xml/SettingsItemGenerateService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    const-string v9, "onCreate"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 80
    sget-object v7, Lcom/android/settings/SettingsActivity;->SETTINGS_RESOUCE:Lcom/android/settings/SettingsActivity$MainSettingsResouce;

    .line 81
    .local v7, "rootSettingsResouce":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<*>;"
    new-instance v5, Lcom/vivo/settings/xml/Node;

    invoke-direct {v5}, Lcom/vivo/settings/xml/Node;-><init>()V

    .line 82
    .local v5, "node":Lcom/vivo/settings/xml/Node;
    invoke-virtual {v7, v5}, Lcom/vivo/settings/xml/SettingsResouce;->fixIntent(Lcom/vivo/settings/xml/Node;)V

    .line 83
    invoke-virtual {v7, p0}, Lcom/vivo/settings/xml/SettingsResouce;->getSearchNodes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/vivo/settings/xml/Node;->addChildren(Ljava/util/List;)V

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/vivo/settings/xml/Node;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->buildNodeStrings(Landroid/content/res/Resources;[Lcom/vivo/settings/xml/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 90
    :goto_0
    const/4 v9, 0x1

    :try_start_1
    new-array v9, v9, [Lcom/vivo/settings/xml/Node;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v9}, Lcom/vivo/settings/xml/XmlWriter;->buildXml([Lcom/vivo/settings/xml/Node;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 91
    .local v1, "doc":Lorg/w3c/dom/Document;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/bbkcore/search/"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 93
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    const-string v9, "/data/bbkcore/search/com.android.settings.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 95
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .local v6, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 100
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    invoke-static {v1, v0}, Lcom/vivo/settings/xml/XmlWriter;->outputXml(Lorg/w3c/dom/Document;Ljava/io/Writer;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 103
    const-string v9, "vivo_daemon.service"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/daemon/VivoDmServiceProxy;

    move-result-object v8

    .line 104
    .local v8, "vivoDmServiceProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    if-eqz v8, :cond_0

    .line 105
    const-string v9, "chmod 644 /data/bbkcore/search/com.android.settings.xml"

    invoke-virtual {v8, v9}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShell(Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 119
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v8    # "vivoDmServiceProxy":Lcom/vivo/services/daemon/VivoDmServiceProxy;
    :cond_0
    :goto_1
    :try_start_2
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v10, "/data/bbkcore/search/"

    const/16 v11, 0x1ff

    invoke-interface {v9, v10, v11}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_5

    .line 124
    :goto_2
    :try_start_3
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v10, "/data/bbkcore/search/com.android.settings.xml"

    const/16 v11, 0x1a4

    invoke-interface {v9, v10, v11}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_6

    .line 129
    :goto_3
    invoke-virtual {p0}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->stopSelf()V

    .line 130
    return-void

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v9, "SettingsItemGenerateService"

    const-string v10, "error "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v9, "SettingsItemGenerateService"

    const-string v10, "error "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 111
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 112
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    const-string v9, "SettingsItemGenerateService"

    const-string v10, "error "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 113
    .end local v2    # "e":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SettingsItemGenerateService"

    const-string v10, "error "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 116
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "SettingsItemGenerateService"

    const-string v10, "error "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 120
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v2

    .line 121
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v9, "SettingsItemGenerateService"

    const-string v10, "error "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 125
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_6
    move-exception v2

    .line 126
    .restart local v2    # "e":Landroid/system/ErrnoException;
    const-string v9, "SettingsItemGenerateService"

    const-string v10, "error "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 86
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_7
    move-exception v9

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "SettingsItemGenerateService"

    const-string v1, "service destory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 136
    return-void
.end method
