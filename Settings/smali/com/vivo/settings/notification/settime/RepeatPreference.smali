.class public Lcom/vivo/settings/notification/settime/RepeatPreference;
.super Landroid/preference/ListPreference;
.source "RepeatPreference.java"


# instance fields
.field private mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

.field private mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v3, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-direct {v3, v5}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    iput-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .line 37
    new-instance v3, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-direct {v3, v5}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    iput-object v3, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .line 42
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "weekdays":[Ljava/lang/String;
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    aget-object v3, v2, v7

    aput-object v3, v0, v5

    aget-object v3, v2, v8

    aput-object v3, v0, v6

    aget-object v3, v2, v9

    aput-object v3, v0, v7

    const/4 v3, 0x5

    aget-object v3, v2, v3

    aput-object v3, v0, v8

    const/4 v3, 0x6

    aget-object v3, v2, v3

    aput-object v3, v0, v9

    const/4 v3, 0x5

    const/4 v4, 0x7

    aget-object v4, v2, v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    aget-object v4, v2, v6

    aput-object v4, v0, v3

    .line 53
    .local v0, "values":[Ljava/lang/String;
    const/4 v3, 0x7

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b07f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b07f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b07f4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b07f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b07f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b07f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b07f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 62
    .local v1, "values1":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/settime/RepeatPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/settime/RepeatPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/notification/settime/RepeatPreference;)Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/settime/RepeatPreference;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    return-object v0
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 70
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    iget-object v1, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 86
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/vivo/settings/notification/settime/RepeatPreference$1;

    invoke-direct {v3, p0}, Lcom/vivo/settings/notification/settime/RepeatPreference$1;-><init>(Lcom/vivo/settings/notification/settime/RepeatPreference;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    return-void
.end method

.method public setDaysOfWeek(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V
    .locals 2
    .param p1, "dow"    # Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 99
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreference;->mNewDaysOfWeek:Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 100
    invoke-virtual {p0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/settime/RepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
