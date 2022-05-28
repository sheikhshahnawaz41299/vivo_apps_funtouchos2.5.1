.class Lcom/android/systemui/power/PowerWarningsManager$4;
.super Ljava/lang/Object;
.source "PowerWarningsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerWarningsManager;->showLowBatteryWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerWarningsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerWarningsManager;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/systemui/power/PowerWarningsManager$4;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/power/PowerWarningsManager$4;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerWarningsManager;->access$202(Lcom/android/systemui/power/PowerWarningsManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 277
    return-void
.end method
