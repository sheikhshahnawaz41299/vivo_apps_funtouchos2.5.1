.class Lcom/android/systemui/statusbar/phone/ScrimController$3;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$300(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 314
    return-void
.end method
