.class public Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;
.super Landroid/widget/LinearLayout;
.source "SimpleDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "SimpleDigitalClock"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private mForceCenter:Z

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPmString:Ljava/lang/String;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mHandler:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mHandler:Landroid/os/Handler;

    .line 92
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 128
    const-string v3, "SimpleDigitalClock"

    const-string v4, "SimpleDigitalClock init"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->setOrientation(I)V

    .line 132
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mTime:Landroid/widget/TextView;

    .line 133
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 136
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mTime:Landroid/widget/TextView;

    const/high16 v4, 0x42900000    # 72.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mTime:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    .line 139
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "ampm":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmString:Ljava/lang/String;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mPmString:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private setFormat()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mFormat:Ljava/lang/String;

    .line 149
    return-void

    .line 148
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 104
    const-string v0, "SimpleDigitalClock"

    const-string v1, "ImageDigitalClock attached to window"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->updateTime()V

    .line 113
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "ampm":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmString:Ljava/lang/String;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mPmString:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->updateTime()V

    .line 206
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 119
    const-string v0, "SimpleDigitalClock"

    const-string v1, "ImageDigitalClock detached from window"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    :cond_0
    return-void
.end method

.method public setClockTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    return-void
.end method

.method public setForceCenter(Z)V
    .locals 0
    .param p1, "center"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mForceCenter:Z

    .line 179
    return-void
.end method

.method public updateTime()V
    .locals 6

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->setFormat()V

    .line 158
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 159
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    .local v1, "newTime":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "hour":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mFormat:Ljava/lang/String;

    const-string v3, "kk:mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmString:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mPmString:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateViewsColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    return-void
.end method
