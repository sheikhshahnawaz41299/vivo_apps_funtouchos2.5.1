.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1331
    return-void
.end method
