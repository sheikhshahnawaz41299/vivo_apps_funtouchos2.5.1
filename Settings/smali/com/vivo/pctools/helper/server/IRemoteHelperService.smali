.class public interface abstract Lcom/vivo/pctools/helper/server/IRemoteHelperService;
.super Ljava/lang/Object;
.source "IRemoteHelperService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/pctools/helper/server/IRemoteHelperService$Stub;
    }
.end annotation


# virtual methods
.method public abstract InstallApp(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
