.class public final Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SipAddress"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sip_address"

.field public static final SIP_ADDRESS:Ljava/lang/String; = "data1"

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6848
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6852
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_8
    return-object p2

    .line 6851
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;->getTypeLabelResource(I)I

    move-result v0

    .line 6852
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_8
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 6833
    packed-switch p0, :pswitch_data_14

    .line 6837
    const v0, 0x10402fa

    :goto_6
    return v0

    .line 6834
    :pswitch_7
    const v0, 0x10402fb

    goto :goto_6

    .line 6835
    :pswitch_b
    const v0, 0x10402fc

    goto :goto_6

    .line 6836
    :pswitch_f
    const v0, 0x10402fd

    goto :goto_6

    .line 6833
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
