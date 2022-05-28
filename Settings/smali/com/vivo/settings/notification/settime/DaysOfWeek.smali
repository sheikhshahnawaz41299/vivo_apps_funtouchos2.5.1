.class public Lcom/vivo/settings/notification/settime/DaysOfWeek;
.super Ljava/lang/Object;
.source "DaysOfWeek.java"


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    .line 41
    return-void
.end method

.method private isSet(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 106
    iget v1, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 128
    new-array v1, v3, [Z

    .line 129
    .local v1, "ret":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x7

    .line 144
    iget v3, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    if-nez v3, :cond_1

    .line 145
    const/4 v1, -0x1

    .line 158
    :cond_0
    return v1

    .line 148
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 150
    .local v2, "today":I
    const/4 v0, 0x0

    .line 151
    .local v0, "day":I
    const/4 v1, 0x0

    .line 152
    .local v1, "dayCount":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 153
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 154
    invoke-direct {p0, v0}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 3
    .param p1, "day"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 110
    if-eqz p2, :cond_0

    .line 111
    iget v0, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    .line 115
    :goto_0
    const-string v0, "DayOfWeek"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DayOfWeek set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 113
    :cond_0
    iget v0, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V
    .locals 1
    .param p1, "dow"    # Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .prologue
    .line 119
    iget v0, p1, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    .line 120
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v6, "ret":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "dayCount":I
    iget v2, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    .line 59
    .local v2, "days":I
    :goto_0
    if-lez v2, :cond_1

    .line 60
    and-int/lit8 v7, v2, 0x1

    if-ne v7, v9, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 61
    :cond_0
    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    if-nez v0, :cond_2

    .line 64
    const v7, 0x7f0b071c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    :goto_1
    return-object v7

    .line 66
    :cond_2
    if-ne v0, v10, :cond_3

    .line 67
    const v7, 0x7f0b095f

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 76
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "lang":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 78
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 79
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 94
    .end local v3    # "dfs":Ljava/text/DateFormatSymbols;
    .local v1, "dayList":[Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v10, :cond_6

    .line 95
    iget v7, p0, Lcom/vivo/settings/notification/settime/DaysOfWeek;->mDays:I

    shl-int v8, v9, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 96
    sget-object v7, Lcom/vivo/settings/notification/settime/DaysOfWeek;->DAY_MAP:[I

    aget v7, v7, v4

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, -0x1

    .line 98
    if-lez v0, :cond_4

    const v7, 0x7f0b07f9

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 94
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 81
    .end local v1    # "dayList":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_5
    const/16 v7, 0x8

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v1, v7

    const v7, 0x7f0b0796

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    const/4 v7, 0x2

    const v8, 0x7f0b0790

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const v8, 0x7f0b0791

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const v8, 0x7f0b0792

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const v8, 0x7f0b0793

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x6

    const v8, 0x7f0b0794

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const v7, 0x7f0b0795

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v10

    .restart local v1    # "dayList":[Ljava/lang/String;
    goto :goto_2

    .line 102
    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1
.end method
