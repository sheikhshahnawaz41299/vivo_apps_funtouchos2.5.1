.class Lcom/vivo/settings/ClearAllDataConfirm$2;
.super Ljava/lang/Thread;
.source "ClearAllDataConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ClearAllDataConfirm;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ClearAllDataConfirm;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ClearAllDataConfirm;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm$2;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm$2;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v0}, Lcom/vivo/settings/ClearAllDataConfirm;->access$200(Lcom/vivo/settings/ClearAllDataConfirm;)V

    .line 180
    return-void
.end method
