.class public Lcom/android/keyguard/VivoGenericLoginUnlock;
.super Landroid/widget/LinearLayout;
.source "VivoGenericLoginUnlock.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final ACTION_VISITMODE_SWITCH:Ljava/lang/String; = "android.settings.VisitMode.action.TURN_ON"

.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "VivoGenericLoginUnlock"

.field private static final TEXTLENGHT:I = 0x80


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mClick:Z

.field private mDialog:Landroid/app/AlertDialog;

.field public mEnableFallback:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mMessage:Ljava/lang/String;

.field private mMsgView:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/EditText;

.field private mVivoGenericLoginUnlock:Lcom/android/keyguard/VivoGenericLoginUnlock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/VivoGenericLoginUnlock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mClick:Z

    .line 199
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/VivoGenericLoginUnlock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->asyncCheckPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/VivoGenericLoginUnlock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mClick:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/VivoGenericLoginUnlock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mClick:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoGenericLoginUnlock;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 344
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 346
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/VivoGenericLoginUnlock;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "bbk_password":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bbk_answer"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "rightAnswer":Ljava/lang/String;
    const-string v5, "VivoGenericLoginUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rightAnswer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v5, "VivoGenericLoginUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bbk_password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-nez v1, :cond_0

    .line 352
    invoke-direct {p0, v8}, Lcom/android/keyguard/VivoGenericLoginUnlock;->postOnCheckPasswordResult(Z)V

    .line 377
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    invoke-direct {p0, v9}, Lcom/android/keyguard/VivoGenericLoginUnlock;->postOnCheckPasswordResult(Z)V

    .line 359
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "visit_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 360
    .local v0, "Lock_mode":I
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "visit_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "visit_password"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.VisitMode.action.TURN_ON"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "switch_menu"

    const-string v6, "visit_mode"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    if-eqz v0, :cond_1

    .line 366
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->clean_visit_mode:I

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 368
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 369
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 372
    .end local v0    # "Lock_mode":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->loginDialog()V

    .line 373
    iget-object v5, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->vivo_login_problem_invalid_input:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 374
    invoke-direct {p0, v8}, Lcom/android/keyguard/VivoGenericLoginUnlock;->postOnCheckPasswordResult(Z)V

    goto :goto_0
.end method

.method private loginDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$layout;->vivo_generic_login_dialog:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/android/keyguard/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mMsgView:Landroid/widget/TextView;

    .line 441
    sget v1, Lcom/android/keyguard/R$id;->edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    .line 442
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 443
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 444
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mMsgView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->problem_label:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    const v3, 0x30f0004

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/android/keyguard/R$string;->vivo_login_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/keyguard/VivoGenericLoginUnlock$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/VivoGenericLoginUnlock$4;-><init>(Lcom/android/keyguard/VivoGenericLoginUnlock;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/keyguard/VivoGenericLoginUnlock$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/VivoGenericLoginUnlock$3;-><init>(Lcom/android/keyguard/VivoGenericLoginUnlock;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/VivoGenericLoginUnlock$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/VivoGenericLoginUnlock$2;-><init>(Lcom/android/keyguard/VivoGenericLoginUnlock;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    .line 489
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 493
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 494
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 495
    return-void
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/VivoGenericLoginUnlock$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/VivoGenericLoginUnlock$1;-><init>(Lcom/android/keyguard/VivoGenericLoginUnlock;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method


# virtual methods
.method public EE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "plainText"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    .line 416
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 417
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 418
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 420
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 422
    aget-byte v3, v0, v5

    .line 423
    .local v3, "i":I
    if-gez v3, :cond_0

    .line 424
    add-int/lit16 v3, v3, 0x100

    .line 425
    :cond_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_1

    .line 426
    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 429
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 433
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 430
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method public MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "plainText"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v0, "MD5"

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->EE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA"

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/VivoGenericLoginUnlock;->EE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 240
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "text":Ljava/lang/String;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 242
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->confirm_max_lenth:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 251
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 325
    const-string v0, "VivoGenericLoginUnlock"

    const-string v1, "dispatchKeyEvent == "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 337
    :cond_1
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 409
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 285
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 205
    sget v0, Lcom/android/keyguard/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLogin:Landroid/widget/EditText;

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_problem"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mMessage:Ljava/lang/String;

    .line 207
    const-string v0, "VivoGenericLoginUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "questionData == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget v0, Lcom/android/keyguard/R$id;->vivo_generic_login_unlock:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/VivoGenericLoginUnlock;

    iput-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mVivoGenericLoginUnlock:Lcom/android/keyguard/VivoGenericLoginUnlock;

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 383
    const-string v1, "VivoGenericLoginUnlock"

    const-string v2, "============onPause=========="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 385
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 391
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->loginDialog()V

    .line 396
    invoke-virtual {p0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->reset()V

    .line 397
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 257
    :cond_0
    const-string v0, "VivoGenericLoginUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 215
    const-string v0, "VivoGenericLoginUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_problem"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mMessage:Ljava/lang/String;

    .line 276
    const-string v0, "VivoGenericLoginUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summary of qstore is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 279
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 228
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 232
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 405
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method
