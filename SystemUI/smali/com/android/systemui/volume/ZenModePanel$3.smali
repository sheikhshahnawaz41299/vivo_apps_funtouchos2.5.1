.class Lcom/android/systemui/volume/ZenModePanel$3;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic val$requesting:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Z)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iput-boolean p2, p0, Lcom/android/systemui/volume/ZenModePanel$3;->val$requesting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$3;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$3;->val$requesting:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->requestConditions(Z)V

    .line 287
    return-void
.end method
