.class Lcom/vivo/SmartKey/c;
.super Ljava/lang/Object;
.source "ApplicationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic v:Lcom/vivo/SmartKey/ApplicationListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/vivo/SmartKey/c;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vivo/SmartKey/c;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-virtual {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->b()V

    .line 132
    iget-object v0, p0, Lcom/vivo/SmartKey/c;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/vivo/SmartKey/ApplicationListActivity;->u:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    iget-object v0, p0, Lcom/vivo/SmartKey/c;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->e(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/SmartKey/c;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v1}, Lcom/vivo/SmartKey/ApplicationListActivity;->d(Lcom/vivo/SmartKey/ApplicationListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    return-void
.end method
