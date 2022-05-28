.class public interface abstract Lcom/vlife/plugin/module/impl/IActivityHandler;
.super Ljava/lang/Object;
.source "IActivityHandler.java"

# interfaces
.implements Lcom/vlife/plugin/module/impl/IShell2ModuleHandler;


# virtual methods
.method public abstract attachBaseContext(Landroid/content/Context;Landroid/app/Activity;)V
.end method

.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getPackageResourcePath()Ljava/lang/String;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getTheme()Landroid/content/res/Resources$Theme;
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyLongPress(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyMultiple(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onUserLeaveHint()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract redirectResource()Z
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method
