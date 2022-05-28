.class public Lcom/android/systemui/statusbar/GestureRecorder;
.super Ljava/lang/Object;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field static final SAVE_DELAY:J = 0x1388L

.field static final SAVE_MESSAGE:I = 0x18cf

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

.field private mGestures:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/statusbar/GestureRecorder$Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastSaveLen:I

.field private mLogfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/systemui/statusbar/GestureRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/GestureRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/GestureRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/GestureRecorder$1;-><init>(Lcom/android/systemui/statusbar/GestureRecorder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mHandler:Landroid/os/Handler;

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    .line 158
    return-void
.end method


# virtual methods
.method public add(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;-><init>(Lcom/android/systemui/statusbar/GestureRecorder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->add(Landroid/view/MotionEvent;)V

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GestureRecorder;->saveLater()V

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GestureRecorder;->save()V

    .line 260
    iget v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    if-ltz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gestures written to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v0, "error writing gestures"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save()V
    .locals 9

    .prologue
    .line 229
    iget-object v4, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    monitor-enter v4

    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "w":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    .end local v1    # "w":Ljava/io/BufferedWriter;
    .local v2, "w":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GestureRecorder;->toJsonLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 234
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 235
    iget-object v3, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 237
    iget-object v3, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/GestureRecorder;->TAG:Ljava/lang/String;

    const-string v5, "Wrote %d complete gestures to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 247
    if-eqz v2, :cond_3

    .line 249
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v2

    .line 255
    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v1    # "w":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    return-void

    .line 250
    .end local v1    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v2

    .line 252
    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v1    # "w":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 244
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    sget-object v3, Lcom/android/systemui/statusbar/GestureRecorder;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t write gestures to %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 247
    if-eqz v1, :cond_1

    .line 249
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 250
    :catch_2
    move-exception v0

    .line 251
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 247
    :catchall_1
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 249
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 252
    :cond_2
    :goto_4
    :try_start_9
    throw v3

    .line 250
    :catch_3
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v1    # "w":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 247
    .end local v1    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v1    # "w":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 243
    .end local v1    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v1    # "w":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    :cond_3
    move-object v1, v2

    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v1    # "w":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public saveLater()V
    .locals 4

    .prologue
    const/16 v1, 0x18cf

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    return-void
.end method

.method public tag(JLjava/lang/String;)V
    .locals 1
    .param p1, "when"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(JLjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public tag(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "when"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;-><init>(Lcom/android/systemui/statusbar/GestureRecorder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->tag(JLjava/lang/String;Ljava/lang/String;)V

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GestureRecorder;->saveLater()V

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tag(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(JLjava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(JLjava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    monitor-enter v2

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GestureRecorder;->toJsonLocked()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "s":Ljava/lang/String;
    monitor-exit v2

    .line 220
    return-object v0

    .line 219
    .end local v0    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toJsonLocked()Ljava/lang/String;
    .locals 6

    .prologue
    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 201
    .local v1, "first":Z
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    .line 204
    .local v2, "g":Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    if-nez v1, :cond_1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    const/4 v1, 0x0

    .line 207
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 209
    goto :goto_0

    .line 210
    .end local v2    # "g":Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    .line 211
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
