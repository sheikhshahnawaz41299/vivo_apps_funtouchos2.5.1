.class public Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;
.super Ljava/lang/Object;
.source "SwitcherPrefsManager.java"


# static fields
.field public static final HIDE_SWITCHER_COUNT_KEY:Ljava/lang/String; = "hide_switcher_count"

.field public static final HIDE_SWITCHER_PREFS_NAME:Ljava/lang/String; = "upslide_hide_switcher"

.field public static final SHOW_SWITCHER_COUNT_KEY:Ljava/lang/String; = "show_switcher_count"

.field public static final SHOW_SWITCHER_PREFS_NAME:Ljava/lang/String; = "upslide_show_switcher"

.field public static final TAG:Ljava/lang/String; = "SwitcherPrefsManager"

.field private static mPrefsManager:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

.field public static sInitialHideSwitchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHideSwitcherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideSwitcherPrefs:Landroid/content/SharedPreferences;

.field private mShowSwitcherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowSwitcherPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mPrefsManager:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->sInitialHideSwitchers:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->sInitialHideSwitchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->sInitialHideSwitchers:Ljava/util/List;

    const-class v1, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->sInitialHideSwitchers:Ljava/util/List;

    const-class v1, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->sInitialHideSwitchers:Ljava/util/List;

    const-class v1, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherPrefs:Landroid/content/SharedPreferences;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherPrefs:Landroid/content/SharedPreferences;

    .line 35
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    return-object v0
.end method

.method private deleteRepeatSwitchersIfNeed()V
    .locals 5

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const-string v2, "SwitcherPrefsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "repeated switcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mPrefsManager:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mPrefsManager:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mPrefsManager:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->initShowSwitcherList()V

    .line 51
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mPrefsManager:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->initHideSwitcherList()V

    .line 53
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mPrefsManager:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;

    return-object v0
.end method

.method private initHideSwitcherList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mContext:Landroid/content/Context;

    const-string v3, "upslide_hide_switcher"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherPrefs:Landroid/content/SharedPreferences;

    .line 71
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherPrefs:Landroid/content/SharedPreferences;

    const-string v3, "hide_switcher_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->addHideSwitcher(ILjava/lang/String;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private initShowSwitcherList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mContext:Landroid/content/Context;

    const-string v3, "upslide_show_switcher"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherPrefs:Landroid/content/SharedPreferences;

    .line 62
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    .line 63
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_switcher_count"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->addShowSwitcher(ILjava/lang/String;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private isInitialHideSwitchers(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->sInitialHideSwitchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHideSwitcher(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "switcherName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addShowSwitcher(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "switcherName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteHideSwitcher(Ljava/lang/String;)V
    .locals 1
    .param p1, "switcherName"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public deleteShowSwitcher(Ljava/lang/String;)V
    .locals 1
    .param p1, "switcherName"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public generatePrefsAsync()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public getHideList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    return-object v0
.end method

.method public getShowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    return-object v0
.end method

.method public refresh(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allSwitchers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 142
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v6, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-direct {v1, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 147
    .local v1, "curShowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 148
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    .local v5, "switcherName":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 150
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_1
    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v5    # "switcherName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v0, "curHideList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 158
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 159
    .restart local v5    # "switcherName":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 160
    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 162
    :cond_3
    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 167
    .end local v5    # "switcherName":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 168
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    .restart local v5    # "switcherName":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 172
    .local v4, "newSwitcherIndex":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v4, v7, :cond_5

    .line 173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 176
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->isInitialHideSwitchers(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 177
    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 167
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 179
    :cond_6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 183
    .end local v4    # "newSwitcherIndex":I
    .end local v5    # "switcherName":Ljava/lang/String;
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_8

    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 185
    .local v2, "curShowListSize":I
    const/4 v3, 0x0

    :goto_7
    rsub-int/lit8 v7, v2, 0x4

    if-ge v3, v7, :cond_8

    .line 186
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 191
    .end local v2    # "curShowListSize":I
    :cond_8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->setSwitcherList(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public setSwitcherList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "newShowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newHideList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mShowSwitcherList:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->mHideSwitcherList:Ljava/util/List;

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->deleteRepeatSwitchersIfNeed()V

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherPrefsManager;->generatePrefsAsync()V

    .line 218
    return-void
.end method
