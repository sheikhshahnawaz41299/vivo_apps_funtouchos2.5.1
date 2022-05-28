.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# static fields
.field private static final LUNAR_COUNTRIES:[Ljava/lang/String;

.field private static final MSG_TIME_CHANGE:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "DateView"


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/DateView;->LUNAR_COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    .line 55
    new-instance v1, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v1, Lcom/android/systemui/statusbar/policy/DateView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/DateView$2;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->DateView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    .line 114
    :cond_0
    return-void

    .line 109
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/DateView;
    .param p1, "x1"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/DateView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "android.settings.ACTION_DATE_FORMAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.settings.ACTION_THAI_CALENDAR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 134
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    return-void
.end method

.method protected updateClock()V
    .locals 22

    .prologue
    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 160
    .local v4, "context":Landroid/content/Context;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 161
    .local v14, "now":Ljava/util/Date;
    const-string v18, "E"

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 163
    .local v9, "dow":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 164
    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "date":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isThaiCalendarEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 167
    .local v17, "year":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x21f

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .end local v17    # "year":I
    :cond_0
    const v18, 0x7f0e0007

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    aput-object v8, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .end local v8    # "date":Ljava/lang/String;
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "date":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "country":Ljava/lang/String;
    sget-object v18, Lcom/android/systemui/statusbar/policy/DateView;->LUNAR_COUNTRIES:[Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 175
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v15, "sb":Ljava/lang/StringBuilder;
    const v18, 0x7f0e0006

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    aput-object v8, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v11, Lcom/vivo/common/utils/Lunar;

    invoke-direct {v11}, Lcom/vivo/common/utils/Lunar;-><init>()V

    .line 178
    .local v11, "lunar":Lcom/vivo/common/utils/Lunar;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 180
    .local v7, "dat":[I
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 181
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "d":[Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    .line 186
    aget-object v18, v6, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v7, v10

    .line 185
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 183
    .end local v6    # "d":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "d":[Ljava/lang/String;
    goto :goto_1

    .line 189
    .restart local v10    # "i":I
    :cond_3
    const/16 v18, 0x0

    aget v18, v7, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    const/16 v20, 0x2

    aget v20, v7, v20

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/vivo/common/utils/Lunar;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v12

    .line 190
    .local v12, "lunarDate":Ljava/lang/String;
    const/16 v18, 0x0

    aget v18, v7, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    const/16 v20, 0x2

    aget v20, v7, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Lcom/vivo/common/utils/Lunar;->getLunarHolidayByGregorian(III)Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "lunarHoliday":Ljava/lang/String;
    const/16 v18, 0x0

    aget v18, v7, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    const/16 v20, 0x2

    aget v20, v7, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Lcom/vivo/common/utils/Lunar;->getSolarTermString(III)Ljava/lang/String;

    move-result-object v16

    .line 192
    .local v16, "solarTerm":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 193
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_4
    :goto_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 195
    :cond_5
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-eqz v16, :cond_4

    .line 197
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 202
    .end local v6    # "d":[Ljava/lang/String;
    .end local v7    # "dat":[I
    .end local v10    # "i":I
    .end local v11    # "lunar":Lcom/vivo/common/utils/Lunar;
    .end local v12    # "lunarDate":Ljava/lang/String;
    .end local v13    # "lunarHoliday":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "solarTerm":Ljava/lang/String;
    :cond_6
    const v18, 0x7f0e0007

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    aput-object v8, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 178
    nop

    :array_0
    .array-data 4
        0x76d
        0x1
        0x1
    .end array-data
.end method
