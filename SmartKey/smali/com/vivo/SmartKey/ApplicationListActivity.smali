.class public Lcom/vivo/SmartKey/ApplicationListActivity;
.super Lcom/vivo/app/VivoBaseActivity;
.source "ApplicationListActivity.java"


# static fields
.field public static final u:Ljava/util/Comparator;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;

.field private q:Lcom/vivo/common/widget/VivoListView;

.field private r:Lcom/vivo/SmartKey/g;

.field private s:Ljava/util/ArrayList;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/vivo/SmartKey/e;

    invoke-direct {v0}, Lcom/vivo/SmartKey/e;-><init>()V

    sput-object v0, Lcom/vivo/SmartKey/ApplicationListActivity;->u:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 52
    const-string v0, "SmartKeyApplicationListActivity"

    iput-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->t:I

    .line 176
    new-instance v0, Lcom/vivo/SmartKey/d;

    invoke-direct {v0, p0}, Lcom/vivo/SmartKey/d;-><init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method static synthetic a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/SmartKey/c;

    invoke-direct {v1, p0}, Lcom/vivo/SmartKey/c;-><init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/vivo/SmartKey/ApplicationListActivity;ZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(ZLjava/lang/String;I)V

    return-void
.end method

.method private a(ZLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    const-string v1, "select_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const-string v1, "appName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v1, "which"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->setResult(ILandroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private a(Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 173
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/SmartKey/ApplicationListActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->t:I

    return v0
.end method

.method static synthetic e(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/SmartKey/ApplicationListActivity;)Lcom/vivo/SmartKey/g;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->r:Lcom/vivo/SmartKey/g;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/SmartKey/ApplicationListActivity;)Lcom/vivo/common/widget/VivoListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->q:Lcom/vivo/common/widget/VivoListView;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 194
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 196
    const-string v0, "com.android.settings.applications.hideappprovider"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hideapps_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pkgname"

    aput-object v0, v2, v3

    const-string v3, "hided=1 "

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_1

    .line 202
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide pkgName is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_0
    :goto_1
    return-object v6

    .line 208
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->TAG:Ljava/lang/String;

    const-string v2, "data item is not exist !!!! "

    invoke-static {v0, v2}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_2
    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 215
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 145
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 146
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 147
    new-instance v5, Lcom/vivo/SmartKey/f;

    invoke-direct {v5, p0}, Lcom/vivo/SmartKey/f;-><init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V

    .line 148
    const-string v6, "com.facebook.katana"

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.camera"

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.bbk.lockscreen3"

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v4, v7}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    invoke-static {v0, v2}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 157
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, v5, Lcom/vivo/SmartKey/f;->icon:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/vivo/SmartKey/f;->packageName:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/vivo/SmartKey/f;->w:Ljava/lang/String;

    .line 160
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, v5, Lcom/vivo/SmartKey/f;->className:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v0

    .line 145
    goto :goto_0

    .line 164
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->setContentView(I)V

    .line 67
    iput-object p0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mContext:Landroid/content/Context;

    .line 68
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/widget/VivoListView;

    iput-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->q:Lcom/vivo/common/widget/VivoListView;

    .line 69
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 70
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mTextView:Landroid/widget/TextView;

    .line 71
    new-instance v0, Lcom/vivo/SmartKey/g;

    invoke-direct {v0, p0}, Lcom/vivo/SmartKey/g;-><init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->r:Lcom/vivo/SmartKey/g;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->s:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->q:Lcom/vivo/common/widget/VivoListView;

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/m;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 76
    invoke-direct {p0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a()V

    .line 78
    invoke-virtual {p0}, Lcom/vivo/SmartKey/ApplicationListActivity;->showTitleRightButton()V

    .line 79
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v0, Lcom/vivo/SmartKey/a;

    invoke-direct {v0, p0}, Lcom/vivo/SmartKey/a;-><init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 87
    const-string v1, "or_IN"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/vivo/SmartKey/ApplicationListActivity;->getTitleRightButton()Landroid/widget/Button;

    move-result-object v0

    .line 89
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/vivo/SmartKey/ApplicationListActivity;->q:Lcom/vivo/common/widget/VivoListView;

    new-instance v1, Lcom/vivo/SmartKey/b;

    invoke-direct {v1, p0}, Lcom/vivo/SmartKey/b;-><init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/VivoListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onResume()V

    .line 275
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onStop()V

    .line 282
    return-void
.end method
