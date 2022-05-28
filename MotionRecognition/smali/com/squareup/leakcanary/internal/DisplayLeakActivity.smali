.class public final Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.super Landroid/app/Activity;
.source "DisplayLeakActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    }
.end annotation


# static fields
.field private static final SHOW_LEAK_EXTRA:Ljava/lang/String; = "show_latest"

.field private static final TAG:Ljava/lang/String; = "DisplayLeakActivity"

.field private static leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private failureView:Landroid/widget/TextView;

.field private leadInfoView:Landroid/widget/TextView;

.field leaks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field visibleLeakRefKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 561
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 562
    .local v0, "separator":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 565
    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referenceKey"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_latest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static getLeakDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .line 97
    .local v0, "leakDirectoryProvider":Lcom/squareup/leakcanary/LeakDirectoryProvider;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->leakDirectory()Ljava/io/File;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;

    invoke-direct {v1, p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->leakDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static setLeakDirectoryProvider(Lcom/squareup/leakcanary/LeakDirectoryProvider;)V
    .locals 0
    .param p0, "leakDirectoryProvider"    # Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .prologue
    .line 92
    sput-object p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .line 93
    return-void
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 363
    const-string v6, ""

    .line 364
    .local v6, "pkgName":Ljava/lang/String;
    const-string v1, "."

    .line 365
    .local v1, "SEP":Ljava/lang/String;
    const/4 v5, 0x0

    .line 366
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 367
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, ""

    .line 369
    .local v3, "applicationName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 370
    const-string v8, ""

    .line 390
    :goto_0
    return-object v8

    .line 373
    :cond_0
    :try_start_0
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "pkgNames":[Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v9, 0x3

    if-le v8, v9, :cond_1

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 377
    :cond_1
    const-string v8, "DisplayLeakActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "className="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pkgNames="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", final pkgName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 379
    const-string v8, ""

    goto :goto_0

    .line 382
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 383
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 384
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    .end local v7    # "pkgNames":[Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 385
    :catch_0
    move-exception v4

    .line 386
    .local v4, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 387
    const-string v8, "DisplayLeakActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getApplicationName e="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 402
    :goto_0
    return-object v0

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 402
    goto :goto_0

    .line 397
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    .line 398
    .local v0, "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v3, v3, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0x8

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v3, 0x103006b

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTheme(I)V

    .line 116
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 117
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 121
    :cond_0
    if-eqz p1, :cond_2

    .line 122
    const-string v3, "visibleLeakRefKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    .line 133
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const-string v3, "#3c3c3c"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 135
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    .line 137
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    const/16 v4, 0x12

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setContentView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 150
    return-void

    .line 124
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "show_latest"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const-string v3, "show_latest"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    .line 184
    .local v0, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-eqz v0, :cond_1

    .line 185
    const-string v1, "Share info"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 186
    new-instance v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;

    invoke-direct {v2, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 192
    iget-object v1, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v1, v1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "Share heap dump"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 194
    new-instance v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;

    invoke-direct {v2, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 201
    :cond_0
    const/4 v1, 0x1

    .line 203
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->forgetActivity()V

    .line 180
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 211
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    invoke-static {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 165
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "visibleLeakRefKey"

    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method shareHeapDump()V
    .locals 5

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 234
    .local v2, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v0, v3, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 235
    .local v0, "heapDumpFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    const-string v3, "Share with\u2026"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method shareLeak()V
    .locals 6

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 225
    .local v2, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v4, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "leakInfo":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v3, "Share with\u2026"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method updateUi()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 243
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-nez v8, :cond_0

    .line 244
    const-string v8, "Loading leaks..."

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 248
    iput-object v12, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v7

    .line 252
    .local v7, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-nez v7, :cond_2

    .line 253
    iput-object v12, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 256
    :cond_2
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 258
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 259
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    if-eqz v7, :cond_6

    .line 262
    iget-object v4, v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    .line 263
    .local v4, "result":Lcom/squareup/leakcanary/AnalysisResult;
    iget-object v8, v4, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 264
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 266
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Please report this failure to http://github.com/square/leakcanary\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object v10, v4, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    .line 267
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const-string v8, "Leak analysis failed"

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 271
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    const-string v9, "Delete"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 276
    :cond_3
    instance-of v8, v3, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    if-eqz v8, :cond_5

    move-object v0, v3

    .line 277
    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    .line 310
    .local v0, "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    :goto_1
    iget-object v2, v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    .line 311
    .local v2, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    iget-object v8, v4, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    iget-object v9, v2, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v10, v2, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->update(Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-wide v8, v4, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    invoke-static {p0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "size":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " has leaked "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "title":Ljava/lang/String;
    iget-object v8, v4, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "appName":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 317
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    .line 318
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "<font color=\'#ff0000\'>"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has leaked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</font>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 322
    :cond_4
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 279
    .end local v0    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v5    # "size":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    invoke-direct {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;-><init>()V

    .line 280
    .restart local v0    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v9, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;

    invoke-direct {v9, p0, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 287
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 288
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    const-string v9, "Delete"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v9, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;

    invoke-direct {v9, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 325
    .end local v0    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v4    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_6
    instance-of v8, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    if-eqz v8, :cond_7

    .line 326
    check-cast v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->notifyDataSetChanged()V

    .line 357
    :goto_2
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 358
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leadInfoView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 328
    .restart local v3    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_7
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 329
    .local v0, "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v9, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;

    invoke-direct {v9, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 338
    const-string v8, "All Leaks"

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    const-string v9, "Delete all"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v9, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;

    invoke-direct {v9, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
