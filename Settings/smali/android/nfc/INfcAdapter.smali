.class public interface abstract Landroid/nfc/INfcAdapter;
.super Ljava/lang/Object;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
