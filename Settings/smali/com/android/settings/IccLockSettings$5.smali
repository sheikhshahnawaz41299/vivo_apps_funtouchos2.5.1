.class Lcom/android/settings/IccLockSettings$5;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 626
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/settings/IccLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 628
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v3, v2}, Lcom/android/settings/IccLockSettings;->access$402(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 632
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)V

    .line 633
    return-void

    .line 628
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_0
.end method
