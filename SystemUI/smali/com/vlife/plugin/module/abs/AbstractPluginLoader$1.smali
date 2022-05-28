.class Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;
.super Landroid/content/ContextWrapper;
.source "AbstractPluginLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->buildModuleApk(Landroid/content/pm/PackageInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlife/plugin/module/abs/AbstractPluginLoader;

.field private final synthetic val$assetMag:Landroid/content/res/AssetManager;

.field private final synthetic val$packageInfo:Landroid/content/pm/PackageInfo;

.field private final synthetic val$packageName:Ljava/lang/String;

.field private final synthetic val$res:Landroid/content/res/Resources;

.field private final synthetic val$theme:Landroid/content/res/Resources$Theme;


# direct methods
.method constructor <init>(Lcom/vlife/plugin/module/abs/AbstractPluginLoader;Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/AssetManager;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->this$0:Lcom/vlife/plugin/module/abs/AbstractPluginLoader;

    iput-object p3, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$res:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$theme:Landroid/content/res/Resources$Theme;

    iput-object p5, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$assetMag:Landroid/content/res/AssetManager;

    iput-object p6, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$packageName:Ljava/lang/String;

    .line 135
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->this$0:Lcom/vlife/plugin/module/abs/AbstractPluginLoader;

    invoke-static {v0}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->access$0(Lcom/vlife/plugin/module/abs/AbstractPluginLoader;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$assetMag:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getModulePlugin()Lcom/vlife/plugin/module/impl/IModulePlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IModulePlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    const-string v0, "com.vlife.plugin.module"

    iget-object v1, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->this$0:Lcom/vlife/plugin/module/abs/AbstractPluginLoader;

    invoke-static {v0}, Lcom/vlife/plugin/module/abs/AbstractPluginLoader;->access$0(Lcom/vlife/plugin/module/abs/AbstractPluginLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v1, "layout_inflater"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    check-cast v0, Landroid/view/LayoutInflater;

    .line 181
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 183
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vlife/plugin/module/abs/AbstractPluginLoader$1;->val$theme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method
