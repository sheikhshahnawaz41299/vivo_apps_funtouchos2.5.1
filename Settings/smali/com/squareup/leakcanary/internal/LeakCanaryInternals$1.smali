.class Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;
.super Ljava/lang/Object;
.source "LeakCanaryInternals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appContext:Landroid/content/Context;

.field private final synthetic val$componentClass:Ljava/lang/Class;

.field private final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$componentClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$enabled:Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$appContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$componentClass:Ljava/lang/Class;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 90
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v4, p0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;->val$enabled:Z

    if-eqz v4, :cond_0

    move v1, v3

    .line 91
    .local v1, "newState":I
    :goto_0
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 92
    return-void

    .line 90
    .end local v1    # "newState":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
