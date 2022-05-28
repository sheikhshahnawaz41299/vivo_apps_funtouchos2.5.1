.class public interface abstract Lcom/vlife/plugin/card/impl/action/IAction;
.super Ljava/lang/Object;
.source "IAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ARRAY:I = 0x5

.field public static final BOOLEAN:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vlife/plugin/card/impl/action/IAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:I = 0x3

.field public static final INTEGER:I = 0x2

.field public static final LONG:I = 0x1

.field public static final MAP:I = 0x6

.field public static final NULL:I = 0x8

.field public static final STRING:I = 0x0

.field public static final UNDEFINE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/vlife/plugin/card/impl/action/ActionCreator;

    invoke-direct {v0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;-><init>()V

    sput-object v0, Lcom/vlife/plugin/card/impl/action/IAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract getStringValue()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method
