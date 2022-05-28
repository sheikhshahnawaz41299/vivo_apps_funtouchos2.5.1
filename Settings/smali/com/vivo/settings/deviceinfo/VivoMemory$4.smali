.class Lcom/vivo/settings/deviceinfo/VivoMemory$4;
.super Ljava/lang/Object;
.source "VivoMemory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/deviceinfo/VivoMemory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;


# direct methods
.method constructor <init>(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$4;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$4;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$600(Lcom/vivo/settings/deviceinfo/VivoMemory;)V

    .line 429
    return-void
.end method
