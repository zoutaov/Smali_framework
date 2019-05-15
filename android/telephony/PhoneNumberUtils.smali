.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 85
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1112
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1882
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1884
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1887
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1888
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1891
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1894
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1896
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1897
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1899
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1900
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1902
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1903
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1905
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1906
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_246

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2394
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 2382
    :array_246
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2417
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2242
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 2243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2244
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2252
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_15
    return-object v2

    .line 2249
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2250
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_15
.end method

.method private static bcdToChar(B)C
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 960
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 961
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 968
    :goto_7
    return v0

    .line 962
    :cond_8
    packed-switch p0, :pswitch_data_1a

    .line 968
    const/4 v0, 0x0

    goto :goto_7

    .line 963
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 964
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 965
    :pswitch_13
    const/16 v0, 0x2c

    goto :goto_7

    .line 966
    :pswitch_16
    const/16 v0, 0x4e

    goto :goto_7

    .line 962
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 952
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 954
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 15
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 807
    const/4 v2, 0x0

    .line 808
    .local v2, "prependPlus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 810
    .local v3, "ret":Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_14

    .line 811
    const-string v5, ""

    .line 902
    :goto_13
    return-object v5

    .line 815
    :cond_14
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1d

    .line 816
    const/4 v2, 0x1

    .line 819
    :cond_1d
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 822
    if-eqz v2, :cond_2f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2f

    .line 824
    const-string v5, ""

    goto :goto_13

    .line 827
    :cond_2f
    if-eqz v2, :cond_77

    .line 853
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, "retString":Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 855
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 856
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 857
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_77
    :goto_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 871
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "retString":Ljava/lang/String;
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 880
    :cond_aa
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 881
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 895
    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1944
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1945
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1947
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1948
    .local v0, "currIso":Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1949
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1950
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 1956
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_3f
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .prologue
    const/4 v7, 0x1

    .line 2009
    move-object v3, p0

    .line 2012
    .local v3, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_49

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_49

    .line 2016
    if-ne p1, p2, :cond_61

    if-ne p1, v7, :cond_61

    .line 2018
    const/4 v2, 0x0

    .line 2019
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2022
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2029
    :cond_14
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "networkDialStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2034
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 2035
    if-nez v3, :cond_4b

    .line 2036
    move-object v3, v1

    .line 2047
    :goto_25
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2048
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 2049
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2052
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_56

    .line 2053
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2056
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2068
    .end local v0    # "dialableIndex":I
    :cond_3d
    :goto_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_49
    :goto_49
    move-object p0, v3

    .line 2076
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_4a
    return-object p0

    .line 2038
    .restart local v1    # "networkDialStr":Ljava/lang/String;
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 2044
    :cond_50
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 2061
    .restart local v0    # "dialableIndex":I
    :cond_56
    if-gez v0, :cond_5a

    .line 2062
    const-string v2, ""

    .line 2064
    :cond_5a
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 2073
    .end local v0    # "dialableIndex":I
    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_61
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1968
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1969
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1970
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1972
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 1973
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 1977
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_2d
    return-object p0
.end method

