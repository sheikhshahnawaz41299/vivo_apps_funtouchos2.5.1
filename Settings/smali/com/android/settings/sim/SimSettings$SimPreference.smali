.class Lcom/android/settings/sim/SimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private mColorStrings:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mTintArr:[I

.field private mTintSelectorPos:I

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subInfoRecord"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    .line 284
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 286
    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    .line 287
    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 288
    iput p4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 291
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    .line 292
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    .line 294
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    .line 275
    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/sim/SimSettings$SimPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;
    .param p1, "x1"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings$SimPreference;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    return-object v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
    .locals 17
    .param p1, "simPref"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 324
    .local v9, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040080

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 328
    .local v4, "dialogLayout":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 330
    const v13, 0x7f0e015c

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 331
    .local v6, "nameText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v13, 0x7f0e015d

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 334
    .local v11, "tintSpinner":Landroid/widget/Spinner;
    new-instance v1, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0400c5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v14, v15}, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 336
    .local v1, "adapter":Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;
    const v13, 0x1090009

    invoke-virtual {v1, v13}, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 337
    invoke-virtual {v11, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 339
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    array-length v13, v13

    if-ge v5, v13, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    aget v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v14

    if-ne v13, v14, :cond_1

    .line 341
    invoke-virtual {v11, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 342
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    .line 347
    :cond_0
    new-instance v13, Lcom/android/settings/sim/SimSettings$SimPreference$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/android/settings/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/widget/Spinner;)V

    invoke-virtual {v11, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 360
    const v13, 0x7f0e015f

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 361
    .local v7, "numberView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-static {v13, v14}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "rawNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 363
    const v13, 0x104000e

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 371
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, "simCarrierName":Ljava/lang/String;
    const v13, 0x7f0e015e

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 374
    .local v3, "carrierView":Landroid/widget/TextView;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .end local v10    # "simCarrierName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v13, 0x7f0b06b6

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 380
    const v13, 0x7f0b00cd

    new-instance v14, Lcom/android/settings/sim/SimSettings$SimPreference$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4, v11}, Lcom/android/settings/sim/SimSettings$SimPreference$2;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/view/View;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    const v13, 0x7f0b00cb

    new-instance v14, Lcom/android/settings/sim/SimSettings$SimPreference$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/sim/SimSettings$SimPreference$3;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 412
    return-void

    .line 339
    .end local v3    # "carrierView":Landroid/widget/TextView;
    .end local v7    # "numberView":Landroid/widget/TextView;
    .end local v8    # "rawNumber":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 365
    .restart local v7    # "numberView":Landroid/widget/TextView;
    .restart local v8    # "rawNumber":Ljava/lang/String;
    :cond_2
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 374
    .restart local v3    # "carrierView":Landroid/widget/TextView;
    .restart local v10    # "simCarrierName":Ljava/lang/String;
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x104000e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method public getSubInfoRecord()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 297
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 299
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-static {v1, v2}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :goto_1
    return-void

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-static {v2, v3}, Lcom/android/settings/sim/SimSettings;->access$000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_0

    .line 311
    :cond_1
    const v1, 0x7f0b06b4

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(I)V

    .line 312
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_1
.end method
