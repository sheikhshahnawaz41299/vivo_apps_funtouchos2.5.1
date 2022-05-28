.class Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/notification/settime/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmPmAfter:Landroid/widget/TextView;

.field private mAmPmBefore:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const v1, 0x7f0e00ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPmBefore:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0e0101

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPmAfter:Landroid/widget/TextView;

    .line 88
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "ampm":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 90
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .param p1, "isMorning"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(ZLjava/util/Locale;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    .line 94
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPmBefore:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPmAfter:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    goto :goto_0

    .line 99
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
