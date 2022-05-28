.class public Lcom/vivo/settings/VivoLocalePicker;
.super Lcom/vivo/settings/VivoListFragment;
.source "VivoLocalePicker.java"

# interfaces
.implements Lcom/android/settings/SettingsActivity$OnKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;
    }
.end annotation


# static fields
.field public static final RESULT_CODE_BACK:I = 0x15

.field public static final RESULT_CODE_FINISH:I = 0x16

.field public static final RESULT_CODE_NEXT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static int_cur_locale_postion:I


# instance fields
.field private mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/SingleChoiseAdapter",
            "<",
            "Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineerMode:Z

.field private mIsSetupWizard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, -0x1

    sput v0, Lcom/vivo/settings/VivoLocalePicker;->int_cur_locale_postion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    .line 61
    iput-boolean v0, p0, Lcom/vivo/settings/VivoLocalePicker;->mEngineerMode:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/VivoLocalePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoLocalePicker;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/VivoLocalePicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoLocalePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/vivo/settings/VivoLocalePicker;->nextStep(Z)V

    return-void
.end method

.method private finishActivityByResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 346
    const-string v1, "LocalePicker"

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

    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 352
    :cond_0
    return-void
.end method

.method public static getCurrentDisplayLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 227
    .local v0, "conf":Landroid/content/res/Configuration;
    const v4, 0x7f08006a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "specialLocaleCodes":[Ljava/lang/String;
    const v4, 0x7f08006b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "specialLocaleNames":[Ljava/lang/String;
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4, v2, v3}, Lcom/vivo/settings/VivoLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 247
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    aget-object v2, p2, v1

    .line 258
    :goto_1
    return-object v2

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const-string v2, "my"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ZG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    const-string v2, "ur_PK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ar_EG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    :cond_2
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private nextStep(Z)V
    .locals 1
    .param p1, "isNext"    # Z

    .prologue
    .line 335
    if-eqz p1, :cond_0

    const/16 v0, 0x14

    .line 336
    .local v0, "result":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoLocalePicker;->finishActivityByResult(I)V

    .line 337
    return-void

    .line 335
    .end local v0    # "result":I
    :cond_0
    const/16 v0, 0x15

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 287
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/settings/VivoLocalePicker$3;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VivoLocalePicker$3;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 303
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super/range {p0 .. p1}, Lcom/vivo/settings/VivoListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "engineerMode"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vivo/settings/VivoLocalePicker;->mEngineerMode:Z

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/VivoLocalePicker;->showBBKBackButton()V

    .line 138
    new-instance v18, Lcom/vivo/settings/VivoLocalePicker$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vivo/settings/VivoLocalePicker$1;-><init>(Lcom/vivo/settings/VivoLocalePicker;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vivo/settings/VivoLocalePicker;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0b0856

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->setTitle(I)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 151
    .local v13, "resources":Landroid/content/res/Resources;
    const v18, 0x7f080077

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 153
    .local v15, "sortOrder":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 154
    .local v7, "listOrder":Ljava/util/List;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "locales":[Ljava/lang/String;
    const v18, 0x7f08006a

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 157
    .local v16, "specialLocaleCodes":[Ljava/lang/String;
    const v18, 0x7f08006b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 159
    .local v17, "specialLocaleNames":[Ljava/lang/String;
    array-length v10, v9

    .line 160
    .local v10, "origSize":I
    new-array v12, v10, [Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    .line 161
    .local v12, "preprocess":[Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;
    const/4 v4, 0x0

    .line 162
    .local v4, "finalSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_2

    .line 163
    aget-object v14, v9, v5

    .line 164
    .local v14, "s":Ljava/lang/String;
    const/16 v18, 0x5f

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    .line 165
    .local v6, "l":Ljava/util/Locale;
    if-eqz v6, :cond_0

    const-string v18, "und"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v18, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v6, v0, v1}, Lcom/vivo/settings/VivoLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/vivo/settings/VivoLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v18, v12, v4

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    .end local v6    # "l":Ljava/util/Locale;
    .end local v14    # "s":Ljava/lang/String;
    :cond_2
    new-array v11, v4, [Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    .line 177
    .local v11, "postprocess":[Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 178
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v12, v0, v11, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    new-instance v19, Lcom/vivo/settings/VivoLocalePicker$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/vivo/settings/VivoLocalePicker$2;-><init>(Lcom/vivo/settings/VivoLocalePicker;Ljava/util/List;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 207
    .local v3, "conf":Landroid/content/res/Configuration;
    new-array v8, v4, [Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    .line 208
    .local v8, "localeInfos":[Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    .line 209
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 210
    aget-object v18, v11, v5

    aput-object v18, v8, v5

    .line 214
    :goto_3
    aget-object v18, v8, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 215
    sput v5, Lcom/vivo/settings/VivoLocalePicker;->int_cur_locale_postion:I

    .line 208
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 212
    :cond_5
    aget-object v18, v12, v5

    aput-object v18, v8, v5

    goto :goto_3

    .line 219
    :cond_6
    new-instance v18, Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget v20, Lcom/vivo/settings/VivoLocalePicker;->int_cur_locale_postion:I

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lcom/vivo/settings/SingleChoiseAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vivo/settings/VivoLocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "LocalePicker"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_sw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    .line 102
    iget-boolean v0, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-boolean v3, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    if-eqz v3, :cond_0

    .line 309
    const v3, 0x7f0400ee

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 313
    .local v0, "layout_nextStep":Landroid/widget/RelativeLayout;
    const v3, 0x7f0e013b

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 315
    .local v1, "tv_nextStep":Landroid/widget/TextView;
    const v3, 0x7f0b0847

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 316
    new-instance v3, Lcom/vivo/settings/VivoLocalePicker$4;

    invoke-direct {v3, p0}, Lcom/vivo/settings/VivoLocalePicker$4;-><init>(Lcom/vivo/settings/VivoLocalePicker;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .end local v0    # "layout_nextStep":Landroid/widget/RelativeLayout;
    .end local v1    # "tv_nextStep":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    const v3, 0x7f04006d

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 356
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 357
    iget-boolean v1, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    if-eqz v1, :cond_0

    .line 358
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoLocalePicker;->nextStep(Z)V

    .line 359
    const/4 v0, 0x1

    .line 362
    :cond_0
    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 263
    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v2}, Lcom/vivo/settings/SingleChoiseAdapter;->getCount()I

    move-result v2

    if-le p3, v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v2, p3}, Lcom/vivo/settings/SingleChoiseAdapter;->setCheckPos(I)V

    .line 268
    iget-object v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v2}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetInvalidated()V

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v2, p3}, Lcom/vivo/settings/SingleChoiseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;

    invoke-virtual {v2}, Lcom/vivo/settings/VivoLocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 271
    .local v1, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    iget-boolean v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    if-eqz v2, :cond_3

    .line 275
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoLocalePicker;->nextStep(Z)V

    .line 279
    :goto_1
    invoke-static {v1}, Lcom/vivo/settings/VivoLocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onPause()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onResume()V

    .line 112
    const-string v0, "LocalePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSetupWizard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-boolean v0, p0, Lcom/vivo/settings/VivoLocalePicker;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 119
    :cond_0
    return-void
.end method
