.class Lcom/android/settings/dashboard/DashboardTileStatusManager$5;
.super Ljava/lang/Object;
.source "DashboardTileStatusManager.java"

# interfaces
.implements Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardTileStatusManager;->getListener(I)Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$5;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/BbkMoveBoolButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 520
    return-void
.end method
