.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$SeekBarVolumizer;,
        Landroid/preference/VolumePreference$SavedState;,
        Landroid/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method

.method private cleanup()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 131
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_38

    .line 132
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 133
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10202fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2c

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 138
    :cond_2c
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 140
    .end local v1    # "view":Landroid/view/View;
    :cond_31
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 141
    iput-object v4, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 144
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_38
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    # invokes: Landroid/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V
    invoke-static {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$000(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 123
    :cond_9
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 71
    const v1, 0x10202fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 72
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 74
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 81
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 112
    if-nez p1, :cond_e

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_e

    .line 113
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 116
    :cond_e
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    .line 117
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    iget-object v3, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_7

    .line 104
    :cond_6
    :goto_6
    return v1

    .line 86
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_13

    move v0, v1

    .line 87
    .local v0, "isdown":Z
    :goto_e
    sparse-switch p2, :sswitch_data_2e

    move v1, v2

    .line 104
    goto :goto_6

    .end local v0    # "isdown":Z
    :cond_13
    move v0, v2

    .line 86
    goto :goto_e

    .line 89
    .restart local v0    # "isdown":Z
    :sswitch_15
    if-eqz v0, :cond_6

    .line 90
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_6

    .line 94
    :sswitch_1e
    if-eqz v0, :cond_6

    .line 95
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_6

    .line 99
    :sswitch_26
    if-eqz v0, :cond_6

    .line 100
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_6

    .line 87
    :sswitch_data_2e
    .sparse-switch
        0x18 -> :sswitch_1e
        0x19 -> :sswitch_15
        0xa4 -> :sswitch_26
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 169
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 171
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 180
    :cond_11
    :goto_11
    return-void

    :cond_12
    move-object v0, p1

    .line 175
    check-cast v0, Landroid/preference/VolumePreference$SavedState;

    .line 176
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 177
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_11

    .line 178
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    goto :goto_11
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .registers 3
    .param p1, "volumizer"    # Landroid/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 147
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_d

    .line 148
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 150
    :cond_d
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 155
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 164
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_a
    return-object v1

    .line 160
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_b
    new-instance v0, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1d

    .line 162
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1d
    move-object v1, v0

    .line 164
    goto :goto_a
.end method

.method public setStreamType(I)V
    .registers 2
    .param p1, "streamType"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 65
    return-void
.end method
