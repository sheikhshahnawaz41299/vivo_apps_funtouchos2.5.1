.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$2;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;)V
    .locals 0

    .prologue
    .line 4310
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4314
    return-void
.end method
