.class final Lcom/vivo/settings/notification/VivoZenModeCondition$H;
.super Landroid/os/Handler;
.source "VivoZenModeCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/notification/VivoZenModeCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final CONDITIONS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/VivoZenModeCondition;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/notification/VivoZenModeCondition;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition$H;->this$0:Lcom/vivo/settings/notification/VivoZenModeCondition;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/notification/VivoZenModeCondition;Lcom/vivo/settings/notification/VivoZenModeCondition$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/notification/VivoZenModeCondition;
    .param p2, "x1"    # Lcom/vivo/settings/notification/VivoZenModeCondition$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vivo/settings/notification/VivoZenModeCondition$H;-><init>(Lcom/vivo/settings/notification/VivoZenModeCondition;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition$H;->this$0:Lcom/vivo/settings/notification/VivoZenModeCondition;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->handleConditions([Landroid/service/notification/Condition;)V

    .line 137
    :cond_0
    return-void
.end method
