.class public final Landroid/provider/ContactsContract$CommonDataKinds$Event;
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
    name = "Event"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_event"

.field public static final START_DATE:Ljava/lang/String; = "data1"

.field public static final TYPE_ANNIVERSARY:I = 0x1

.field public static final TYPE_BIRTHDAY:I = 0x3

.field public static final TYPE_OTHER:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .registers 3
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x10402d0

    .line 6517
    if-nez p0, :cond_6

    .line 6525
    :goto_5
    :pswitch_5
    return v0

    .line 6520
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 6525
    const v0, 0x10402cd

    goto :goto_5

    .line 6522
    :pswitch_11
    const v0, 0x10402cf

    goto :goto_5

    .line 6523
    :pswitch_15
    const v0, 0x10402ce

    goto :goto_5

    .line 6520
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_5
        :pswitch_15
    .end packed-switch
.end method
