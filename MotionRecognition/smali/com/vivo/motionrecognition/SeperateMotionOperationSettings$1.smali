.class Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$1;
.super Ljava/lang/Object;
.source "SeperateMotionOperationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;


# direct methods
.method constructor <init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$1;->this$0:Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$1;->this$0:Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    invoke-virtual {v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->finish()V

    .line 68
    return-void
.end method
