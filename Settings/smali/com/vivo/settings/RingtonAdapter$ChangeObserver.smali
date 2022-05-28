.class Lcom/vivo/settings/RingtonAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "RingtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/RingtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/RingtonAdapter;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/RingtonAdapter;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Lcom/vivo/settings/RingtonAdapter$ChangeObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 347
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 356
    iget-object v0, p0, Lcom/vivo/settings/RingtonAdapter$ChangeObserver;->this$0:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v0}, Lcom/vivo/settings/RingtonAdapter;->onContentChanged()V

    .line 357
    return-void
.end method
