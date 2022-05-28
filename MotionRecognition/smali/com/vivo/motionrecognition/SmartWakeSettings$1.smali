.class Lcom/vivo/motionrecognition/SmartWakeSettings$1;
.super Ljava/lang/Object;
.source "SmartWakeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/motionrecognition/SmartWakeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;


# direct methods
.method constructor <init>(Lcom/vivo/motionrecognition/SmartWakeSettings;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vivo/motionrecognition/SmartWakeSettings$1;->this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vivo/motionrecognition/SmartWakeSettings$1;->this$0:Lcom/vivo/motionrecognition/SmartWakeSettings;

    invoke-virtual {v0}, Lcom/vivo/motionrecognition/SmartWakeSettings;->finish()V

    .line 114
    return-void
.end method
