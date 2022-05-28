.class public Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoDateTimeSettingsSetupWizardEx.java"

# interfaces
.implements Lcom/android/settings/SettingsActivity$OnKeyEventListener;
.implements Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;
.implements Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;


# static fields
.field private static final DIALOG_DATEPICKER:I = 0x1

.field private static final DIALOG_TIMEPICKER:I = 0x0

.field public static final RESULT_CODE_BACK:I = 0x15

.field public static final RESULT_CODE_FINISH:I = 0x16

.field public static final RESULT_CODE_NEXT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DateTimeWizardSettings"


# instance fields
.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mTimePref:Landroid/preference/Preference;

.field private tv_nextStep:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->tv_nextStep:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->nextStep(Z)V

    return-void
.end method

.method private finishActivityByResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 300
    const-string v1, "DateTimeWizardSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishActivityByResult, resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 306
    :cond_0
    return-void
.end method

.method private isThaiArea()Z
    .locals 2

    .prologue
    .line 145
    const-string v1, "persist.sys.vivo.product.cust"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "countside":Ljava/lang/String;
    const-string v1, "TH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private nextStep(Z)V
    .locals 1
    .param p1, "isNext"    # Z

    .prologue
    .line 289
    if-eqz p1, :cond_0

    const/16 v0, 0x14

    .line 290
    .local v0, "result":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->finishActivityByResult(I)V

    .line 291
    return-void

    .line 289
    .end local v0    # "result":I
    :cond_0
    const/16 v0, 0x15

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0x7bc

    if-ge p1, v1, :cond_2

    .line 219
    const/16 p1, 0x7bc

    .line 220
    const/4 p2, 0x0

    .line 221
    const/4 p3, 0x1

    .line 228
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 229
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 230
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 231
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 233
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 236
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 238
    :cond_1
    return-void

    .line 222
    .end local v2    # "when":J
    :cond_2
    const/16 v1, 0x7f5

    if-le p1, v1, :cond_0

    .line 223
    const/16 p1, 0x7f5

    .line 224
    const/16 p2, 0xb

    .line 225
    const/16 p3, 0x1f

    goto :goto_0
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 203
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 204
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 205
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 206
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 208
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 211
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->addPreferencesFromResource(I)V

    .line 95
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mTimePref:Landroid/preference/Preference;

    .line 96
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mDatePref:Landroid/preference/Preference;

    .line 97
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->updateDefaultDateFormat()V

    .line 98
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 99
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x0

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    return-object v0

    .line 155
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 156
    .local v6, "calendar":Ljava/util/Calendar;
    new-instance v0, Lcom/vivo/app/BBKDatePickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/app/BBKDatePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;III)V

    .restart local v0    # "dialog":Landroid/app/Dialog;
    move-object v1, v0

    .line 159
    check-cast v1, Lcom/vivo/app/BBKDatePickerDialog;

    const/16 v2, 0x7bc

    const/16 v3, 0x7f5

    invoke-virtual {v1, v2, v3}, Lcom/vivo/app/BBKDatePickerDialog;->updateYearRange(II)V

    .line 160
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 163
    .end local v6    # "calendar":Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 164
    .local v7, "calendar2":Ljava/util/Calendar;
    new-instance v0, Lcom/vivo/app/BBKTimePickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/app/BBKTimePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 168
    .restart local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v2, 0x7f0400ee

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 79
    .local v0, "layout_nextStep":Landroid/widget/RelativeLayout;
    const v2, 0x7f0e013b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->tv_nextStep:Landroid/widget/TextView;

    .line 80
    new-instance v2, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$1;

    invoke-direct {v2, p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$1;-><init>(Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v1
.end method

.method public onDateSet(Lcom/vivo/common/widget/BBKDatePicker;III)V
    .locals 3
    .param p1, "view"    # Lcom/vivo/common/widget/BBKDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 190
    const-string v1, "DateTimeWizardSettings"

    const-string v2, "onDateSet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {v0, p2, p3, p4}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->setDate(Landroid/content/Context;III)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v1, "DateTimeWizardSettings"

    const-string v2, "onDateSet activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 309
    const-string v1, "DateTimeWizardSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 311
    const-string v1, "DateTimeWizardSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->nextStep(Z)V

    .line 313
    const/4 v0, 0x1

    .line 315
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 129
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->removeDialog(I)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->showDialog(I)V

    .line 141
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 106
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->setTitle(I)V

    .line 107
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->showBBKBackButton()V

    .line 108
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$2;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$2;-><init>(Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public onTimeSet(Lcom/vivo/common/widget/BBKTimePicker;II)V
    .locals 3
    .param p1, "view"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 178
    const-string v1, "DateTimeWizardSettings"

    const-string v2, "onTimeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {v0, p2, p3}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->setTime(Landroid/content/Context;II)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v1, "DateTimeWizardSettings"

    const-string v2, "onTimeSet activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDefaultDateFormat()V
    .locals 7

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "dateFormats":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "currFormat":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 272
    .local v2, "listDateFormats":Ljava/util/List;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 275
    .local v3, "sFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "DateTimeWizardSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultDateFormat to sFormat.toPattern() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currFormat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    .end local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 243
    const-string v6, "DateTimeWizardSettings"

    const-string v7, "updateTimeAndDateDisplay"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "autoZone":Z
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 247
    .local v4, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mDummyDate:Ljava/util/Calendar;

    .line 248
    iget-object v6, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 250
    .local v2, "dummyDate":Ljava/util/Date;
    iget-object v6, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "dateTemp":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "use_thai_calendar"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit16 v7, v7, 0x21f

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_0
    iget-object v6, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    move-object v3, v2

    .line 259
    .local v3, "formatDate":Ljava/util/Date;
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/Date;->setMonth(I)V

    .line 260
    const/16 v6, 0x1f

    invoke-virtual {v3, v6}, Ljava/util/Date;->setDate(I)V

    .line 262
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 264
    .local v5, "tz":Ljava/util/TimeZone;
    iget-object v6, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->tv_nextStep:Landroid/widget/TextView;

    const v7, 0x7f0b0847

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 265
    return-void
.end method
