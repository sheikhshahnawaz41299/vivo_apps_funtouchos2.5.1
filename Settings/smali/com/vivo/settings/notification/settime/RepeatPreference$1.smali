.class Lcom/vivo/settings/notification/settime/RepeatPreference$1;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/notification/settime/RepeatPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/settime/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/vivo/settings/notification/settime/RepeatPreference;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/RepeatPreference$1;->this$0:Lcom/vivo/settings/notification/settime/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference$1;->this$0:Lcom/vivo/settings/notification/settime/RepeatPreference;

    invoke-static {v0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->access$000(Lcom/vivo/settings/notification/settime/RepeatPreference;)Lcom/vivo/settings/notification/settime/DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(IZ)V

    .line 93
    return-void
.end method
