.class Lcom/android/settings/notification/NotificationSettings$1;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 277
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 280
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$300(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 284
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$700(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/settings/notification/NotificationSettings;->access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 287
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$300(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 291
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method
