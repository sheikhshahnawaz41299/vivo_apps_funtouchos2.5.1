.class Lcom/vivo/SmartKey/d;
.super Landroid/os/Handler;
.source "ApplicationListActivity.java"


# instance fields
.field final synthetic v:Lcom/vivo/SmartKey/ApplicationListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/vivo/SmartKey/d;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/SmartKey/d;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v1}, Lcom/vivo/SmartKey/ApplicationListActivity;->d(Lcom/vivo/SmartKey/ApplicationListActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/vivo/SmartKey/d;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->g(Lcom/vivo/SmartKey/ApplicationListActivity;)Lcom/vivo/common/widget/VivoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/SmartKey/d;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v1}, Lcom/vivo/SmartKey/ApplicationListActivity;->f(Lcom/vivo/SmartKey/ApplicationListActivity;)Lcom/vivo/SmartKey/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/VivoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v0, p0, Lcom/vivo/SmartKey/d;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->h(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/vivo/SmartKey/d;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->i(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_0
    return-void
.end method
