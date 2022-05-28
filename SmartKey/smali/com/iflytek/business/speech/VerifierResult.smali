.class public Lcom/iflytek/business/speech/VerifierResult;
.super Ljava/lang/Object;
.source "VerifierResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/iflytek/business/speech/b;

    invoke-direct {v0}, Lcom/iflytek/business/speech/b;-><init>()V

    sput-object v0, Lcom/iflytek/business/speech/VerifierResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/business/speech/VerifierResult;->i:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/iflytek/business/speech/VerifierResult;->j:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/business/speech/VerifierResult;->k:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/business/speech/VerifierResult;->l:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/iflytek/business/speech/VerifierResult;->m:I

    .line 65
    iput v1, p0, Lcom/iflytek/business/speech/VerifierResult;->n:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/business/speech/VerifierResult;->o:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/business/speech/VerifierResult;->source:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/business/speech/VerifierResult;->i:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/business/speech/VerifierResult;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
