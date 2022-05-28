.class public Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;
.super Landroid/preference/Preference;
.source "RepeatPreferenceEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RepeatPreferenceEx"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

.field private mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

.field private mRepeatArray:[Z

.field private mView:Landroid/view/View;

.field private mWeekLayout:[Landroid/widget/RelativeLayout;

.field private mWeekView1:[Landroid/widget/TextView;

.field private mWeekView2:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    .line 27
    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    .line 28
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    .line 29
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    .line 32
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    .line 35
    new-instance v0, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-direct {v0, v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .line 38
    new-instance v0, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-direct {v0, v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .line 126
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mContext:Landroid/content/Context;

    .line 127
    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->setLayoutResource(I)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->setSelectable(Z)V

    .line 129
    return-void

    .line 32
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    .line 27
    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    .line 28
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    .line 29
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    .line 32
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    .line 35
    new-instance v0, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-direct {v0, v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .line 38
    new-instance v0, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-direct {v0, v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .line 118
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mContext:Landroid/content/Context;

    .line 119
    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->setLayoutResource(I)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->setSelectable(Z)V

    .line 121
    return-void

    .line 32
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->updateAllUI()V

    return-void
.end method

.method private updateAllUI()V
    .locals 12

    .prologue
    const/high16 v11, 0x41600000    # 14.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v9, 0x5

    const/high16 v8, 0x41300000    # 11.0f

    const/4 v7, 0x1

    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 50
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x7

    if-ge v0, v4, :cond_f

    .line 52
    add-int/lit8 v4, v0, 0x6

    rem-int/lit8 v1, v4, 0x7

    .line 53
    .local v1, "index":I
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v5, v4, v0

    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 60
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    if-eqz v2, :cond_1

    .line 63
    const-string v4, "ur"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "lo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 65
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 100
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 102
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    .line 51
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 53
    :cond_3
    const/16 v4, 0x8

    goto :goto_1

    .line 68
    :cond_4
    const-string v4, "bh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    if-nez v0, :cond_1

    .line 70
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 73
    :cond_5
    const-string v4, "ml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "as"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 74
    :cond_6
    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 78
    :cond_7
    const-string v4, "or"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "te"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 79
    :cond_8
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 83
    :cond_9
    const-string v4, "ml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "ar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 84
    :cond_a
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 86
    :cond_b
    const-string v4, "kn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 87
    if-eq v0, v7, :cond_c

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 88
    :cond_c
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 91
    :cond_d
    const-string v4, "ta"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    if-eqz v0, :cond_e

    if-ne v0, v9, :cond_1

    .line 93
    :cond_e
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 113
    .end local v1    # "index":I
    :cond_f
    return-void
.end method

.method private updateWeekUI(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0xff

    const/4 v2, 0x0

    .line 41
    add-int/lit8 v1, p1, 0x6

    rem-int/lit8 v0, v1, 0x7

    .line 42
    .local v0, "i":I
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v3, v1, p1

    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    const/16 v3, 0xae

    invoke-static {v4, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    return-void

    .line 42
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(IZ)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v1, v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 219
    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    return-object v1
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 135
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    .line 136
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01d7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v6

    .line 138
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01da

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v7

    .line 140
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01dd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v8

    .line 142
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01e0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v9

    .line 144
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01e3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v10

    .line 146
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v5, 0x7f0e01e6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v4

    .line 148
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v5, 0x7f0e01e9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    aput-object v2, v3, v4

    .line 150
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01d8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 151
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01db

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v7

    .line 152
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01de

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v8

    .line 153
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01e1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v9

    .line 154
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01e4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v10

    .line 155
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v5, 0x7f0e01e7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 156
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView1:[Landroid/widget/TextView;

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v5, 0x7f0e01ea

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 158
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01d9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 159
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01dc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v7

    .line 160
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01df

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v8

    .line 161
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01e2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v9

    .line 162
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v4, 0x7f0e01e5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v10

    .line 163
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v5, 0x7f0e01e8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 164
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekView2:[Landroid/widget/TextView;

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    const v5, 0x7f0e01eb

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v4

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 179
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx$1;

    invoke-direct {v2, p0}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx$1;-><init>(Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 188
    .end local v0    # "i":I
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 195
    .local v1, "id":I
    const/4 v2, 0x0

    .line 196
    .local v2, "index":I
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mWeekLayout:[Landroid/widget/RelativeLayout;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 201
    :cond_0
    add-int/lit8 v3, v2, 0x6

    rem-int/lit8 v0, v3, 0x7

    .line 202
    .local v0, "i":I
    iget-object v4, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    iget-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v4, v0

    .line 203
    invoke-direct {p0, v2}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->updateWeekUI(I)V

    .line 204
    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->getDaysOfWeek()Lcom/vivo/settings/notification/settime/DaysOfWeek;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->callChangeListener(Ljava/lang/Object;)Z

    .line 205
    return-void

    .line 196
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .restart local v0    # "i":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setDaysOfWeek(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V
    .locals 1
    .param p1, "dow"    # Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 209
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 210
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v0}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->getBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->mRepeatArray:[Z

    .line 211
    return-void
.end method
