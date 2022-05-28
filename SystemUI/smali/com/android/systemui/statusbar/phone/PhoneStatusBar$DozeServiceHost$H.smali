.class final Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;
.super Landroid/os/Handler;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final MSG_PULSE_WHILE_DOZING:I = 0x2

.field private static final MSG_START_DOZING:I = 0x1

.field private static final MSG_STOP_DOZING:I = 0x3


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V
    .locals 0

    .prologue
    .line 5871
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 5871
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5878
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5889
    :goto_0
    return-void

    .line 5880
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->access$11400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5883
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->access$11500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    goto :goto_0

    .line 5886
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->access$11600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V

    goto :goto_0

    .line 5878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
