.class Lcom/vivo/settings/VisitMode$4;
.super Ljava/lang/Object;
.source "VisitMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VisitMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VisitMode;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VisitMode;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/vivo/settings/VisitMode$4;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$4;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-static {v0}, Lcom/vivo/settings/VisitMode;->access$000(Lcom/vivo/settings/VisitMode;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "VisitMode"

    const-string v1, "lock pattern enable set visit pattern"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$4;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-virtual {v0}, Lcom/vivo/settings/VisitMode;->setVisitPatter()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$4;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-static {v0}, Lcom/vivo/settings/VisitMode;->access$000(Lcom/vivo/settings/VisitMode;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$4;->this$0:Lcom/vivo/settings/VisitMode;

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/vivo/settings/VisitMode;->access$100(Lcom/vivo/settings/VisitMode;I)V

    goto :goto_0
.end method
