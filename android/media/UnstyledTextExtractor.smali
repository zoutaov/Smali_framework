.class Landroid/media/UnstyledTextExtractor;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$OnTokenListener;


# instance fields
.field mCurrentLine:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field

.field mLastTimestamp:J

.field mLine:Ljava/lang/StringBuilder;

.field mLines:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 99
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 104
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    .line 105
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 109
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 110
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 112
    return-void
.end method


# virtual methods
.method public getText()[[Landroid/media/TextTrackCueSpan;
    .registers 3

    .prologue
    .line 153
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_10

    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 154
    :cond_10
    invoke-virtual {p0}, Landroid/media/UnstyledTextExtractor;->onLineEnd()V

    .line 156
    :cond_13
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [[Landroid/media/TextTrackCueSpan;

    .line 157
    .local v0, "lines":[[Landroid/media/TextTrackCueSpan;
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    .line 159
    return-object v0
.end method

.method public onData(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return-void
.end method

.method public onEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public onLineEnd()V
    .registers 7

    .prologue
    .line 139
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_26

    .line 140
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    new-instance v2, Landroid/media/TextTrackCueSpan;

    iget-object v3, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    invoke-direct {v2, v3, v4, v5}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 145
    :cond_26
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Landroid/media/TextTrackCueSpan;

    .line 146
    .local v0, "spans":[Landroid/media/TextTrackCueSpan;
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 148
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/String;
    .param p3, "annotation"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
.end method

.method public onTimeStamp(J)V
    .registers 8
    .param p1, "timestampMs"    # J

    .prologue
    .line 128
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iget-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2c

    .line 129
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    new-instance v1, Landroid/media/TextTrackCueSpan;

    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    invoke-direct {v1, v2, v3, v4}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 133
    :cond_2c
    iput-wide p1, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 134
    return-void
.end method
