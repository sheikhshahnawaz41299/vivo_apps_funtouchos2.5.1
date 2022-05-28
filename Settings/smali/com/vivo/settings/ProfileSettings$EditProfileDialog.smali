.class Lcom/vivo/settings/ProfileSettings$EditProfileDialog;
.super Ljava/lang/Object;
.source "ProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditProfileDialog"
.end annotation


# instance fields
.field private isAdd:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mProfileInfo:Lcom/vivo/settings/ProfileSettings$ProfileInfo;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowNewWhenDismiss:Z

.field private mSystemVolume:I

.field private mView:Landroid/view/View;

.field private msgRes:I

.field final synthetic this$0:Lcom/vivo/settings/ProfileSettings;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/ProfileSettings;Landroid/content/Context;ZLcom/vivo/settings/ProfileSettings$ProfileInfo;II)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "add"    # Z
    .param p4, "info"    # Lcom/vivo/settings/ProfileSettings$ProfileInfo;
    .param p5, "msgRes"    # I
    .param p6, "oldPos"    # I

    .prologue
    .line 453
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->msgRes:I

    .line 443
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mProfileInfo:Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    .line 444
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isAdd:Z

    .line 452
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mShowNewWhenDismiss:Z

    .line 454
    iput-object p2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    .line 455
    iput-boolean p3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isAdd:Z

    .line 456
    iput-object p4, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mProfileInfo:Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    .line 457
    iput p5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->msgRes:I

    .line 458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p3, :cond_2

    const v5, 0x7f0b07ac

    :goto_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 460
    const-string v5, "layout_inflater"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 461
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040056

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    .line 462
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    const v5, 0x7f0b08b4

    new-instance v6, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;

    invoke-direct {v6, p0, p1, p6}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;-><init>(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;Lcom/vivo/settings/ProfileSettings;I)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    const v5, 0x7f0b08b2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    .line 487
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 488
    invoke-virtual {p0, p5}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->setMessage(I)V

    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, "mDefaulUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/vivo/settings/ProfileSettings;->access$1500(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Lcom/vivo/settings/ProfileSettings;->access$1500(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    const/4 v4, 0x0

    .line 494
    .local v4, "ring":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone_sim2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 496
    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 504
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "external"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 510
    :cond_0
    if-nez v3, :cond_1

    .line 511
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 523
    .end local v4    # "ring":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mRingtone:Landroid/media/Ringtone;

    .line 524
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->initEdit()V

    .line 525
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->initSeekBar()V

    .line 526
    return-void

    .line 459
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "mDefaulUri":Landroid/net/Uri;
    :cond_2
    const v5, 0x7f0b080b

    goto/16 :goto_0

    .line 496
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "mDefaulUri":Landroid/net/Uri;
    .restart local v4    # "ring":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v5, "ProfileSettings"

    const-string v6, "IllegalStateException when get ringtone_sim2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 516
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "ring":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-static {p2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_2

    .line 518
    :catch_1
    move-exception v1

    .line 519
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string v5, "ProfileSettings"

    const-string v6, "IllegalStateException when get ringtone"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v5, 0x1

    invoke-static {p2, v5}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2
.end method

.method static synthetic access$1100(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$ProfileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mProfileInfo:Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isAdd:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings$EditProfileDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mShowNewWhenDismiss:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initEdit()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mEditText:Landroid/widget/EditText;

    .line 536
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 538
    :cond_0
    return-void
.end method

.method private initSeekBar()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    const v1, 0x7f0e0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 530
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v1}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 531
    return-void
.end method

.method private sample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 637
    const-string v0, "ProfileSettings"

    const-string v1, "++++on sample "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 644
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->stopSample()V

    .line 645
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, -0x1

    .line 603
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/vivo/settings/ProfileSettings;->access$1700(Lcom/vivo/settings/ProfileSettings;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 606
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 594
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 571
    :cond_0
    return-void
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    .line 650
    packed-switch p1, :pswitch_data_0

    .line 661
    :goto_0
    :pswitch_0
    return-void

    .line 652
    :pswitch_1
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->stopSample()V

    goto :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 665
    const-string v4, "ProfileSettings"

    const-string v5, "profile dialog dismiss"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->stopSample()V

    .line 667
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v4}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 668
    iget v4, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSystemVolume:I

    if-nez v4, :cond_3

    .line 669
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v4}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 671
    .local v0, "callVibrateSetting":I
    if-ne v0, v2, :cond_2

    move v1, v2

    .line 672
    .local v1, "vibrateSetting":Z
    :goto_0
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v4}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 676
    .end local v0    # "callVibrateSetting":I
    .end local v1    # "vibrateSetting":Z
    :goto_1
    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 677
    iget-boolean v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mShowNewWhenDismiss:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v3}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 678
    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v3}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->show(Z)V

    .line 680
    :cond_1
    return-void

    .restart local v0    # "callVibrateSetting":I
    :cond_2
    move v1, v3

    .line 671
    goto :goto_0

    .line 674
    .end local v0    # "callVibrateSetting":I
    :cond_3
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v4}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x2

    iget v6, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSystemVolume:I

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 684
    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KeyEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 686
    .local v0, "isdown":Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 702
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isdown":Z
    :cond_1
    move v0, v2

    .line 685
    goto :goto_0

    .line 688
    .restart local v0    # "isdown":Z
    :pswitch_0
    if-eqz v0, :cond_0

    .line 689
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 690
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 695
    :pswitch_1
    if-eqz v0, :cond_0

    .line 696
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-lez v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 686
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 617
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->sample()V

    .line 618
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 623
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 628
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 599
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "msgRes"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->setMessage(Ljava/lang/String;)V

    .line 589
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 581
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "isFirstShow"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 545
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v1}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSystemVolume:I

    .line 547
    if-eqz p1, :cond_0

    .line 548
    iget-boolean v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isAdd:Z

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v2}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 553
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mProfileInfo:Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mProfileInfo:Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v1}, Lcom/vivo/settings/ProfileSettings;->access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 557
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 559
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 560
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 561
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 562
    .local v0, "ss":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v1, v0}, Lcom/vivo/settings/ProfileSettings;->access$1700(Lcom/vivo/settings/ProfileSettings;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 566
    .end local v0    # "ss":Ljava/lang/String;
    :cond_1
    return-void

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mProfileInfo:Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public stopSample()V
    .locals 2

    .prologue
    .line 631
    const-string v0, "ProfileSettings"

    const-string v1, "stopSample"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 635
    :cond_0
    return-void
.end method
