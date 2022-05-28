.class Lcom/vivo/settings/VivoVisitFingerPrint$1;
.super Ljava/lang/Object;
.source "VivoVisitFingerPrint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoVisitFingerPrint;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoVisitFingerPrint;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoVisitFingerPrint;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vivo/settings/VivoVisitFingerPrint$1;->this$0:Lcom/vivo/settings/VivoVisitFingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 80
    const-string v0, "VivoVisitFingerPrint"

    const-string v1, "preference pressed ondiss "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
