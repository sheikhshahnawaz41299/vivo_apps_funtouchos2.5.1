.class Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveToItem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;

.field public value:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V
    .locals 0
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newValue"    # I

    .prologue
    .line 2534
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2535
    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->name:Ljava/lang/String;

    .line 2536
    iput p3, p0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->value:I

    .line 2537
    return-void
.end method
