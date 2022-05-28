.class public Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
.super Lcom/vivo/app/VivoBaseActivity;
.source "IconSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;
    }
.end annotation


# static fields
.field private static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final ACTION_PICK:Ljava/lang/String; = "com.vivo.gallery.ACTION_PICK"

.field private static final CAMERA_WITH_DATA:I = 0xbcf

.field private static final EDIT_TEXT_LENGTH_12:I = 0xc

.field private static final MSG_ACTIVITY_FINISH:I = 0x1

.field private static final MSG_LOAD_ICON_NAME_SUCCESS:I = 0x2

.field private static final PHOTO_DIR:Ljava/io/File;

.field private static final SHORTSETTING_WITH_DATA:I = 0xbce

.field private static final SIGNATURE_LINE_LIMIT:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static mCurrentPhotoFile:Ljava/io/File;


# instance fields
.field private mColorClickListener:Landroid/view/View$OnClickListener;

.field private mColorContainer:Landroid/view/ViewGroup;

.field private mColorItem:[Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCustomSettings:Landroid/content/SharedPreferences;

.field private mDelayFinish:Z

.field private mGifFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconId:I

.field private mIconName:Ljava/lang/String;

.field private mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

.field private mIsGif:Z

.field private mIsLeftDouble:Z

.field private mIsRightDouble:Z

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field private mLeftCls:Ljava/lang/String;

.field private mLeftPkg:Ljava/lang/String;

.field private mLeftSummary:Landroid/widget/TextView;

.field private mLeftTitle:Landroid/widget/TextView;

.field private mNameInput:Landroid/widget/EditText;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field private mRightCls:Ljava/lang/String;

.field private mRightPkg:Ljava/lang/String;

.field private mRightSummary:Landroid/widget/TextView;

.field private mRightTitle:Landroid/widget/TextView;

.field private mSaveThread:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

.field private mSaving:Z

.field private mSavingDialog:Landroid/app/ProgressDialog;

.field private mShortcutLeft:Landroid/view/ViewGroup;

.field private mShortcutRight:Landroid/view/ViewGroup;

.field private mShortcutWidth:I

.field private mShowColorList:Z

.field private mSignature:Ljava/lang/String;

.field private mSignatureBackground:Landroid/widget/RelativeLayout;

.field private mSignatureColorIndex:I

.field private mSignatureInput:Landroid/widget/EditText;

.field private mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const-string v0, "IconSettings"

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    .line 749
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 100
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 110
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageWidth:I

    .line 111
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageHeight:I

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShowColorList:Z

    .line 114
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureColorIndex:I

    .line 115
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignature:Ljava/lang/String;

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSaving:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mDelayFinish:Z

    .line 120
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsGif:Z

    .line 122
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    .line 134
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutWidth:I

    .line 136
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mHandler:Landroid/os/Handler;

    .line 813
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->dismissSavingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->lockNow()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSaving:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->showIconViewEditDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsLeftDouble:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsRightDouble:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->saveIcon()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->handleLoadDataSuccess()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->saveShortcutImage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->commitCustomSettings()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureColorIndex:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setSignature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->loadNameIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mDelayFinish:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->enableScreen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSaveThread:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSaveThread:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    return-object p1
.end method

.method private commitCustomSettings()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 894
    const/4 v1, 0x0

    .line 895
    .local v1, "editAble":Landroid/text/Editable;
    const/4 v2, 0x0

    .line 896
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 898
    .local v4, "signature":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 899
    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 903
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 904
    if-eqz v1, :cond_4

    .line 905
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 906
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLineCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 907
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 909
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 910
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 911
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 913
    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    .line 914
    const-string v5, "\r"

    invoke-virtual {v3, v0, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    .end local v0    # "count":I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 920
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 923
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 926
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 927
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "signature"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 928
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "font_color"

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureColorIndex:I

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getColorString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 930
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "left_pkg"

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 931
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "left_cls"

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 932
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "right_pkg"

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 933
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "right_cls"

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 934
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "left_double"

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsLeftDouble:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 935
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "right_double"

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsRightDouble:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 936
    return-void
.end method

.method private dismissSavingDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 962
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v2, "dismiss saving dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    throw v1
.end method

.method private doCropPhoto(Ljava/io/File;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 770
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 773
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 774
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crop photo failed. - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doTakePhoto()V
    .locals 5

    .prologue
    .line 731
    :try_start_0
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->PHOTO_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 732
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->PHOTO_DIR:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getPhotoFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCurrentPhotoFile:Ljava/io/File;

    .line 733
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 734
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xbcf

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "take photo failed. - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableScreen(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 587
    if-eqz p1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 592
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleLeftButtonEnable(Z)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleRightButtonEnable(Z)V

    .line 603
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 599
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleLeftButtonEnable(Z)V

    .line 600
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleRightButtonEnable(Z)V

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->showSavingDialog()V

    goto :goto_0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSaveThread:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSaveThread:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->isRunning:Z

    if-ne v0, v1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->lockNow()V

    .line 511
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mDelayFinish:Z

    goto :goto_0
.end method

.method private getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 784
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCropImageIntent Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    if-nez p1, :cond_0

    .line 788
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vivo.gallery.ACTION_PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "outputX"

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    const-string v2, "outputY"

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    const-string v2, "aspectX"

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 802
    const-string v2, "aspectY"

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    const-string v2, "scaleUpIfNeeded"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 804
    const-string v2, "scale"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 805
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 806
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 808
    const-string v2, "circlecrop"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 809
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 810
    return-object v1

    .line 791
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.vivo.gallery"

    const-string v3, "com.android.gallery3d.app.CropImage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getCropPhoto()V
    .locals 4

    .prologue
    .line 693
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start activity with ACTION_PICK failed. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 744
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 745
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 746
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    return-object v0
.end method

.method public static getStringCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 663
    const-string v1, "[^\\x00-\\xff]"

    const-string v2, "**"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 665
    .local v0, "length":I
    return v0
.end method

.method private static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 759
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 760
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 761
    return-object v0
.end method

.method private handleLoadDataSuccess()V
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setIconByPath()V

    .line 850
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setName(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setSignature(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method private initColorContainer()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    const v0, 0x7f1101a6

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    .line 356
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    .line 357
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    const v2, 0x7f110196

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    const v2, 0x7f110197

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 360
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    const v2, 0x7f110198

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 362
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    const v2, 0x7f110199

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 364
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    const v2, 0x7f11019a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v7

    .line 366
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    const v3, 0x7f11019b

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 368
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    const v3, 0x7f11019c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 370
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShowColorList:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 374
    const v0, 0x7f1101a5

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_0
    return-void
.end method

.method private initCustomInfo()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    .line 235
    :cond_0
    const v0, 0x7f11019f

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setViewShape(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v0, 0x7f1101a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 263
    const v0, 0x7f1101b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    const v0, 0x7f1101b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureBackground:Landroid/widget/RelativeLayout;

    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureBackground:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$8;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    return-void
.end method

.method private initShortcutList()V
    .locals 9

    .prologue
    const v8, 0x7f1101ab

    const v7, 0x7f11009b

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 301
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutWidth:I

    .line 304
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "left_pkg"

    const-string v2, "com.android.dialer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "left_cls"

    const-string v2, "com.android.dialer.TwelveKeyDialer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "left_double"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsLeftDouble:Z

    .line 307
    const v0, 0x7f1101a3

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutLeft:Landroid/view/ViewGroup;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutLeft:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftTitle:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftTitle:Landroid/widget/TextView;

    const v1, 0x7f0e01a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutLeft:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftSummary:Landroid/widget/TextView;

    .line 311
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsLeftDouble:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutLeft:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "right_pkg"

    const-string v2, "com.android.camera"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "right_cls"

    const-string v2, "com.android.camera.CameraActivity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "right_double"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsRightDouble:Z

    .line 329
    const v0, 0x7f1101a4

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutRight:Landroid/view/ViewGroup;

    .line 330
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutRight:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightTitle:Landroid/widget/TextView;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightTitle:Landroid/widget/TextView;

    const v1, 0x7f0e01a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutRight:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightSummary:Landroid/widget/TextView;

    .line 333
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsRightDouble:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutRight:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$10;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShowColorList:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutLeft:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutRight:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 349
    const v0, 0x7f1101a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 350
    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 1

    .prologue
    .line 185
    const v0, 0x7f0e0180

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 187
    const v0, 0x7f0e0181

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->showTitleLeftButton()V

    .line 189
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f0e0182

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->showTitleRightButton()V

    .line 201
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method private loadNameIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "icon_id"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    .line 487
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconName:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "signature"

    const v2, 0x7f0e017e

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignature:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "font_color"

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getColorIndexBySring(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureColorIndex:I

    .line 491
    return-void
.end method

.method private lockNow()V
    .locals 7

    .prologue
    .line 855
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 856
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->finish()V

    .line 871
    :goto_0
    return-void

    .line 859
    :cond_0
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 860
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 861
    .local v1, "iWm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 862
    .local v2, "opts":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "opts":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 864
    .restart local v2    # "opts":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.action.BBK_LOCK_SCREEN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->finish()V

    goto :goto_0

    .line 865
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private saveIcon()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 381
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 382
    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsGif:Z

    if-eqz v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 384
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 387
    .local v4, "len":I
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 388
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 389
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 390
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    .end local v1    # "buffer":[B
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 397
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 398
    .local v2, "iconDataBytes":[B
    const-string v5, "/data/bbkcore/lock_screen_nature/icon"

    invoke-static {v5, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->writeImageDataToFile(Ljava/lang/String;[B)V

    .line 400
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "icon_id"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "iconDataBytes":[B
    .end local v4    # "len":I
    :cond_0
    :goto_2
    return-void

    .line 392
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 404
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 407
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 408
    .restart local v2    # "iconDataBytes":[B
    const-string v5, "/data/bbkcore/lock_screen_nature/icon"

    invoke-static {v5, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->writeImageDataToFile(Ljava/lang/String;[B)V

    .line 410
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "icon_id"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method private saveShortcutImage()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 876
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 877
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 879
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 880
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 881
    .local v1, "iconDataBytes":[B
    const-string v2, "/data/bbkcore/lock_screen_nature/left_shortcut"

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->writeImageDataToFile(Ljava/lang/String;[B)V

    .line 884
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "iconDataBytes":[B
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 885
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 887
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 888
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 889
    .restart local v1    # "iconDataBytes":[B
    const-string v2, "/data/bbkcore/lock_screen_nature/right_shortcut"

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->writeImageDataToFile(Ljava/lang/String;[B)V

    .line 891
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "iconDataBytes":[B
    :cond_1
    return-void
.end method

.method private setIcon(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 475
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 476
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage([B)V

    .line 478
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 479
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v3, "baos.close() error!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setIconByPath()V
    .locals 4

    .prologue
    .line 452
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/bbkcore/lock_screen_nature/icon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "icon":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    if-gtz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    const-string v2, "/data/bbkcore/lock_screen_nature/icon"

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    goto :goto_0

    .line 461
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 462
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    goto :goto_0

    .line 463
    :cond_3
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconId:I

    if-gez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    const-string v2, "/data/bbkcore/lock_screen_nature/icon"

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_4
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v2, "icon id < 0, but the icon file dose not exists."

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    goto :goto_0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 415
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 419
    :cond_0
    return-void
.end method

.method private setSignature(Ljava/lang/String;)V
    .locals 4
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 423
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureInput:Landroid/widget/EditText;

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 430
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureColorIndex:I

    if-ne v0, v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSignatureColorIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 429
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mColorItem:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 437
    :cond_2
    return-void
.end method

.method private showIconViewEditDialog()V
    .locals 7

    .prologue
    .line 700
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0187

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0188

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 702
    .local v2, "choices":[Ljava/lang/String;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    const/high16 v5, 0x30f0000

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 703
    .local v3, "dialogContext":Landroid/content/Context;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 705
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 706
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e0186

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 707
    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    const v4, 0x1010355

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 709
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 710
    return-void
.end method

.method private showSavingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 939
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 940
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v1, "showSavingDialog ProgressDialog is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    return-void

    .line 944
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    .line 945
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0189

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 947
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 948
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 958
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v1, "show saving dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 442
    const-string v0, "/data/bbkcore/lock_screen_nature/name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_custom_head_portrait_name_string"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string v0, "/data/bbkcore/lock_screen_nature/signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_custom_signature_name_string"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 446
    :cond_2
    const-string v0, "/data/bbkcore/lock_screen_nature/signature_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_custom_signature_color_name_string"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x400

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 516
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/app/VivoBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 517
    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    .line 518
    const-string v3, "isGif"

    invoke-virtual {p3, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsGif:Z

    .line 519
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsGif:Z

    if-eqz v3, :cond_3

    .line 520
    const-string v3, "gifFilePath"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    .line 525
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 526
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v1, "f":Ljava/io/File;
    const-string v3, "gif"

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/FileUtils;->getFileType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 528
    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v4, "the gif file is error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0e01ab

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 530
    iput-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    .line 584
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 533
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 534
    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v4, "gif size too large"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0e01aa

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 536
    iput-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    goto :goto_0

    .line 539
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mGifFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 543
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setIcon(Landroid/graphics/Bitmap;)V

    .line 545
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 546
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 548
    :cond_4
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 551
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    const/16 v3, 0xbcf

    if-ne v3, p1, :cond_6

    .line 552
    if-eqz p2, :cond_0

    .line 555
    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCurrentPhotoFile:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->doCropPhoto(Ljava/io/File;)V

    goto :goto_0

    .line 556
    :cond_6
    const/16 v3, 0xbce

    if-ne v3, p1, :cond_0

    if-eqz p3, :cond_0

    .line 557
    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult,SHORTSETTING_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v3, "shortcutFlag"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 559
    const-string v3, "shortcutPackage"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    .line 560
    const-string v3, "shortcutCls"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    .line 561
    const-string v3, "doubleInstance"

    invoke-virtual {p3, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsLeftDouble:Z

    .line 562
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsLeftDouble:Z

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutWidth:I

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsLeftDouble:Z

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 564
    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "left shortcut, mLeftPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLeftCls = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    const-string v4, "10644"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftPkg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeCollectData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_7
    :goto_1
    const-string v3, "home"

    invoke-virtual {p3, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 579
    .local v2, "finish":Z
    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-eqz v2, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->finishActivity()V

    goto/16 :goto_0

    .line 567
    .end local v2    # "finish":Z
    :cond_8
    const-string v3, "shortcutFlag"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 568
    const-string v3, "shortcutPackage"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    .line 569
    const-string v3, "shortcutCls"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    .line 570
    const-string v3, "doubleInstance"

    invoke-virtual {p3, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsRightDouble:Z

    .line 571
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsRightDouble:Z

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShortcutWidth:I

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIsRightDouble:Z

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 573
    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "left shortcut, mRightPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRightCls = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightCls:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    const-string v4, "10645"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightPkg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeCollectData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 714
    packed-switch p2, :pswitch_data_0

    .line 722
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 723
    return-void

    .line 716
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getCropPhoto()V

    goto :goto_0

    .line 719
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->doTakePhoto()V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x12c

    .line 156
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 159
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    const v1, 0x7f040062

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setContentView(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    .line 164
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 165
    const-string v1, "custom_settings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCustomSettings:Landroid/content/SharedPreferences;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_width"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageWidth:I

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_height"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mCropImageHeight:I

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_color_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mShowColorList:Z

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->initTitle()V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->initCustomInfo()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->initShortcutList()V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->initColorContainer()V

    .line 175
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$2;->start()V

    .line 182
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 638
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->enableScreen(Z)V

    .line 639
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onDestroy()V

    .line 640
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 495
    packed-switch p1, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 498
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->finishActivity()V

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 617
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onStop()V

    .line 619
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 621
    .local v0, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 625
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 607
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onWindowFocusChanged(Z)V

    .line 609
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSaving:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mDelayFinish:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->mSavingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->finish()V

    .line 613
    :cond_1
    return-void
.end method

.method setEditTextLength(Landroid/view/View;II)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 669
    instance-of v7, p1, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    move-object v1, p1

    .line 670
    check-cast v1, Landroid/widget/EditText;

    .line 671
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 672
    .local v2, "editable":Landroid/text/Editable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, "str":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->getStringCount(Ljava/lang/String;)I

    move-result v3

    .line 674
    .local v3, "length1":I
    const/16 v7, 0xc

    if-le v3, v7, :cond_2

    .line 675
    add-int v6, p2, p3

    invoke-interface {v2, p2, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 676
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 677
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 689
    .end local v1    # "editText":Landroid/widget/EditText;
    .end local v2    # "editable":Landroid/text/Editable;
    .end local v3    # "length1":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 672
    .restart local v1    # "editText":Landroid/widget/EditText;
    .restart local v2    # "editable":Landroid/text/Editable;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 682
    .restart local v3    # "length1":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 683
    .local v4, "length2":I
    :goto_2
    sub-int v0, v3, v4

    .line 685
    .local v0, "diff":I
    if-eqz v5, :cond_0

    .line 686
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    rsub-int/lit8 v9, v0, 0xc

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v6

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .end local v0    # "diff":I
    .end local v4    # "length2":I
    :cond_3
    move v4, v6

    .line 682
    goto :goto_2
.end method
