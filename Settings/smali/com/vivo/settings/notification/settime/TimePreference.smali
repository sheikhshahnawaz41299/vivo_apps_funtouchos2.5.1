.class public Lcom/vivo/settings/notification/settime/TimePreference;
.super Landroid/preference/Preference;
.source "TimePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;
    }
.end annotation


# static fields
.field public static final FLAG_END_TIME:I = 0x2

.field public static final FLAG_START_TIME:I = 0x1

.field static mTmpTime:J


# instance fields
.field private final TAG:Ljava/lang/String;

.field private endTime:[I

.field mContext:Landroid/content/Context;

.field private mDivider:Landroid/view/View;

.field private mIsShow:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

.field private mTime:Lcom/vivo/settings/notification/settime/DigitalClock;

.field private mTimeFlag:I

.field private mTimeTitle:Landroid/widget/TextView;

.field private startTime:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/settings/notification/settime/TimePreference;->mTmpTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mIsShow:Z

    .line 39
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    .line 40
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    .line 43
    const-string v1, "TimePreference"

    iput-object v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->TAG:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mContext:Landroid/content/Context;

    .line 58
    const v1, 0x7f040055

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/settime/TimePreference;->setLayoutResource(I)V

    .line 59
    const-string v1, "TimePreference"

    const-string v2, "TimePreference"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v1, Lcom/android/settings/R$styleable;->TimePreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    .line 63
    invoke-virtual {p0, v3}, Lcom/vivo/settings/notification/settime/TimePreference;->setSelectable(Z)V

    .line 64
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mIsShow:Z

    .line 39
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    .line 40
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    .line 43
    const-string v0, "TimePreference"

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->TAG:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mContext:Landroid/content/Context;

    .line 51
    const v0, 0x7f040055

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/settime/TimePreference;->setLayoutResource(I)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/settime/TimePreference;->setSelectable(Z)V

    .line 53
    return-void

    .line 39
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setEndTime()V
    .locals 5

    .prologue
    .line 120
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 121
    .local v1, "hour":I
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    const/4 v4, 0x1

    aget v2, v3, v4

    .line 122
    .local v2, "min":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    .local v0, "c":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 125
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTime:Lcom/vivo/settings/notification/settime/DigitalClock;

    invoke-virtual {v3, v0}, Lcom/vivo/settings/notification/settime/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 126
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTime:Lcom/vivo/settings/notification/settime/DigitalClock;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/vivo/settings/notification/settime/DigitalClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    return-void
.end method

.method private setStartTime()V
    .locals 5

    .prologue
    .line 109
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 110
    .local v1, "hour":I
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    const/4 v4, 0x1

    aget v2, v3, v4

    .line 111
    .local v2, "min":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    .local v0, "c":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 114
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTime:Lcom/vivo/settings/notification/settime/DigitalClock;

    invoke-virtual {v3, v0}, Lcom/vivo/settings/notification/settime/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 115
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTime:Lcom/vivo/settings/notification/settime/DigitalClock;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/vivo/settings/notification/settime/DigitalClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    return v0
.end method

.method public getOnTimeChangedListener()Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 69
    const v0, 0x7f0e00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeTitle:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0e00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/notification/settime/DigitalClock;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTime:Lcom/vivo/settings/notification/settime/DigitalClock;

    .line 71
    const-string v0, "TimePreference"

    const-string v1, "onBindView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const v0, 0x7f0e00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f0e0009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mDivider:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mDivider:Landroid/view/View;

    iget-boolean v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mIsShow:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeTitle:Landroid/widget/TextView;

    const v1, 0x7f0b080c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setStartTime()V

    .line 89
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    iget v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    invoke-interface {v0, v1, p0}, Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;->onViewBinded(ILcom/vivo/settings/notification/settime/TimePreference;)V

    .line 93
    :cond_1
    return-void

    .line 74
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 82
    :cond_3
    iget v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeTitle:Landroid/widget/TextView;

    const v1, 0x7f0b080a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setEndTime()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 132
    .local v8, "now":J
    sget-wide v0, Lcom/vivo/settings/notification/settime/TimePreference;->mTmpTime:J

    sub-long v6, v8, v0

    .line 133
    .local v6, "diff":J
    sput-wide v8, Lcom/vivo/settings/notification/settime/TimePreference;->mTmpTime:J

    .line 134
    const-wide/16 v0, 0x3e8

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 137
    :cond_0
    iget v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    if-ne v0, v4, :cond_1

    .line 139
    new-instance v0, Lcom/vivo/app/BBKTimePickerDialog;

    iget-object v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    aget v3, v2, v3

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    aget v4, v2, v4

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/app/BBKTimePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/vivo/app/BBKTimePickerDialog;->show()V

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Lcom/vivo/app/BBKTimePickerDialog;

    iget-object v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    aget v3, v2, v3

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    aget v4, v2, v4

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/app/BBKTimePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/vivo/app/BBKTimePickerDialog;->show()V

    goto :goto_0
.end method

.method public onTimeSet(Lcom/vivo/common/widget/BBKTimePicker;II)V
    .locals 3
    .param p1, "view"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 150
    iget v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    aput p2, v0, v2

    .line 153
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    aput p3, v0, v1

    .line 154
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    iget v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    invoke-interface {v0, v1, v2}, Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;->onTimeSetted(I[I)V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setStartTime()V

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    aput p2, v0, v2

    .line 162
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    aput p3, v0, v1

    .line 163
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    iget v1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    invoke-interface {v0, v1, v2}, Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;->onTimeSetted(I[I)V

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setEndTime()V

    goto :goto_0
.end method

.method public putEndTime([I)V
    .locals 4
    .param p1, "endTime"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 103
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->endTime:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 104
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setEndTime()V

    .line 105
    return-void
.end method

.method public putStartTime([I)V
    .locals 4
    .param p1, "startTime"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 97
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/TimePreference;->startTime:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 98
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setStartTime()V

    .line 99
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mIsShow:Z

    .line 186
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mTimeFlag:I

    .line 190
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;)V
    .locals 0
    .param p1, "mOnChangedListener"    # Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/TimePreference;->mOnTimeChangedListener:Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;

    .line 173
    return-void
.end method
