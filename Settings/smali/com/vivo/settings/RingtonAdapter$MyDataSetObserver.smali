.class Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "RingtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/RingtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/RingtonAdapter;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/RingtonAdapter;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/RingtonAdapter;Lcom/vivo/settings/RingtonAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/RingtonAdapter;
    .param p2, "x1"    # Lcom/vivo/settings/RingtonAdapter$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;-><init>(Lcom/vivo/settings/RingtonAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 363
    const-string v0, "RingtonAdapter"

    const-string v1, "MyDataSetObserver onChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/RingtonAdapter;->access$102(Lcom/vivo/settings/RingtonAdapter;Z)Z

    .line 365
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-static {v0}, Lcom/vivo/settings/RingtonAdapter;->access$200(Lcom/vivo/settings/RingtonAdapter;)Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-static {v0}, Lcom/vivo/settings/RingtonAdapter;->access$200(Lcom/vivo/settings/RingtonAdapter;)Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;->onTotalCountChange()V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v0}, Lcom/vivo/settings/RingtonAdapter;->notifyDataSetChanged()V

    .line 369
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 373
    const-string v0, "RingtonAdapter"

    const-string v1, "MyDataSetObserver onInvalidated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/RingtonAdapter;->access$102(Lcom/vivo/settings/RingtonAdapter;Z)Z

    .line 375
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-static {v0}, Lcom/vivo/settings/RingtonAdapter;->access$200(Lcom/vivo/settings/RingtonAdapter;)Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-static {v0}, Lcom/vivo/settings/RingtonAdapter;->access$200(Lcom/vivo/settings/RingtonAdapter;)Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;->onTotalCountChange()V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$MyDataSetObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v0}, Lcom/vivo/settings/RingtonAdapter;->notifyDataSetInvalidated()V

    .line 379
    return-void
.end method
