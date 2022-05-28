.class Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$3;
.super Ljava/lang/Object;
.source "TetherWlanApConfiguare.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;


# direct methods
.method constructor <init>(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$3;->this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$3;->this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-static {v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->access$000(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;)V

    .line 236
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 231
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 224
    return-void
.end method
