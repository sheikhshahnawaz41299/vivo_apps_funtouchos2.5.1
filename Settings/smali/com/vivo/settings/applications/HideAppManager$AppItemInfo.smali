.class Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;
.super Ljava/lang/Object;
.source "HideAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/HideAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppItemInfo"
.end annotation


# instance fields
.field appLable:Ljava/lang/CharSequence;

.field isSelected:Z

.field isThirdApp:Z

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/settings/applications/HideAppManager;

.field userId:I


# direct methods
.method private constructor <init>(Lcom/vivo/settings/applications/HideAppManager;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;->this$0:Lcom/vivo/settings/applications/HideAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/applications/HideAppManager;Lcom/vivo/settings/applications/HideAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/applications/HideAppManager;
    .param p2, "x1"    # Lcom/vivo/settings/applications/HideAppManager$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/HideAppManager$AppItemInfo;-><init>(Lcom/vivo/settings/applications/HideAppManager;)V

    return-void
.end method
