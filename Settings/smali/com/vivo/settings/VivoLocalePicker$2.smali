.class Lcom/vivo/settings/VivoLocalePicker$2;
.super Ljava/lang/Object;
.source "VivoLocalePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoLocalePicker;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/vivo/settings/VivoLocalePicker;

.field final synthetic val$listOrder:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoLocalePicker;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/vivo/settings/VivoLocalePicker$2;->this$0:Lcom/vivo/settings/VivoLocalePicker;

    iput-object p2, p0, Lcom/vivo/settings/VivoLocalePicker$2;->val$listOrder:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoLocalePicker$2;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;)I
    .locals 3
    .param p1, "object1"    # Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;
    .param p2, "object2"    # Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    .prologue
    .line 186
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "LocalePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/vivo/settings/VivoLocalePicker$2;->val$listOrder:Ljava/util/List;

    iget-object v1, p1, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/settings/VivoLocalePicker$2;->val$listOrder:Ljava/util/List;

    iget-object v2, p2, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoLocalePicker$2;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p1, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/VivoLocalePicker$2;->compare(Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;)I

    move-result v0

    return v0
.end method
