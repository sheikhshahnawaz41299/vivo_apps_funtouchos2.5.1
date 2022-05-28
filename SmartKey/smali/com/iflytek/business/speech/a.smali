.class Lcom/iflytek/business/speech/a;
.super Ljava/lang/Object;
.source "RecognizerResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/business/speech/RecognizerResult;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/iflytek/business/speech/RecognizerResult;

    invoke-direct {v0, p1}, Lcom/iflytek/business/speech/RecognizerResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/business/speech/RecognizerResult;
    .locals 1

    .prologue
    .line 80
    new-array v0, p1, [Lcom/iflytek/business/speech/RecognizerResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/business/speech/a;->a(Landroid/os/Parcel;)Lcom/iflytek/business/speech/RecognizerResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/business/speech/a;->a(I)[Lcom/iflytek/business/speech/RecognizerResult;

    move-result-object v0

    return-object v0
.end method
