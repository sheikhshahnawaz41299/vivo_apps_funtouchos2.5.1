.class Lcom/vivo/settings/OneHandSettings$3;
.super Ljava/lang/Object;
.source "OneHandSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/OneHandSettings;->getMiniScreenDemoDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/OneHandSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/OneHandSettings;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vivo/settings/OneHandSettings$3;->this$0:Lcom/vivo/settings/OneHandSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vivo/settings/OneHandSettings$3;->this$0:Lcom/vivo/settings/OneHandSettings;

    invoke-static {v0}, Lcom/vivo/settings/OneHandSettings;->access$100(Lcom/vivo/settings/OneHandSettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/vivo/settings/OneHandSettings$3;->this$0:Lcom/vivo/settings/OneHandSettings;

    invoke-static {v0}, Lcom/vivo/settings/OneHandSettings;->access$100(Lcom/vivo/settings/OneHandSettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 217
    :cond_0
    return-void
.end method
