.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# static fields
.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_WAKEUP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L


# instance fields
.field private final mAlwaysExact:Z

.field private final mService:Landroid/app/IAlarmManager;


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .registers 5
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 112
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 113
    .local v0, "sdkVersion":I
    const/16 v1, 0x13

    if-ge v0, v1, :cond_13

    const/4 v1, 0x1

    :goto_10
    iput-boolean v1, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 114
    return-void

    .line 113
    :cond_13
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private legacyExactLength()J
    .registers 3

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    const-wide/16 v0, -0x1

    goto :goto_6
.end method

.method private setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .registers 20
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 351
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 359
    const-wide/16 p2, 0x0

    .line 363
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/app/IAlarmManager;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    .line 367
    :goto_16
    return-void

    .line 365
    :catch_17
    move-exception v0

    goto :goto_16
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 482
    :goto_5
    return-void

    .line 480
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 346
    invoke-direct/range {p0 .. p9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 347
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 192
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const-wide/16 v4, 0x0

    .line 340
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, v4

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 341
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 17
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 464
    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 465
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 17
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 253
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "millis"    # J

    .prologue
    .line 492
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 495
    :goto_5
    return-void

    .line 493
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 508
    :goto_5
    return-void

    .line 506
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .registers 17
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 302
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 303
    return-void
.end method
