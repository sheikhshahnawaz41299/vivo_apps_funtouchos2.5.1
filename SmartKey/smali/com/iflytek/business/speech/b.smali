.class Lcom/iflytek/business/speech/b;
.super Ljava/lang/Object;
.source "VerifierResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/iflytek/business/speech/VerifierResult;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/iflytek/business/speech/VerifierResult;

    invoke-direct {v0, p1}, Lcom/iflytek/business/speech/VerifierResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/iflytek/business/speech/VerifierResult;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Lcom/iflytek/business/speech/VerifierResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/business/speech/b;->b(Landroid/os/Parcel;)Lcom/iflytek/business/speech/VerifierResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/business/speech/b;->b(I)[Lcom/iflytek/business/speech/VerifierResult;

    move-result-object v0

    return-object v0
.end method
