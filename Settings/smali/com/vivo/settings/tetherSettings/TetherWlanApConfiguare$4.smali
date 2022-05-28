.class Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$4;
.super Ljava/lang/Object;
.source "TetherWlanApConfiguare.java"

# interfaces
.implements Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;


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
    .line 254
    iput-object p1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$4;->this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/BbkMoveBoolButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 257
    const-string v0, "TetherWlanApConfiguare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPasswordShow isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$4;->this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-static {v0, p2}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->access$102(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;Z)Z

    .line 259
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$4;->this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-static {v0, p2}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->access$200(Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;Z)V

    .line 260
    return-void
.end method
