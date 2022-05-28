.class Lcom/vivo/settings/CPURealDataActivity$1$1;
.super Ljava/lang/Object;
.source "CPURealDataActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/CPURealDataActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/CPURealDataActivity$1;


# direct methods
.method constructor <init>(Lcom/vivo/settings/CPURealDataActivity$1;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vivo/settings/CPURealDataActivity$1$1;->this$1:Lcom/vivo/settings/CPURealDataActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity$1$1;->this$1:Lcom/vivo/settings/CPURealDataActivity$1;

    iget-object v0, v0, Lcom/vivo/settings/CPURealDataActivity$1;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    invoke-static {v0}, Lcom/vivo/settings/CPURealDataActivity;->access$000(Lcom/vivo/settings/CPURealDataActivity;)Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