.method private static charToBCD(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 974
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 975
    add-int/lit8 v0, p0, -0x30

    .line 983
    :goto_a
    return v0

    .line 976
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 977
    const/16 v0, 0xa

    goto :goto_a

    .line 978
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 979
    const/16 v0, 0xb

    goto :goto_a

    .line 980
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 981
    const/16 v0, 0xc

    goto :goto_a

    .line 982
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 983
    const/16 v0, 0xd

    goto :goto_a

    .line 985
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 2545
    const/4 v0, 0x0

    .line 2546
    .local v0, "trunk_prefix_was_read":Z
    :goto_2
    if-lt p2, p1, :cond_20

    .line 2547
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_15

    .line 2548
    if-eqz v0, :cond_11

    .line 2563
    :goto_10
    return v1

    .line 2554
    :cond_11
    const/4 v0, 0x1

    .line 2560
    :cond_12
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2556
    :cond_15
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_10

    .line 2563
    :cond_20
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 432
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 439
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v7, 0x0

    .line 461
    .local v7, "numNonDialableCharsInA":I
    const/4 v8, 0x0

    .line 463
    .local v8, "numNonDialableCharsInB":I
    if-eqz p0, :cond_6

    if-nez p1, :cond_c

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v10, 0x1

    .line 547
    :goto_9
    return v10

    .line 463
    :cond_a
    const/4 v10, 0x0

    goto :goto_9

    .line 465
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1a

    .line 466
    :cond_18
    const/4 v10, 0x0

    goto :goto_9

    .line 469
    :cond_1a
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 470
    .local v4, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 471
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 473
    .local v6, "matched":I
    :cond_23
    :goto_23
    if-ltz v4, :cond_52

    if-ltz v5, :cond_52

    .line 475
    const/4 v9, 0x0

    .line 477
    .local v9, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 479
    .local v0, "ca":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_37

    .line 480
    add-int/lit8 v4, v4, -0x1

    .line 481
    const/4 v9, 0x1

    .line 482
    add-int/lit8 v7, v7, 0x1

    .line 485
    :cond_37
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 487
    .local v1, "cb":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_46

    .line 488
    add-int/lit8 v5, v5, -0x1

    .line 489
    const/4 v9, 0x1

    .line 490
    add-int/lit8 v8, v8, 0x1

    .line 493
    :cond_46
    if-nez v9, :cond_23

    .line 494
    if-eq v1, v0, :cond_67

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_67

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_67

    .line 501
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    :cond_52
    const/4 v10, 0x7

    if-ge v6, v10, :cond_70

    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 503
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 508
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_6e

    if-ne v2, v6, :cond_6e

    .line 509
    const/4 v10, 0x1

    goto :goto_9

    .line 497
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v9    # "skipCmp":Z
    :cond_67
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 512
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    :cond_6e
    const/4 v10, 0x0

    goto :goto_9

    .line 516
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_70
    const/4 v10, 0x7

    if-lt v6, v10, :cond_79

    if-ltz v4, :cond_77

    if-gez v5, :cond_79

    .line 517
    :cond_77
    const/4 v10, 0x1

    goto :goto_9

    .line 529
    :cond_79
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8c

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 532
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 535
    :cond_8c
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9f

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 538
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 541
    :cond_9f
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 544
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 547
    :cond_b2
    const/4 v10, 0x0

    goto/16 :goto_9
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 23
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 563
    if-eqz p0, :cond_4

    if-nez p1, :cond_10

    .line 564
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d

    const/16 v18, 0x1

    .line 701
    :goto_c
    return v18

    .line 564
    :cond_d
    const/16 v18, 0x0

    goto :goto_c

    .line 565
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    .line 566
    const/16 v18, 0x0

    goto :goto_c

    .line 569
    :cond_1f
    const/4 v10, 0x0

    .line 570
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 572
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 574
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 576
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 577
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 578
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 579
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 580
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_84

    if-eqz v7, :cond_84

    .line 581
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_48

    .line 583
    const/16 v18, 0x0

    goto :goto_c

    .line 587
    :cond_48
    const/4 v13, 0x0

    .line 588
    const/4 v5, 0x1

    .line 589
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 590
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 616
    :cond_4e
    :goto_4e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 617
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 618
    .local v4, "backwardIndexB":I
    :cond_5a
    :goto_5a
    if-lt v3, v10, :cond_b8

    if-lt v4, v11, :cond_b8

    .line 619
    const/4 v14, 0x0

    .line 620
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 621
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 622
    .local v9, "chB":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_74

    .line 623
    add-int/lit8 v3, v3, -0x1

    .line 624
    const/4 v14, 0x1

    .line 626
    :cond_74
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 627
    add-int/lit8 v4, v4, -0x1

    .line 628
    const/4 v14, 0x1

    .line 631
    :cond_7d
    if-nez v14, :cond_5a

    .line 632
    if-eq v8, v9, :cond_b3

    .line 633
    const/16 v18, 0x0

    goto :goto_c

    .line 591
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_84
    if-nez v6, :cond_8a

    if-nez v7, :cond_8a

    .line 594
    const/4 v13, 0x0

    goto :goto_4e

    .line 596
    :cond_8a
    if-eqz v6, :cond_93

    .line 597
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 605
    :cond_8e
    :goto_8e
    if-eqz v7, :cond_a3

    .line 606
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_4e

    .line 599
    :cond_93
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 600
    .local v15, "tmp":I
    if-ltz v15, :cond_8e

    .line 601
    move v10, v15

    .line 602
    const/16 v16, 0x1

    goto :goto_8e

    .line 608
    .end local v15    # "tmp":I
    :cond_a3
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 609
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_4e

    .line 610
    move v11, v15

    .line 611
    const/16 v17, 0x1

    goto :goto_4e

    .line 635
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_b3
    add-int/lit8 v3, v3, -0x1

    .line 636
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    .line 640
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_b8
    if-eqz v13, :cond_fa

    .line 641
    if-eqz v16, :cond_be

    if-le v10, v3, :cond_c6

    :cond_be
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_da

    .line 643
    :cond_c6
    if-eqz p2, :cond_d6

    .line 653
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 655
    :cond_d6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 658
    :cond_da
    if-eqz v17, :cond_de

    if-le v11, v4, :cond_e6

    :cond_de
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_147

    .line 660
    :cond_e6
    if-eqz p2, :cond_f6

    .line 661
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 663
    :cond_f6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 676
    :cond_fa
    if-nez v5, :cond_11d

    const/4 v12, 0x1

    .line 677
    .local v12, "maybeNamp":Z
    :goto_fd
    if-lt v3, v10, :cond_123

    .line 678
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 679
    .restart local v8    # "chA":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_11a

    .line 680
    if-eqz v12, :cond_11f

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11f

    .line 681
    const/4 v12, 0x0

    .line 686
    :cond_11a
    add-int/lit8 v3, v3, -0x1

    .line 687
    goto :goto_fd

    .line 676
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_11d
    const/4 v12, 0x0

    goto :goto_fd

    .line 683
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_11f
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 688
    .end local v8    # "chA":C
    :cond_123
    :goto_123
    if-lt v4, v11, :cond_147

    .line 689
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 690
    .restart local v9    # "chB":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_140

    .line 691
    if-eqz v12, :cond_143

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_143

    .line 692
    const/4 v12, 0x0

    .line 697
    :cond_140
    add-int/lit8 v4, v4, -0x1

    .line 698
    goto :goto_123

    .line 694
    :cond_143
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 701
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_147
    const/16 v18, 0x1

    goto/16 :goto_c
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1859
    if-nez p0, :cond_3

    .line 1875
    .end local p0    # "input":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p0

    .line 1862
    .restart local p0    # "input":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1863
    .local v2, "len":I
    if-eqz v2, :cond_2

    .line 1867
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1869
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_1e

    .line 1870
    aget-char v0, v3, v1

    .line 1872
    .local v0, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1869
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1875
    .end local v0    # "c":C
    :cond_1e
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_2
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 327
    if-nez p0, :cond_4

    .line 328
    const/4 v4, 0x0

    .line 343
    :goto_3
    return-object v4

    .line 330
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 331
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_2b

    .line 334
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 336
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 337
    const/16 v0, 0x2c

    .line 341
    :cond_1c
    :goto_1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 338
    :cond_22
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 339
    const/16 v0, 0x3b

    goto :goto_1c

    .line 343
    .end local v0    # "c":C
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 215
    if-nez p0, :cond_4

    .line 216
    const/4 v6, 0x0

    .line 241
    :goto_3
    return-object v6

    .line 219
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 220
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_55

    .line 223
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 225
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 226
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_23

    .line 227
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 228
    :cond_23
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_45

    .line 230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_41

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 232
    :cond_41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 234
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_45
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 235
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 236
    :cond_4f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 241
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 254
    if-nez p0, :cond_4

    .line 255
    const/4 v5, 0x0

    .line 277
    :goto_3
    return-object v5

    .line 258
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 259
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 262
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 263
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 264
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1f

    .line 265
    if-eqz v1, :cond_1e

    .line 262
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 268
    :cond_1e
    const/4 v1, 0x1

    .line 270
    :cond_1f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 271
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 272
    :cond_29
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 277
    .end local v0    # "c":C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 396
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 412
    :goto_3
    return-object v5

    .line 399
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 403
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 404
    .local v3, "s":I
    :goto_13
    if-ge v1, v3, :cond_25

    .line 406
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 407
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 408
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 412
    .end local v0    # "c":C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 2226
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 2227
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2228
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2232
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_11
    return v1

    .line 2226
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2232
    .end local v0    # "c":C
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1351
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1352
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 16
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1238
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1239
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_10

    .line 1333
    :cond_f
    :goto_f
    return-void

    .line 1242
    :cond_10
    const/4 v11, 0x5

    if-le v4, v11, :cond_f

    .line 1247
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1250
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1251
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1256
    new-array v1, v13, [I

    .line 1257
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1259
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1260
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1261
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_25
    if-ge v2, v4, :cond_61

    .line 1262
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1263
    .local v0, "c":C
    packed-switch v0, :pswitch_data_94

    .line 1307
    :cond_2e
    :pswitch_2e
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_f

    .line 1265
    :pswitch_32
    if-eqz v7, :cond_36

    if-ne v10, v14, :cond_3c

    .line 1266
    :cond_36
    const/4 v10, 0x3

    move v5, v6

    .line 1261
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_38
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_25

    .line 1279
    :cond_3c
    :pswitch_3c
    if-ne v10, v14, :cond_42

    .line 1281
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_f

    .line 1283
    :cond_42
    if-ne v10, v13, :cond_4c

    .line 1285
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1290
    :goto_48
    const/4 v10, 0x1

    .line 1291
    add-int/lit8 v7, v7, 0x1

    .line 1292
    goto :goto_38

    .line 1286
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_4c
    const/4 v11, 0x4

    if-eq v10, v11, :cond_91

    if-eq v7, v13, :cond_54

    const/4 v11, 0x6

    if-ne v7, v11, :cond_91

    .line 1288
    :cond_54
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_48

    .line 1295
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_59
    const/4 v10, 0x4

    move v5, v6

    .line 1296
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_38

    .line 1299
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_5c
    if-nez v2, :cond_2e

    .line 1301
    const/4 v10, 0x2

    move v5, v6

    .line 1302
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_38

    .line 1312
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_61
    const/4 v11, 0x7

    if-ne v7, v11, :cond_8f

    .line 1314
    add-int/lit8 v5, v6, -0x1

    .line 1318
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_66
    const/4 v2, 0x0

    :goto_67
    if-ge v2, v5, :cond_77

    .line 1319
    aget v8, v1, v2

    .line 1320
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1318
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 1324
    .end local v8    # "pos":I
    :cond_77
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1325
    .local v3, "len":I
    :goto_7b
    if-lez v3, :cond_f

    .line 1326
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_f

    .line 1327
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1328
    add-int/lit8 v3, v3, -0x1

    goto :goto_7b

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8f
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_66

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_91
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_48

    .line 1263
    nop

    :pswitch_data_94
    .packed-switch 0x2b
        :pswitch_5c
        :pswitch_2e
        :pswitch_59
        :pswitch_2e
        :pswitch_2e
        :pswitch_3c
        :pswitch_32
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1148
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1149
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1150
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .prologue
    .line 1165
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1166
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1167
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1418
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    move-object v1, p0

    .line 1429
    :goto_11
    return-object v1

    .line 1422
    :cond_12
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1423
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1425
    .local v1, "result":Ljava/lang/String;
    :try_start_17
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1426
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_17 .. :try_end_1e} :catch_20

    move-result-object v1

    goto :goto_11

    .line 1427
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_20
    move-exception v3

    goto :goto_11
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1454
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1455
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 1456
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1478
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_11
    return-object p0

    .line 1455
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1460
    :cond_15
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1462
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4b

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_4b

    .line 1467
    :try_start_2b
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1468
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1469
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_47
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2b .. :try_end_47} :catch_55

    move-result v6

    if-gtz v6, :cond_4b

    .line 1472
    move-object p2, v3

    .line 1477
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_4b
    :goto_4b
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1478
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_53

    .end local v4    # "result":Ljava/lang/String;
    :goto_51
    move-object p0, v4

    goto :goto_11

    .restart local v4    # "result":Ljava/lang/String;
    :cond_53
    move-object v4, p0

    goto :goto_51

    .line 1474
    .end local v4    # "result":Ljava/lang/String;
    :catch_55
    move-exception v6

    goto :goto_4b
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1192
    move v0, p1

    .line 1194
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1b

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1b

    .line 1195
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 1196
    const/4 v0, 0x1

    .line 1205
    :cond_1b
    :goto_1b
    packed-switch v0, :pswitch_data_44

    .line 1216
    :goto_1e
    return-void

    .line 1197
    :cond_1f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_36

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_36

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_36

    .line 1199
    const/4 v0, 0x2

    goto :goto_1b

    .line 1201
    :cond_36
    const/4 v0, 0x0

    goto :goto_1b

    .line 1207
    :pswitch_38
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1210
    :pswitch_3c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1213
    :pswitch_40
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1205
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_40
        :pswitch_38
        :pswitch_3c
    .end packed-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1389
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1390
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1392
    .local v1, "result":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1393
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1394
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_14
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_5 .. :try_end_14} :catch_16

    move-result-object v1

    .line 1398
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_15
    :goto_15
    return-object v1

    .line 1396
    :catch_16
    move-exception v3

    goto :goto_15
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2081
    const/4 v0, 0x0

    .line 2082
    .local v0, "ps":Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2083
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2084
    const-string v0, "011"

    .line 2086
    :cond_f
    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1178
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 2099
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2100
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_15

    .line 2101
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 2102
    const/4 v2, 0x1

    .line 2108
    :goto_11
    return v2

    .line 2100
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2105
    :cond_15
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    .line 2106
    const/4 v2, 0x2

    goto :goto_11

    .line 2108
    :cond_1f
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 152
    const/4 v8, 0x0

    .line 154
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_9

    .line 200
    :cond_8
    :goto_8
    return-object v3

    .line 160
    :cond_9
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 163
    :cond_1f
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 168
    :cond_24
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 169
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 172
    :cond_36
    if-eqz p1, :cond_8

    .line 176
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, "type":Ljava/lang/String;
    const/4 v9, 0x0

    .line 180
    .local v9, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 182
    const-string/jumbo v9, "number"

    .line 187
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 190
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_6f

    .line 192
    :try_start_5e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 193
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_7c

    move-result-object v8

    .line 196
    :cond_6c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6f
    move-object v3, v8

    .line 200
    goto :goto_8

    .line 183
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_71
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 184
    const-string v9, "data1"

    goto :goto_4c

    .line 196
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_7c
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 732
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2182
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2183
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_e

    .line 2184
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2186
    :cond_e
    if-gez v0, :cond_32

    .line 2187
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2191
    :cond_32
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 374
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 375
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 377
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 379
    .local v2, "trimIndex":I
    if-gez v2, :cond_19

    .line 380
    add-int/lit8 v4, v0, -0x1

    .line 382
    :goto_18
    return v4

    :cond_19
    add-int/lit8 v4, v2, -0x1

    goto :goto_18
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .registers 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 908
    move v2, p2

    .local v2, "i":I
    :goto_1
    add-int v3, p3, p2

    if-ge v2, v3, :cond_10

    .line 912
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 914
    .local v1, "c":C
    if-nez v1, :cond_11

    .line 941
    .end local v1    # "c":C
    :cond_10
    return-void

    .line 917
    .restart local v1    # "c":C
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 928
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_25

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_10

    .line 933
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 934
    if-eqz v1, :cond_10

    .line 938
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 741
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 754
    :goto_3
    return-object v5

    .line 743
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 744
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 746
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 747
    .local v4, "s":I
    :goto_10
    if-ltz v1, :cond_20

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_20

    .line 749
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 751
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 754
    .end local v0    # "c":C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static final is12Key(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 97
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_10

    const/16 v0, 0x23

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 2400
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final isDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 103
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1013
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1014
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1015
    const/4 v2, 0x0

    .line 1018
    :goto_12
    return v2

    .line 1013
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1018
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1561
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1624
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1674
    if-nez p0, :cond_5

    .line 1734
    :cond_4
    :goto_4
    return v6

    .line 1683
    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1689
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1693
    const-string/jumbo v8, "ril.ecclist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1694
    .local v4, "numbers":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1696
    const-string/jumbo v8, "ro.ril.ecclist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1699
    :cond_23
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_52

    .line 1702
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_31
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1705
    .local v1, "emergencyNum":Ljava/lang/String;
    if-nez p2, :cond_3f

    const-string v8, "BR"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 1706
    :cond_3f
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    move v6, v7

    .line 1707
    goto :goto_4

    .line 1710
    :cond_47
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    move v6, v7

    .line 1711
    goto :goto_4

    .line 1702
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1719
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_52
    const-string v8, "PhoneNumberUtils"

    const-string v9, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    if-eqz p1, :cond_6c

    .line 1724
    new-instance v5, Lcom/android/i18n/phonenumbers/ShortNumberUtil;

    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;-><init>()V

    .line 1725
    .local v5, "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    if-eqz p2, :cond_67

    .line 1726
    invoke-virtual {v5, p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_4

    .line 1728
    :cond_67
    invoke-virtual {v5, p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_4

    .line 1731
    .end local v5    # "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    :cond_6c
    if-eqz p2, :cond_80

    .line 1732
    const-string v8, "112"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7e

    const-string v8, "911"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_7e
    move v6, v7

    goto :goto_4

    .line 1734
    :cond_80
    const-string v8, "112"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_90

    const-string v8, "911"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_90
    move v6, v7

    goto/16 :goto_4
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 1610
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1004
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1005
    const/4 v1, 0x0

    .line 1009
    :goto_7
    return v1

    .line 1008
    :cond_8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1009
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isISODigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 91
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1752
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1806
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 1808
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1809
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1816
    .local v0, "countryIso":Ljava/lang/String;
    :goto_18
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 1811
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1812
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1813
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 2116
    const/4 v2, 0x0

    .line 2117
    .local v2, "retVal":Z
    if-eqz p0, :cond_34

    .line 2118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 2119
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2121
    const/4 v2, 0x1

    .line 2122
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    if-ge v1, v4, :cond_30

    .line 2123
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2124
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2125
    const/4 v2, 0x0

    .line 2134
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_30
    :goto_30
    return v2

    .line 2122
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2132
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_34
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 115
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_20

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x23

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1022
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1023
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1024
    const/4 v2, 0x0

    .line 1027
    :goto_12
    return v2

    .line 1022
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1027
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2141
    const/4 v1, 0x0

    .line 2142
    .local v1, "retVal":Z
    if-eqz p0, :cond_19

    .line 2143
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2144
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2145
    const/4 v1, 0x1

    .line 2150
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_18
    :goto_18
    return v1

    .line 2148
    :cond_19
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static isPause(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 129
    const/16 v0, 0x70

    if-eq p0, v0, :cond_8

    const/16 v0, 0x50

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1587
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1651
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1780
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 109
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x23

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 140
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 124
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isToneWait(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 134
    const/16 v0, 0x77

    if-eq p0, v0, :cond_8

    const/16 v0, 0x57

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 2090
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2091
    const/4 v0, 0x1

    .line 2093
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2166
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1834
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v1

    .line 1841
    .local v1, "vmNumber":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1845
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    .end local v1    # "vmNumber":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return v2

    .line 1835
    :catch_1b
    move-exception v0

    .line 1836
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_1a
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 995
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 10
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2273
    const/4 v2, 0x0

    .line 2274
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p1, :cond_45

    .line 2275
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2277
    .local v0, "c":C
    packed-switch v2, :pswitch_data_50

    .line 2296
    :pswitch_11
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2302
    .end local v0    # "c":C
    :cond_17
    :goto_17
    return v3

    .line 2279
    .restart local v0    # "c":C
    :pswitch_18
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_20

    const/4 v2, 0x1

    .line 2274
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2280
    :cond_20
    if-ne v0, v6, :cond_24

    const/4 v2, 0x2

    goto :goto_1d

    .line 2281
    :cond_24
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 2285
    :pswitch_2b
    if-ne v0, v6, :cond_2f

    const/4 v2, 0x3

    goto :goto_1d

    .line 2286
    :cond_2f
    if-ne v0, v7, :cond_33

    const/4 v2, 0x4

    goto :goto_1d

    .line 2287
    :cond_33
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 2291
    :pswitch_3a
    if-ne v0, v7, :cond_3e

    const/4 v2, 0x5

    goto :goto_1d

    .line 2292
    :cond_3e
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 2302
    .end local v0    # "c":C
    :cond_45
    if-eq v2, v4, :cond_4d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4d

    const/4 v5, 0x5

    if-ne v2, v5, :cond_17

    :cond_4d
    move v3, v4

    goto :goto_17

    .line 2277
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_18
        :pswitch_11
        :pswitch_2b
        :pswitch_11
        :pswitch_3a
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 9
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2312
    const/4 v2, 0x0

    .line 2313
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p1, :cond_63

    .line 2314
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2316
    .local v0, "c":C
    packed-switch v2, :pswitch_data_70

    .line 2348
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2352
    .end local v0    # "c":C
    :cond_16
    :goto_16
    return v3

    .line 2318
    .restart local v0    # "c":C
    :pswitch_17
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1f

    const/4 v2, 0x1

    .line 2313
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2319
    :cond_1f
    if-ne v0, v5, :cond_23

    const/4 v2, 0x2

    goto :goto_1c

    .line 2320
    :cond_23
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 2324
    :pswitch_2a
    if-ne v0, v5, :cond_2e

    const/4 v2, 0x3

    goto :goto_1c

    .line 2325
    :cond_2e
    if-ne v0, v6, :cond_32

    const/4 v2, 0x4

    goto :goto_1c

    .line 2326
    :cond_32
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 2330
    :pswitch_39
    if-ne v0, v6, :cond_3d

    const/4 v2, 0x5

    goto :goto_1c

    .line 2331
    :cond_3d
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 2337
    :pswitch_44
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v2, 0x6

    goto :goto_1c

    .line 2338
    :cond_4c
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 2343
    :pswitch_53
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2344
    :cond_5c
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 2352
    .end local v0    # "c":C
    :cond_63
    const/4 v4, 0x6

    if-eq v2, v4, :cond_6d

    const/4 v4, 0x7

    if-eq v2, v4, :cond_6d

    const/16 v4, 0x8

    if-ne v2, v4, :cond_16

    :cond_6d
    const/4 v3, 0x1

    goto :goto_16

    .line 2316
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_17
        :pswitch_44
        :pswitch_2a
        :pswitch_44
        :pswitch_39
        :pswitch_44
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 2360
    const/4 v1, 0x0

    .line 2362
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p1, :cond_19

    .line 2363
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2365
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_12

    if-nez v1, :cond_12

    .line 2366
    const/4 v1, 0x1

    .line 2362
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2367
    :cond_12
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2368
    const/4 v1, 0x0

    .line 2372
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_19
    return v1
.end method

.method private static minPositive(II)I
    .registers 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 349
    if-ltz p0, :cond_9

    if-ltz p1, :cond_9

    .line 350
    if-ge p0, p1, :cond_7

    .line 356
    .end local p0    # "a":I
    :cond_6
    :goto_6
    return p0

    .restart local p0    # "a":I
    :cond_7
    move p0, p1

    .line 350
    goto :goto_6

    .line 351
    :cond_9
    if-gez p0, :cond_6

    .line 353
    if-ltz p1, :cond_f

    move p0, p1

    .line 354
    goto :goto_6

    .line 356
    :cond_f
    const/4 p0, -0x1

    goto :goto_6
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1047
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1495
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v3, :cond_42

    .line 1496
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1498
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1499
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1f

    .line 1500
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1495
    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1501
    :cond_1f
    if-nez v2, :cond_29

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_29

    .line 1502
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 1503
    :cond_29
    const/16 v5, 0x61

    if-lt v0, v5, :cond_31

    const/16 v5, 0x7a

    if-le v0, v5, :cond_39

    :cond_31
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1c

    .line 1504
    :cond_39
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1507
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :goto_41
    return-object v5

    :cond_42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_41
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1060
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 17
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1069
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1070
    .local v6, "numberLenReal":I
    move v5, v6

    .line 1071
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_17

    const/4 v3, 0x1

    .line 1072
    .local v3, "hasPlus":Z
    :goto_f
    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, -0x1

    .line 1074
    :cond_13
    if-nez v5, :cond_19

    const/4 v9, 0x0

    .line 1099
    :goto_16
    return-object v9

    .line 1071
    .end local v3    # "hasPlus":Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_f

    .line 1076
    .restart local v3    # "hasPlus":Z
    :cond_19
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1077
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1078
    .local v2, "extraBytes":I
    if-eqz p1, :cond_22

    add-int/lit8 v2, v2, 0x1

    .line 1079
    :cond_22
    add-int/2addr v10, v2

    .line 1081
    new-array v9, v10, [B

    .line 1083
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1084
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v6, :cond_50

    .line 1085
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1086
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_34

    .line 1084
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1087
    :cond_34
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4e

    const/4 v11, 0x4

    .line 1088
    .local v11, "shift":I
    :goto_3a
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1087
    .end local v11    # "shift":I
    :cond_4e
    const/4 v11, 0x0

    goto :goto_3a

    .line 1093
    .end local v0    # "c":C
    :cond_50
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5f

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1095
    :cond_5f
    const/4 v7, 0x0

    .line 1096
    .local v7, "offset":I
    if-eqz p1, :cond_6a

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1097
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_6a
    if-eqz v3, :cond_72

    const/16 v12, 0x91

    :goto_6e
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_16

    :cond_72
    const/16 v12, 0x81

    goto :goto_6e
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "networkDialStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2201
    move-object v2, p0

    .line 2206
    .local v2, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1e

    .line 2209
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2210
    .local v1, "newStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2212
    move-object v2, v1

    .line 2220
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object v2

    .line 2214
    .restart local v1    # "newStr":Ljava/lang/String;
    :cond_1f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2216
    .local v0, "idpStr":Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1360
    const/4 v0, 0x0

    .line 1361
    .local v0, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1362
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_15

    .line 1363
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1365
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1368
    :cond_18
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1520
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_26

    aget-char v1, v0, v3

    .line 1521
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1522
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_22

    .line 1523
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1520
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1525
    :cond_22
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 1528
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 765
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 771
    .end local p0    # "s":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object p0

    .line 767
    .restart local p0    # "s":Ljava/lang/String;
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 286
    if-nez p0, :cond_4

    .line 287
    const/4 v5, 0x0

    .line 303
    :goto_3
    return-object v5

    .line 289
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 290
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_2d

    .line 293
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 295
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 296
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_23

    .line 297
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 298
    :cond_23
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 299
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 303
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 715
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "np":Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 781
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 782
    const/16 v0, 0x91

    .line 785
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x81

    goto :goto_13
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 2439
    const/4 v5, 0x0

    .line 2440
    .local v5, "state":I
    const/4 v0, 0x0

    .line 2441
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2442
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_17

    .line 2443
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2444
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_96

    .line 2513
    .end local v1    # "ch":C
    :cond_17
    :goto_17
    return-object v6

    .line 2446
    .restart local v1    # "ch":C
    :pswitch_18
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_20

    const/4 v5, 0x1

    .line 2442
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2447
    :cond_20
    if-ne v1, v9, :cond_24

    const/4 v5, 0x2

    goto :goto_1d

    .line 2448
    :cond_24
    if-ne v1, v8, :cond_2b

    .line 2449
    if-eqz p1, :cond_17

    .line 2450
    const/16 v5, 0x8

    goto :goto_1d

    .line 2454
    :cond_2b
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 2460
    :pswitch_32
    if-ne v1, v9, :cond_36

    const/4 v5, 0x3

    goto :goto_1d

    .line 2461
    :cond_36
    if-ne v1, v8, :cond_3a

    const/4 v5, 0x4

    goto :goto_1d

    .line 2462
    :cond_3a
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 2468
    :pswitch_41
    if-ne v1, v8, :cond_45

    const/4 v5, 0x5

    goto :goto_1d

    .line 2469
    :cond_45
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 2480
    :pswitch_4c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2481
    .local v4, "ret":I
    if-lez v4, :cond_76

    .line 2482
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 2483
    const/16 v7, 0x64

    if-ge v0, v7, :cond_60

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 2484
    :cond_60
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_17

    .line 2486
    :cond_68
    const/4 v7, 0x1

    if-eq v5, v7, :cond_71

    const/4 v7, 0x3

    if-eq v5, v7, :cond_71

    const/4 v7, 0x5

    if-ne v5, v7, :cond_73

    .line 2487
    :cond_71
    const/4 v5, 0x6

    goto :goto_1d

    .line 2489
    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 2491
    :cond_76
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 2497
    .end local v4    # "ret":I
    :pswitch_7d
    if-ne v1, v10, :cond_82

    const/16 v5, 0x9

    goto :goto_1d

    .line 2498
    :cond_82
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 2503
    :pswitch_89
    if-ne v1, v10, :cond_17

    .line 2504
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_17

    .line 2444
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_18
        :pswitch_4c
        :pswitch_32
        :pswitch_4c
        :pswitch_41
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_7d
        :pswitch_89
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 2410
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 2411
    add-int/lit8 v0, p0, -0x30

    .line 2413
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2526
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2527
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_14

    .line 2528
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2529
    .local v0, "ch":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_15

    .line 2530
    add-int/lit8 v3, v1, 0x1

    .line 2535
    .end local v0    # "ch":C
    :cond_14
    return v3

    .line 2531
    .restart local v0    # "ch":C
    :cond_15
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2527
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method
