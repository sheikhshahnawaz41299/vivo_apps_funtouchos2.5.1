.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 6194
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 6198
    const/4 v0, 0x0

    return v0
.end method
