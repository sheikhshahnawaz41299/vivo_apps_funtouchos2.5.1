.class public Lcom/tpad/ux/funlocker/UXObject;
.super Ljava/lang/Object;
.source "UXObject.java"


# instance fields
.field private enc_type:Lcom/tpad/ux/funlocker/EncType;

.field private support3D:I

.field private supportTransparent:I

.field private ux_CreateTime:Ljava/lang/String;

.field private ux_Creator:Ljava/lang/String;

.field private ux_Path:Ljava/lang/String;

.field private ux_buffer:[B

.field private ux_height:I

.field private ux_width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_Path:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/tpad/ux/funlocker/EncType;->ENC_TPAD:Lcom/tpad/ux/funlocker/EncType;

    iput-object v0, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/tpad/ux/funlocker/EncType;II)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "enc_type"    # Lcom/tpad/ux/funlocker/EncType;
    .param p5, "support3D"    # I
    .param p6, "supportTransparent"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_Path:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_width:I

    .line 53
    iput p3, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_height:I

    .line 54
    iput p5, p0, Lcom/tpad/ux/funlocker/UXObject;->support3D:I

    .line 55
    iput p6, p0, Lcom/tpad/ux/funlocker/UXObject;->supportTransparent:I

    .line 56
    iput-object p4, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tpad/ux/funlocker/EncType;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "enc_type"    # Lcom/tpad/ux/funlocker/EncType;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_Path:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_buffer:[B

    .line 18
    sget-object v0, Lcom/tpad/ux/funlocker/EncType;->ENC_TPAD:Lcom/tpad/ux/funlocker/EncType;

    iput-object v0, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    .line 19
    return-void
.end method

.method public constructor <init>([BIILcom/tpad/ux/funlocker/EncType;II)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "enc_type"    # Lcom/tpad/ux/funlocker/EncType;
    .param p5, "support3D"    # I
    .param p6, "supportTransparent"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_buffer:[B

    .line 30
    iput p2, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_width:I

    .line 31
    iput p3, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_height:I

    .line 32
    iput p5, p0, Lcom/tpad/ux/funlocker/UXObject;->support3D:I

    .line 33
    iput p6, p0, Lcom/tpad/ux/funlocker/UXObject;->supportTransparent:I

    .line 34
    iput-object p4, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    .line 35
    return-void
.end method

.method public constructor <init>([BLcom/tpad/ux/funlocker/EncType;)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "enc_type"    # Lcom/tpad/ux/funlocker/EncType;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_buffer:[B

    .line 24
    iput-object p2, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    .line 25
    return-void
.end method


# virtual methods
.method public getEnc_type()Lcom/tpad/ux/funlocker/EncType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    return-object v0
.end method

.method public getSupport3D()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/tpad/ux/funlocker/UXObject;->support3D:I

    return v0
.end method

.method public getSupportTransparent()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/tpad/ux/funlocker/UXObject;->supportTransparent:I

    return v0
.end method

.method public getUx_CreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_CreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUx_Creator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_Creator:Ljava/lang/String;

    return-object v0
.end method

.method public getUx_Path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_Path:Ljava/lang/String;

    return-object v0
.end method

.method public getUx_buffer()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_buffer:[B

    return-object v0
.end method

.method public getUx_height()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_height:I

    return v0
.end method

.method public getUx_width()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_width:I

    return v0
.end method

.method public setEnc_type(Lcom/tpad/ux/funlocker/EncType;)V
    .locals 0
    .param p1, "enc_type"    # Lcom/tpad/ux/funlocker/EncType;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->enc_type:Lcom/tpad/ux/funlocker/EncType;

    .line 127
    return-void
.end method

.method public setSupport3D(I)V
    .locals 0
    .param p1, "support3d"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/tpad/ux/funlocker/UXObject;->support3D:I

    .line 132
    return-void
.end method

.method public setSupportTransparent(I)V
    .locals 0
    .param p1, "supportTransparent"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/tpad/ux/funlocker/UXObject;->supportTransparent:I

    .line 137
    return-void
.end method

.method public setUx_CreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "ux_CreateTime"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_CreateTime:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setUx_Creator(Ljava/lang/String;)V
    .locals 0
    .param p1, "ux_Creator"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_Creator:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setUx_Path(Ljava/lang/String;)V
    .locals 0
    .param p1, "ux_Path"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_Path:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUx_buffer([B)V
    .locals 0
    .param p1, "ux_buffer"    # [B

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_buffer:[B

    .line 112
    return-void
.end method

.method public setUx_height(I)V
    .locals 0
    .param p1, "ux_height"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_height:I

    .line 122
    return-void
.end method

.method public setUx_width(I)V
    .locals 0
    .param p1, "ux_width"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/tpad/ux/funlocker/UXObject;->ux_width:I

    .line 117
    return-void
.end method
