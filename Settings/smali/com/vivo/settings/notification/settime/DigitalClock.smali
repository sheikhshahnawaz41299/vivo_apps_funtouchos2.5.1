.class public Lcom/vivo/settings/notification/settime/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final TAG:Ljava/lang/String; = "DigitalClock"


# instance fields
.field private M24:Ljava/lang/String;

.field private mAmPm:Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/settings/notification/settime/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mLive:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/vivo/settings/notification/settime/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/notification/settime/DigitalClock$1;-><init>(Lcom/vivo/settings/notification/settime/DigitalClock;)V

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    const-string v0, "kk:mm"

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->M24:Ljava/lang/String;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/notification/settime/DigitalClock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/settime/DigitalClock;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/vivo/settings/notification/settime/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/notification/settime/DigitalClock;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vivo/settings/notification/settime/DigitalClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/notification/settime/DigitalClock;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/notification/settime/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/settime/DigitalClock;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setDateFormat()V
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->M24:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mFormat:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 213
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mAmPm:Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v3, "h:mm"

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v1, v3}, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->setShowAmPm(ZLjava/util/Locale;)V

    .line 214
    return-void

    .line 211
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_0
    const-string v1, "h:mm"

    goto :goto_0

    .line 213
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 184
    const-string v3, "DigitalClock"

    const-string v4, "updateTime"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 191
    .local v0, "newTime":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 193
    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .end local v1    # "temp":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mAmPm:Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;

    iget-object v4, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 207
    return-void

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 142
    iget-boolean v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mAttached:Z

    .line 160
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 167
    iget-boolean v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mAttached:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 130
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/settime/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 131
    new-instance v0, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mAmPm:Lcom/vivo/settings/notification/settime/DigitalClock$AmPm;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 134
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/DigitalClock;->setDateFormat()V

    .line 135
    return-void
.end method

.method public setLive(Z)V
    .locals 0
    .param p1, "live"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mLive:Z

    .line 218
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 222
    return-void
.end method

.method public updateTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 180
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/DigitalClock;->updateTime()V

    .line 181
    return-void
.end method
