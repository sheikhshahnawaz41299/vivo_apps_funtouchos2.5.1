.class Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$1;
.super Ljava/lang/Object;
.source "TetherWlanApConfiguare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->onResume()V
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
    .line 171
    iput-object p1, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$1;->this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare$1;->this$0:Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-virtual {v0}, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;->finish()V

    .line 175
    return-void
.end method
