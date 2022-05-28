.class Lcom/android/systemui/statusbar/policy/DateView$2;
.super Landroid/os/Handler;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$2;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView$2;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
