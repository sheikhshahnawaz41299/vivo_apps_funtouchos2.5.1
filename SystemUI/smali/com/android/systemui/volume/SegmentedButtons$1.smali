.class Lcom/android/systemui/volume/SegmentedButtons$1;
.super Ljava/lang/Object;
.source "SegmentedButtons.java"

# interfaces
.implements Lcom/android/systemui/volume/Interaction$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SegmentedButtons;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SegmentedButtons;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons$1;->this$0:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons$1;->this$0:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {v0}, Lcom/android/systemui/volume/SegmentedButtons;->access$000(Lcom/android/systemui/volume/SegmentedButtons;)V

    .line 86
    return-void
.end method
