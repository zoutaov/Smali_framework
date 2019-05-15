.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$SendViewStateChangedAccessibilityEvent;,
        Landroid/view/View$MatchLabelForPredicate;,
        Landroid/view/View$MatchIdPredicate;,
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_CURSOR_POSITION_UNDEFINED:I = -0x1

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field static final ACCESSIBILITY_LIVE_REGION_DEFAULT:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field static final ALL_RTL_PROPERTIES_RESOLVED:I = 0x60010220

.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field public static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field static final DISABLED:I = 0x20

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_MASK:I = 0x3

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_STATE_SET:[I

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS:I = 0x4

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field protected static final FOCUSED_SELECTED_STATE_SET:[I

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_DEFAULT:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final INVISIBLE:I = 0x4

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = 0x2

.field private static final LAYOUT_DIRECTION_FLAGS:[I

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_RESOLVED_DEFAULT:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field static final LONG_CLICKABLE:I = 0x200000

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final NAVIGATION_BAR_TRANSIENT:I = 0x8000000

.field public static final NAVIGATION_BAR_TRANSLUCENT:I = -0x80000000

.field public static final NAVIGATION_BAR_UNHIDE:I = 0x20000000

.field private static final NONZERO_EPSILON:F = 0.001f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final OPTIONAL_FITS_SYSTEM_WINDOWS:I = 0x800

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field static final PFLAG2_ACCESSIBILITY_FOCUSED:I = 0x4000000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_MASK:I = 0x1800000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_SHIFT:I = 0x17

.field static final PFLAG2_DRAG_CAN_ACCEPT:I = 0x1

.field static final PFLAG2_DRAG_HOVERED:I = 0x2

.field static final PFLAG2_DRAWABLE_RESOLVED:I = 0x40000000

.field static final PFLAG2_HAS_TRANSIENT_STATE:I = -0x80000000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK:I = 0x700000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_SHIFT:I = 0x14

.field static final PFLAG2_LAYOUT_DIRECTION_MASK:I = 0xc

.field static final PFLAG2_LAYOUT_DIRECTION_MASK_SHIFT:I = 0x2

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED:I = 0x20

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_MASK:I = 0x30

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x10

.field static final PFLAG2_PADDING_RESOLVED:I = 0x20000000

.field static final PFLAG2_SUBTREE_ACCESSIBILITY_STATE_CHANGED:I = 0x8000000

.field private static final PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

.field static final PFLAG2_TEXT_ALIGNMENT_MASK:I = 0xe000

.field static final PFLAG2_TEXT_ALIGNMENT_MASK_SHIFT:I = 0xd

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED:I = 0x10000

.field private static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x20000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK:I = 0xe0000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT:I = 0x11

.field private static final PFLAG2_TEXT_DIRECTION_FLAGS:[I

.field static final PFLAG2_TEXT_DIRECTION_MASK:I = 0x1c0

.field static final PFLAG2_TEXT_DIRECTION_MASK_SHIFT:I = 0x6

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED:I = 0x200

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x400

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK:I = 0x1c00

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK_SHIFT:I = 0xa

.field static final PFLAG2_VIEW_QUICK_REJECTED:I = 0x10000000

.field static final PFLAG3_CALLED_SUPER:I = 0x10

.field static final PFLAG3_IS_LAID_OUT:I = 0x4

.field static final PFLAG3_MEASURE_NEEDED_BEFORE_LAYOUT:I = 0x8

.field static final PFLAG3_VIEW_IS_ANIMATING_ALPHA:I = 0x2

.field static final PFLAG3_VIEW_IS_ANIMATING_TRANSFORM:I = 0x1

.field static final PFLAG_ACTIVATED:I = 0x40000000

.field static final PFLAG_ALPHA_SET:I = 0x40000

.field static final PFLAG_ANIMATION_STARTED:I = 0x10000

.field private static final PFLAG_AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final PFLAG_DIRTY:I = 0x200000

.field static final PFLAG_DIRTY_MASK:I = 0x600000

.field static final PFLAG_DIRTY_OPAQUE:I = 0x400000

.field static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field static final PFLAG_DRAWING_CACHE_VALID:I = 0x8000

.field static final PFLAG_DRAWN:I = 0x20

.field static final PFLAG_DRAW_ANIMATION:I = 0x40

.field static final PFLAG_FOCUSED:I = 0x2

.field static final PFLAG_FORCE_LAYOUT:I = 0x1000

.field static final PFLAG_HAS_BOUNDS:I = 0x10

.field private static final PFLAG_HOVERED:I = 0x10000000

.field static final PFLAG_INVALIDATED:I = -0x80000000

.field static final PFLAG_IS_ROOT_NAMESPACE:I = 0x8

.field static final PFLAG_LAYOUT_REQUIRED:I = 0x2000

.field static final PFLAG_MEASURED_DIMENSION_SET:I = 0x800

.field static final PFLAG_ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final PFLAG_OPAQUE_BACKGROUND:I = 0x800000

.field static final PFLAG_OPAQUE_MASK:I = 0x1800000

.field static final PFLAG_OPAQUE_SCROLLBARS:I = 0x1000000

.field private static final PFLAG_PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field static final PFLAG_REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field private static final PFLAG_SAVE_STATE_CALLED:I = 0x20000

.field static final PFLAG_SCROLL_CONTAINER:I = 0x80000

.field static final PFLAG_SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final PFLAG_SELECTED:I = 0x4

.field static final PFLAG_SKIP_DRAW:I = 0x80

.field static final PFLAG_WANTS_FOCUS:I = 0x1

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x2a1bf

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_STATE_SET:[I

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0xffff

.field public static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x1

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field protected static final SELECTED_STATE_SET:[I

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SEARCH:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_TRANSIENT:I = 0x4000000

.field public static final STATUS_BAR_TRANSLUCENT:I = 0x40000000

.field public static final STATUS_BAR_UNHIDE:I = 0x10000000

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x7

.field public static final SYSTEM_UI_FLAG_FULLSCREEN:I = 0x4

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_IMMERSIVE:I = 0x800

.field public static final SYSTEM_UI_FLAG_IMMERSIVE_STICKY:I = 0x1000

.field public static final SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN:I = 0x400

.field public static final SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION:I = 0x200

.field public static final SYSTEM_UI_FLAG_LAYOUT_STABLE:I = 0x100

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_LAYOUT_FLAGS:I = 0x600

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x4

.field private static final TEXT_ALIGNMENT_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_GRAVITY:I = 0x1

.field public static final TEXT_ALIGNMENT_INHERIT:I = 0x0

.field static final TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_TEXT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_TEXT_START:I = 0x2

.field public static final TEXT_ALIGNMENT_VIEW_END:I = 0x6

.field public static final TEXT_ALIGNMENT_VIEW_START:I = 0x5

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field private static final TEXT_DIRECTION_DEFAULT:I = 0x0

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LOCALE:I = 0x5

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field static final TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static final TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDEFINED_PADDING:I = -0x80000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sCompatibilityDone:Z

.field private static sIgnoreMeasureCache:Z

.field private static sNextAccessibilityViewId:I

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseBrokenMakeMeasureSpec:Z


# instance fields
.field private mAccessibilityCursorPosition:I

.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBackground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "bg_"
    .end annotation
.end field

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelForId:I

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field private mLayoutInsets:Landroid/graphics/Insets;

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mLeftPaddingDefined:Z

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field mLocalDirtyRect:Landroid/graphics/Rect;

.field private mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

.field private mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

.field private mMeasureCache:Landroid/util/LongSparseLongArray;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field private mOverScrollMode:I

.field mOverlay:Landroid/view/ViewOverlay;

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field mPrivateFlags2:I

.field mPrivateFlags3:I

.field mRecreateDisplayList:Z

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mRightPaddingDefined:Z

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0xffff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field mTransientStateCount:I

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingLeftInitial:I

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRightInitial:I

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 698
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/View;->sCompatibilityDone:Z

    .line 703
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    .line 708
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/View;->sIgnoreMeasureCache:Z

    .line 759
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_21c

    sput-object v9, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 914
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_226

    sput-object v9, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1380
    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_230

    sput-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 1394
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_34

    .line 1395
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1398
    :cond_34
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1399
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_65

    .line 1400
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1401
    .local v8, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_44
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_62

    .line 1402
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_5f

    .line 1403
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1404
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1401
    :cond_5f
    add-int/lit8 v2, v2, 0x2

    goto :goto_44

    .line 1399
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1408
    .end local v2    # "j":I
    .end local v8    # "viewState":I
    :cond_65
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1409
    .local v0, "NUM_BITS":I
    const/4 v9, 0x1

    shl-int/2addr v9, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1410
    const/4 v1, 0x0

    :goto_71
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_99

    .line 1411
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1412
    .local v3, "numBits":I
    new-array v7, v3, [I

    .line 1413
    .local v7, "set":[I
    const/4 v5, 0x0

    .line 1414
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_7e
    array-length v9, v4

    if-ge v2, v9, :cond_92

    .line 1415
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_8f

    .line 1416
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1414
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_8f
    add-int/lit8 v2, v2, 0x2

    goto :goto_7e

    .line 1419
    :cond_92
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 1422
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    .end local v7    # "set":[I
    :cond_99
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1423
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1424
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1425
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1427
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1428
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1430
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1432
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1435
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1436
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1438
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1440
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1443
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1445
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1448
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1451
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1455
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1456
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1458
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1460
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1463
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1465
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1468
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1471
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1474
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1476
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1479
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1482
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1485
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1488
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1491
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1494
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1521
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1868
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_25c

    sput-object v9, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    .line 1949
    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_268

    sput-object v9, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    .line 2064
    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_278

    sput-object v9, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    .line 3428
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v9, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18106
    new-instance v9, Landroid/view/View$3;

    const-string v10, "alpha"

    invoke-direct {v9, v10}, Landroid/view/View$3;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 18122
    new-instance v9, Landroid/view/View$4;

    const-string/jumbo v10, "translationX"

    invoke-direct {v9, v10}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 18138
    new-instance v9, Landroid/view/View$5;

    const-string/jumbo v10, "translationY"

    invoke-direct {v9, v10}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 18154
    new-instance v9, Landroid/view/View$6;

    const-string/jumbo v10, "x"

    invoke-direct {v9, v10}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->X:Landroid/util/Property;

    .line 18170
    new-instance v9, Landroid/view/View$7;

    const-string/jumbo v10, "y"

    invoke-direct {v9, v10}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    .line 18186
    new-instance v9, Landroid/view/View$8;

    const-string/jumbo v10, "rotation"

    invoke-direct {v9, v10}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 18202
    new-instance v9, Landroid/view/View$9;

    const-string/jumbo v10, "rotationX"

    invoke-direct {v9, v10}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    .line 18218
    new-instance v9, Landroid/view/View$10;

    const-string/jumbo v10, "rotationY"

    invoke-direct {v9, v10}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    .line 18234
    new-instance v9, Landroid/view/View$11;

    const-string/jumbo v10, "scaleX"

    invoke-direct {v9, v10}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 18250
    new-instance v9, Landroid/view/View$12;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-void

    .line 759
    :array_21c
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    .line 914
    :array_226
    .array-data 4
        0x0
        0x80000
        0x100000
    .end array-data

    .line 1380
    :array_230
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data

    .line 1868
    :array_25c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 1949
    :array_268
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0x100
        0x140
    .end array-data

    .line 2064
    :array_278
    .array-data 4
        0x0
        0x2000
        0x4000
        0x6000
        0x8000
        0xa000
        0xc000
    .end array-data
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/high16 v3, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 3968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1562
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1571
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1577
    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1579
    iput v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2778
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 2936
    iput-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    .line 2995
    iput v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3002
    iput v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 3034
    iput v0, p0, Landroid/view/View;->mLabelForId:I

    .line 3107
    iput-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 3112
    iput-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 3117
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3121
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3196
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 3202
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3208
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3214
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3220
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3226
    iput v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3229
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3261
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3267
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3282
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3382
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 3424
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_45
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 3969
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3970
    return-void

    :cond_4a
    move-object v0, v1

    .line 3424
    goto :goto_45
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 3436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    iput-object v2, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1562
    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1571
    iput v1, p0, Landroid/view/View;->mID:I

    .line 1577
    iput v1, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1579
    iput v1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2778
    iput v4, p0, Landroid/view/View;->mTransientStateCount:I

    .line 2936
    iput-object v2, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    .line 2995
    iput v4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3002
    iput v4, p0, Landroid/view/View;->mPaddingRight:I

    .line 3034
    iput v1, p0, Landroid/view/View;->mLabelForId:I

    .line 3107
    iput-boolean v4, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 3112
    iput-boolean v4, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 3117
    iput v5, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3121
    iput v5, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3196
    iput-object v2, p0, Landroid/view/View;->mDrawableState:[I

    .line 3202
    iput v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3208
    iput v1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3214
    iput v1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3220
    iput v1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3226
    iput v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3229
    iput-object v2, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3261
    iput-object v2, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3267
    iput v4, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3282
    iput-object v2, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3382
    iput v4, p0, Landroid/view/View;->mLayerType:I

    .line 3424
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_89

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_46
    iput-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 3437
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 3438
    if-eqz p1, :cond_50

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :cond_50
    iput-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3439
    const/high16 v1, 0x18000000

    iput v1, p0, Landroid/view/View;->mViewFlags:I

    .line 3441
    const v1, 0x22408

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3448
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/view/View;->mTouchSlop:I

    .line 3449
    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3450
    iput v5, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 3451
    iput v5, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3453
    sget-boolean v1, Landroid/view/View;->sCompatibilityDone:Z

    if-nez v1, :cond_88

    if-eqz p1, :cond_88

    .line 3454
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3457
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_8b

    move v1, v3

    :goto_7d
    sput-boolean v1, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    .line 3461
    const/16 v1, 0x13

    if-ge v0, v1, :cond_84

    move v4, v3

    :cond_84
    sput-boolean v4, Landroid/view/View;->sIgnoreMeasureCache:Z

    .line 3463
    sput-boolean v3, Landroid/view/View;->sCompatibilityDone:Z

    .line 3465
    .end local v0    # "targetSdkVersion":I
    :cond_88
    return-void

    :cond_89
    move-object v1, v2

    .line 3424
    goto :goto_46

    .restart local v0    # "targetSdkVersion":I
    :cond_8b
    move v1, v4

    .line 3457
    goto :goto_7d
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3484
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3485
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 54
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 3505
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3507
    sget-object v48, Lcom/android/internal/R$styleable;->View:[I

    const/16 v49, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move/from16 v3, p3

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3510
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 3512
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    const/16 v19, -0x1

    .line 3513
    .local v19, "leftPadding":I
    const/16 v38, -0x1

    .line 3514
    .local v38, "topPadding":I
    const/16 v23, -0x1

    .line 3515
    .local v23, "rightPadding":I
    const/4 v9, -0x1

    .line 3516
    .local v9, "bottomPadding":I
    const/high16 v31, -0x80000000

    .line 3517
    .local v31, "startPadding":I
    const/high16 v11, -0x80000000

    .line 3519
    .local v11, "endPadding":I
    const/16 v22, -0x1

    .line 3521
    .local v22, "padding":I
    const/16 v44, 0x0

    .line 3522
    .local v44, "viewFlagValues":I
    const/16 v43, 0x0

    .line 3524
    .local v43, "viewFlagMasks":I
    const/16 v30, 0x0

    .line 3526
    .local v30, "setScrollContainer":Z
    const/16 v46, 0x0

    .line 3527
    .local v46, "x":I
    const/16 v47, 0x0

    .line 3529
    .local v47, "y":I
    const/16 v40, 0x0

    .line 3530
    .local v40, "tx":F
    const/16 v41, 0x0

    .line 3531
    .local v41, "ty":F
    const/16 v25, 0x0

    .line 3532
    .local v25, "rotation":F
    const/16 v26, 0x0

    .line 3533
    .local v26, "rotationX":F
    const/16 v27, 0x0

    .line 3534
    .local v27, "rotationY":F
    const/high16 v33, 0x3f800000    # 1.0f

    .line 3535
    .local v33, "sx":F
    const/high16 v34, 0x3f800000    # 1.0f

    .line 3536
    .local v34, "sy":F
    const/16 v39, 0x0

    .line 3538
    .local v39, "transformSet":Z
    const/16 v28, 0x0

    .line 3539
    .local v28, "scrollbarStyle":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move/from16 v21, v0

    .line 3540
    .local v21, "overScrollMode":I
    const/16 v17, 0x0

    .line 3542
    .local v17, "initializeScrollbars":Z
    const/16 v32, 0x0

    .line 3543
    .local v32, "startPaddingDefined":Z
    const/4 v12, 0x0

    .line 3544
    .local v12, "endPaddingDefined":Z
    const/16 v20, 0x0

    .line 3545
    .local v20, "leftPaddingDefined":Z
    const/16 v24, 0x0

    .line 3547
    .local v24, "rightPaddingDefined":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v35, v0

    .line 3549
    .local v35, "targetSdkVersion":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 3550
    .local v5, "N":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_5e
    move/from16 v0, v16

    if-ge v0, v5, :cond_4c0

    .line 3551
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 3552
    .local v7, "attr":I
    packed-switch v7, :pswitch_data_600

    .line 3550
    :cond_6b
    :goto_6b
    :pswitch_6b
    add-int/lit8 v16, v16, 0x1

    goto :goto_5e

    .line 3554
    :pswitch_6e
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3555
    goto :goto_6b

    .line 3557
    :pswitch_73
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 3558
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 3559
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 3560
    const/16 v20, 0x1

    .line 3561
    const/16 v24, 0x1

    .line 3562
    goto :goto_6b

    .line 3564
    :pswitch_8c
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 3565
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 3566
    const/16 v20, 0x1

    .line 3567
    goto :goto_6b

    .line 3569
    :pswitch_9d
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    .line 3570
    goto :goto_6b

    .line 3572
    :pswitch_a6
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    .line 3573
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 3574
    const/16 v24, 0x1

    .line 3575
    goto :goto_6b

    .line 3577
    :pswitch_b7
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 3578
    goto :goto_6b

    .line 3580
    :pswitch_c0
    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    .line 3581
    const/high16 v48, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v48

    if-eq v0, v1, :cond_d3

    const/16 v32, 0x1

    .line 3582
    :goto_d2
    goto :goto_6b

    .line 3581
    :cond_d3
    const/16 v32, 0x0

    goto :goto_d2

    .line 3584
    :pswitch_d6
    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 3585
    const/high16 v48, -0x80000000

    move/from16 v0, v48

    if-eq v11, v0, :cond_e6

    const/4 v12, 0x1

    .line 3586
    :goto_e5
    goto :goto_6b

    .line 3585
    :cond_e6
    const/4 v12, 0x0

    goto :goto_e5

    .line 3588
    :pswitch_e8
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v46

    .line 3589
    goto/16 :goto_6b

    .line 3591
    :pswitch_f2
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v47

    .line 3592
    goto/16 :goto_6b

    .line 3594
    :pswitch_fc
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6b

    .line 3597
    :pswitch_10d
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_6b

    .line 3600
    :pswitch_123
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_6b

    .line 3603
    :pswitch_139
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v40, v0

    .line 3604
    const/16 v39, 0x1

    .line 3605
    goto/16 :goto_6b

    .line 3607
    :pswitch_14a
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v41, v0

    .line 3608
    const/16 v39, 0x1

    .line 3609
    goto/16 :goto_6b

    .line 3611
    :pswitch_15b
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v25

    .line 3612
    const/16 v39, 0x1

    .line 3613
    goto/16 :goto_6b

    .line 3615
    :pswitch_167
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 3616
    const/16 v39, 0x1

    .line 3617
    goto/16 :goto_6b

    .line 3619
    :pswitch_173
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 3620
    const/16 v39, 0x1

    .line 3621
    goto/16 :goto_6b

    .line 3623
    :pswitch_17f
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v33

    .line 3624
    const/16 v39, 0x1

    .line 3625
    goto/16 :goto_6b

    .line 3627
    :pswitch_18b
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v34

    .line 3628
    const/16 v39, 0x1

    .line 3629
    goto/16 :goto_6b

    .line 3631
    :pswitch_197
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_6b

    .line 3634
    :pswitch_1a7
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_6b

    .line 3637
    :pswitch_1b3
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3638
    or-int/lit8 v44, v44, 0x2

    .line 3639
    or-int/lit8 v43, v43, 0x2

    goto/16 :goto_6b

    .line 3643
    :pswitch_1c3
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3644
    or-int/lit8 v44, v44, 0x1

    .line 3645
    or-int/lit8 v43, v43, 0x1

    goto/16 :goto_6b

    .line 3649
    :pswitch_1d3
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3650
    const v48, 0x40001

    or-int v44, v44, v48

    .line 3651
    const v48, 0x40001

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3655
    :pswitch_1e9
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3656
    move/from16 v0, v44

    or-int/lit16 v0, v0, 0x4000

    move/from16 v44, v0

    .line 3657
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x4000

    move/from16 v43, v0

    goto/16 :goto_6b

    .line 3661
    :pswitch_201
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3662
    const/high16 v48, 0x200000

    or-int v44, v44, v48

    .line 3663
    const/high16 v48, 0x200000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3667
    :pswitch_215
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-nez v48, :cond_6b

    .line 3668
    const/high16 v48, 0x10000

    or-int v44, v44, v48

    .line 3669
    const/high16 v48, 0x10000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3673
    :pswitch_229
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3674
    const/high16 v48, 0x400000

    or-int v44, v44, v48

    .line 3675
    const/high16 v48, 0x400000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3679
    :pswitch_23d
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v45

    .line 3680
    .local v45, "visibility":I
    if-eqz v45, :cond_6b

    .line 3681
    sget-object v48, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v48, v48, v45

    or-int v44, v44, v48

    .line 3682
    or-int/lit8 v43, v43, 0xc

    goto/16 :goto_6b

    .line 3687
    .end local v45    # "visibility":I
    :pswitch_251
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    and-int/lit8 v48, v48, -0x3d

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3690
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 3691
    .local v18, "layoutDirection":I
    const/16 v48, -0x1

    move/from16 v0, v18

    move/from16 v1, v48

    if-eq v0, v1, :cond_285

    sget-object v48, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v42, v48, v18

    .line 3693
    .local v42, "value":I
    :goto_273
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    shl-int/lit8 v49, v42, 0x2

    or-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_6b

    .line 3691
    .end local v42    # "value":I
    :cond_285
    const/16 v42, 0x2

    goto :goto_273

    .line 3696
    .end local v18    # "layoutDirection":I
    :pswitch_288
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 3697
    .local v10, "cacheQuality":I
    if-eqz v10, :cond_6b

    .line 3698
    sget-object v48, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v48, v48, v10

    or-int v44, v44, v48

    .line 3699
    const/high16 v48, 0x180000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3703
    .end local v10    # "cacheQuality":I
    :pswitch_29e
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6b

    .line 3706
    :pswitch_2ab
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setLabelFor(I)V

    goto/16 :goto_6b

    .line 3709
    :pswitch_2bc
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-nez v48, :cond_6b

    .line 3710
    const v48, -0x8000001

    and-int v44, v44, v48

    .line 3711
    const/high16 v48, 0x8000000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3715
    :pswitch_2d1
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-nez v48, :cond_6b

    .line 3716
    const v48, -0x10000001

    and-int v44, v44, v48

    .line 3717
    const/high16 v48, 0x10000000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3721
    :pswitch_2e6
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 3722
    .local v29, "scrollbars":I
    if-eqz v29, :cond_6b

    .line 3723
    or-int v44, v44, v29

    .line 3724
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x300

    move/from16 v43, v0

    .line 3725
    const/16 v17, 0x1

    goto/16 :goto_6b

    .line 3730
    .end local v29    # "scrollbars":I
    :pswitch_2fc
    const/16 v48, 0xe

    move/from16 v0, v35

    move/from16 v1, v48

    if-ge v0, v1, :cond_6b

    .line 3736
    :pswitch_304
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 3737
    .local v13, "fadingEdge":I
    if-eqz v13, :cond_6b

    .line 3738
    or-int v44, v44, v13

    .line 3739
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x3000

    move/from16 v43, v0

    .line 3740
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_6b

    .line 3744
    .end local v13    # "fadingEdge":I
    :pswitch_31d
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 3745
    if-eqz v28, :cond_6b

    .line 3746
    const/high16 v48, 0x3000000

    and-int v48, v48, v28

    or-int v44, v44, v48

    .line 3747
    const/high16 v48, 0x3000000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3751
    :pswitch_333
    const/16 v30, 0x1

    .line 3752
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3753
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_6b

    .line 3757
    :pswitch_34a
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3758
    const/high16 v48, 0x4000000

    or-int v44, v44, v48

    .line 3759
    const/high16 v48, 0x4000000

    or-int v43, v43, v48

    goto/16 :goto_6b

    .line 3763
    :pswitch_35e
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    if-eqz v48, :cond_6b

    .line 3764
    move/from16 v0, v44

    or-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    .line 3765
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x400

    move/from16 v43, v0

    goto/16 :goto_6b

    .line 3769
    :pswitch_376
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_6b

    .line 3772
    :pswitch_386
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_6b

    .line 3775
    :pswitch_396
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_6b

    .line 3778
    :pswitch_3a6
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_6b

    .line 3781
    :pswitch_3b6
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_6b

    .line 3784
    :pswitch_3c6
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_6b

    .line 3787
    :pswitch_3d6
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_6b

    .line 3790
    :pswitch_3e6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v48

    if-eqz v48, :cond_3f4

    .line 3791
    new-instance v48, Ljava/lang/IllegalStateException;

    const-string v49, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v48 .. v49}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 3795
    :cond_3f4
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3796
    .local v14, "handlerName":Ljava/lang/String;
    if-eqz v14, :cond_6b

    .line 3797
    new-instance v48, Landroid/view/View$1;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6b

    .line 3831
    .end local v14    # "handlerName":Ljava/lang/String;
    :pswitch_40c
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 3832
    goto/16 :goto_6b

    .line 3834
    :pswitch_416
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_6b

    .line 3837
    :pswitch_426
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_6b

    .line 3841
    :pswitch_43b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    move/from16 v0, v48

    and-int/lit16 v0, v0, -0x1c1

    move/from16 v48, v0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3843
    const/16 v48, -0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    .line 3844
    .local v37, "textDirection":I
    const/16 v48, -0x1

    move/from16 v0, v37

    move/from16 v1, v48

    if-eq v0, v1, :cond_6b

    .line 3845
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    sget-object v49, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    aget v49, v49, v37

    or-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_6b

    .line 3850
    .end local v37    # "textDirection":I
    :pswitch_471
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    const v49, -0xe001

    and-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3852
    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 3853
    .local v36, "textAlignment":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v48, v0

    sget-object v49, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    aget v49, v49, v36

    or-int v48, v48, v49

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_6b

    .line 3856
    .end local v36    # "textAlignment":I
    :pswitch_49e
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_6b

    .line 3860
    :pswitch_4af
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    goto/16 :goto_6b

    .line 3865
    .end local v7    # "attr":I
    :cond_4c0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3870
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingStart:I

    .line 3871
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3873
    if-eqz v8, :cond_4d8

    .line 3874
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3879
    :cond_4d8
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 3880
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mRightPaddingDefined:Z

    .line 3882
    if-ltz v22, :cond_4fa

    .line 3883
    move/from16 v19, v22

    .line 3884
    move/from16 v38, v22

    .line 3885
    move/from16 v23, v22

    .line 3886
    move/from16 v9, v22

    .line 3887
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 3888
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 3891
    :cond_4fa
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v48

    if-eqz v48, :cond_5c8

    .line 3899
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v48, v0

    if-nez v48, :cond_50c

    if-eqz v32, :cond_50c

    .line 3900
    move/from16 v19, v31

    .line 3902
    :cond_50c
    if-ltz v19, :cond_5b8

    move/from16 v48, v19

    :goto_510
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 3903
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mRightPaddingDefined:Z

    move/from16 v48, v0

    if-nez v48, :cond_522

    if-eqz v12, :cond_522

    .line 3904
    move/from16 v23, v11

    .line 3906
    :cond_522
    if-ltz v23, :cond_5c0

    move/from16 v48, v23

    :goto_526
    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 3923
    :cond_52c
    :goto_52c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v48, v0

    if-ltz v38, :cond_5f1

    .end local v38    # "topPadding":I
    :goto_534
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v49, v0

    if-ltz v9, :cond_5f9

    .end local v9    # "bottomPadding":I
    :goto_53c
    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v38

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 3929
    if-eqz v43, :cond_552

    .line 3930
    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 3933
    :cond_552
    if-eqz v17, :cond_559

    .line 3934
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 3937
    :cond_559
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3940
    if-eqz v28, :cond_561

    .line 3941
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 3944
    :cond_561
    if-nez v46, :cond_565

    if-eqz v47, :cond_56e

    .line 3945
    :cond_565
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 3948
    :cond_56e
    if-eqz v39, :cond_5a1

    .line 3949
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3950
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3951
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 3952
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 3953
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 3954
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3955
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3958
    :cond_5a1
    if-nez v30, :cond_5b4

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x200

    move/from16 v48, v0

    if-eqz v48, :cond_5b4

    .line 3959
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 3962
    :cond_5b4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 3963
    return-void

    .line 3902
    .restart local v9    # "bottomPadding":I
    .restart local v38    # "topPadding":I
    :cond_5b8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v48, v0

    goto/16 :goto_510

    .line 3906
    :cond_5c0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v48, v0

    goto/16 :goto_526

    .line 3913
    :cond_5c8
    if-nez v32, :cond_5cc

    if-eqz v12, :cond_5ef

    :cond_5cc
    const/4 v15, 0x1

    .line 3915
    .local v15, "hasRelativePadding":Z
    :goto_5cd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v48, v0

    if-eqz v48, :cond_5dd

    if-nez v15, :cond_5dd

    .line 3916
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 3918
    :cond_5dd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mRightPaddingDefined:Z

    move/from16 v48, v0

    if-eqz v48, :cond_52c

    if-nez v15, :cond_52c

    .line 3919
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    goto/16 :goto_52c

    .line 3913
    .end local v15    # "hasRelativePadding":Z
    :cond_5ef
    const/4 v15, 0x0

    goto :goto_5cd

    .line 3923
    :cond_5f1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v38, v0

    goto/16 :goto_534

    .end local v38    # "topPadding":I
    :cond_5f9
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPaddingBottom:I

    goto/16 :goto_53c

    .line 3552
    nop

    :pswitch_data_600
    .packed-switch 0x7
        :pswitch_31d
        :pswitch_197
        :pswitch_1a7
        :pswitch_e8
        :pswitch_f2
        :pswitch_6e
        :pswitch_73
        :pswitch_8c
        :pswitch_9d
        :pswitch_a6
        :pswitch_b7
        :pswitch_1c3
        :pswitch_1d3
        :pswitch_23d
        :pswitch_1b3
        :pswitch_2e6
        :pswitch_2fc
        :pswitch_6b
        :pswitch_376
        :pswitch_386
        :pswitch_396
        :pswitch_3a6
        :pswitch_1e9
        :pswitch_201
        :pswitch_215
        :pswitch_288
        :pswitch_229
        :pswitch_3c6
        :pswitch_3d6
        :pswitch_2bc
        :pswitch_34a
        :pswitch_333
        :pswitch_2d1
        :pswitch_3e6
        :pswitch_29e
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_40c
        :pswitch_35e
        :pswitch_fc
        :pswitch_10d
        :pswitch_123
        :pswitch_139
        :pswitch_14a
        :pswitch_17f
        :pswitch_18b
        :pswitch_15b
        :pswitch_167
        :pswitch_173
        :pswitch_416
        :pswitch_3b6
        :pswitch_426
        :pswitch_304
        :pswitch_49e
        :pswitch_43b
        :pswitch_471
        :pswitch_251
        :pswitch_c0
        :pswitch_d6
        :pswitch_2ab
        :pswitch_4af
    .end packed-switch
.end method

.method static synthetic access$2400()Z
    .registers 1

    .prologue
    .line 673
    sget-boolean v0, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/view/View;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 673
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/view/View;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I

    .prologue
    .line 673
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/view/View;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 673
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    return v0
.end method

.method static synthetic access$2800(Landroid/view/View;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 673
    invoke-direct {p0}, Landroid/view/View;->inLiveRegion()Z

    move-result v0

    return v0
.end method

.method private checkForLongClick(I)V
    .registers 5
    .param p1, "delayOffset"    # I

    .prologue
    const/high16 v1, 0x200000

    .line 17441
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    .line 17442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 17444
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_15

    .line 17445
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 17447
    :cond_15
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 17448
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17451
    :cond_25
    return-void
.end method

.method private cleanupDraw()V
    .registers 3

    .prologue
    .line 12445
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1e

    .line 12446
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_16

    .line 12447
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->markDirty()V

    .line 12448
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueDisplayList(Landroid/view/DisplayList;)V

    .line 12450
    :cond_16
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->cancelInvalidate(Landroid/view/View;)V

    .line 12455
    :goto_1d
    return-void

    .line 12453
    :cond_1e
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    goto :goto_1d
.end method

.method private clearDisplayList()V
    .registers 2

    .prologue
    .line 13409
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_9

    .line 13410
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->clear()V

    .line 13412
    :cond_9
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 3
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    .line 16612
    or-int v0, p0, p1

    return v0
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .registers 5
    .param p0, "depth"    # I

    .prologue
    const/16 v3, 0x20

    .line 16369
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16370
    .local v1, "spaces":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 16371
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16370
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 16373
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7794
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7795
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1d

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1d

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 7808
    :cond_1c
    :goto_1c
    return v1

    .line 7801
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 7805
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2c

    .line 7806
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2c
    move v1, v2

    .line 7808
    goto :goto_1c
.end method

.method private drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z
    .registers 22
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "drawingTime"    # J
    .param p4, "a"    # Landroid/view/animation/Animation;
    .param p5, "scalingRequired"    # Z

    .prologue
    .line 13952
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13953
    .local v10, "flags":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v11

    .line 13954
    .local v11, "initialized":Z
    if-nez v11, :cond_56

    .line 13955
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 13956
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 13957
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V

    .line 13958
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->onAnimationStart()V

    .line 13961
    :cond_56
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v14

    .line 13962
    .local v14, "t":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v13

    .line 13963
    .local v13, "more":Z
    if-eqz p5, :cond_a7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a7

    .line 13964
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v3, :cond_81

    .line 13965
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 13967
    :cond_81
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 13968
    .local v9, "invalidationTransform":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 13973
    :goto_8e
    if-eqz v13, :cond_a6

    .line 13974
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-nez v3, :cond_cd

    .line 13975
    and-int/lit16 v3, v10, 0x90

    const/16 v4, 0x80

    if-ne v3, v4, :cond_a9

    .line 13977
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14002
    :cond_a6
    :goto_a6
    return v13

    .line 13970
    .end local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    :cond_a7
    move-object v9, v14

    .restart local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    goto :goto_8e

    .line 13978
    :cond_a9
    and-int/lit8 v3, v10, 0x4

    if-nez v3, :cond_a6

    .line 13981
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 13982
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_a6

    .line 13985
    :cond_cd
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v3, :cond_dc

    .line 13986
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 13988
    :cond_dc
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 13989
    .local v8, "region":Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mTop:I

    sub-int v7, v3, v7

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 13994
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 13996
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    iget v4, v8, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    add-int v12, v3, v4

    .line 13997
    .local v12, "left":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int v15, v3, v4

    .line 13998
    .local v15, "top":I
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v15, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_a6
.end method

.method private static dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 19565
    const-string v4, "%32s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 19566
    .local v0, "bits":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 19567
    .local v3, "prefix":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_54

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19568
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19569
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19570
    return-void

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "output":Ljava/lang/String;
    :cond_54
    move-object v4, p1

    .line 19567
    goto :goto_29
.end method

.method private static dumpFlags()V
    .registers 15

    .prologue
    .line 19535
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 19537
    .local v4, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_4
    const-class v13, Landroid/view/View;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_c
    if-ge v6, v9, :cond_86

    aget-object v3, v1, v6

    .line 19538
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 19539
    .local v10, "modifiers":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_38

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 19540
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 19541
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 19542
    .local v11, "value":I
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v11}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 19537
    .end local v11    # "value":I
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 19543
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, [I

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 19544
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    move-object v0, v13

    check-cast v0, [I

    move-object v12, v0

    .line 19545
    .local v12, "values":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_53
    array-length v13, v12

    if-ge v5, v13, :cond_38

    .line 19546
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget v14, v12, v5

    invoke-static {v4, v13, v14}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    :try_end_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7c} :catch_7f

    .line 19545
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 19551
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "modifiers":I
    .end local v12    # "values":[I
    :catch_7f
    move-exception v2

    .line 19552
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 19555
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    :cond_86
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 19556
    .local v8, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19557
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 19558
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_98
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 19559
    .local v7, "key":Ljava/lang/String;
    const-string v14, "View"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 19561
    .end local v7    # "key":Ljava/lang/String;
    :cond_b0
    return-void
.end method

.method private findLabelForView(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "labeledId"    # I

    .prologue
    .line 5343
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    if-nez v0, :cond_c

    .line 5344
    new-instance v0, Landroid/view/View$MatchLabelForPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$MatchLabelForPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    .line 5346
    :cond_c
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    # setter for: Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I
    invoke-static {v0, p2}, Landroid/view/View$MatchLabelForPredicate;->access$802(Landroid/view/View$MatchLabelForPredicate;I)I

    .line 5347
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 6678
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    if-nez v1, :cond_c

    .line 6679
    new-instance v1, Landroid/view/View$MatchIdPredicate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/View$MatchIdPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    .line 6681
    :cond_c
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    iput p2, v1, Landroid/view/View$MatchIdPredicate;->mId:I

    .line 6682
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 6683
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_30

    .line 6684
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find view with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    :cond_30
    return-object v0
.end method

.method public static generateViewId()I
    .registers 3

    .prologue
    .line 18089
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 18091
    add-int/lit8 v0, v1, 0x1

    .line 18092
    const v2, 0xffffff

    if-le v0, v2, :cond_e

    const/4 v0, 0x1

    .line 18093
    :cond_e
    sget-object v2, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18094
    return v1
.end method

.method public static getDefaultSize(II)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 16668
    move v0, p0

    .line 16669
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 16670
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 16672
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_12

    .line 16681
    :goto_c
    return v0

    .line 16674
    :sswitch_d
    move v0, p0

    .line 16675
    goto :goto_c

    .line 16678
    :sswitch_f
    move v0, v2

    goto :goto_c

    .line 16672
    nop

    :sswitch_data_12
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_f
    .end sparse-switch
.end method

.method private getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;
    .registers 16
    .param p1, "displayList"    # Landroid/view/DisplayList;
    .param p2, "isLayer"    # Z

    .prologue
    .line 13287
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v1

    if-nez v1, :cond_8

    .line 13288
    const/4 v1, 0x0

    .line 13379
    :goto_7
    return-object v1

    .line 13291
    :cond_8
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-nez p2, :cond_124

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v1, :cond_124

    .line 13296
    :cond_1e
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_41

    if-nez p2, :cond_41

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v1, :cond_41

    .line 13298
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13299
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13300
    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    move-object v1, p1

    .line 13302
    goto :goto_7

    .line 13305
    :cond_41
    if-nez p2, :cond_46

    .line 13308
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 13310
    :cond_46
    if-nez p1, :cond_5b

    .line 13311
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object p1

    .line 13315
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13318
    :cond_5b
    const/4 v8, 0x0

    .line 13319
    .local v8, "caching":Z
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int v12, v1, v2

    .line 13320
    .local v12, "width":I
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int v9, v1, v2

    .line 13321
    .local v9, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v11

    .line 13323
    .local v11, "layerType":I
    invoke-virtual {p1, v12, v9}, Landroid/view/DisplayList;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 13326
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    if-nez p2, :cond_d4

    if-eqz v11, :cond_d4

    .line 13327
    const/4 v1, 0x2

    if-ne v11, v1, :cond_c0

    .line 13328
    :try_start_77
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v10

    .line 13329
    .local v10, "layer":Landroid/view/HardwareLayer;
    if-eqz v10, :cond_9b

    invoke-virtual {v10}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 13330
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    :try_end_8a
    .catchall {:try_start_77 .. :try_end_8a} :catchall_b1

    .line 13336
    :goto_8a
    const/4 v8, 0x1

    .line 13366
    .end local v10    # "layer":Landroid/view/HardwareLayer;
    :cond_8b
    :goto_8b
    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 13367
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 13368
    if-eqz p2, :cond_11b

    .line 13369
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v12, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v8    # "caching":Z
    .end local v9    # "height":I
    .end local v11    # "layerType":I
    .end local v12    # "width":I
    :cond_98
    :goto_98
    move-object v1, p1

    .line 13379
    goto/16 :goto_7

    .line 13332
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    .restart local v8    # "caching":Z
    .restart local v9    # "height":I
    .restart local v10    # "layer":Landroid/view/HardwareLayer;
    .restart local v11    # "layerType":I
    .restart local v12    # "width":I
    :cond_9b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_9d
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Landroid/view/HardwareCanvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I
    :try_end_b0
    .catchall {:try_start_9d .. :try_end_b0} :catchall_b1

    goto :goto_8a

    .line 13366
    .end local v10    # "layer":Landroid/view/HardwareLayer;
    :catchall_b1
    move-exception v1

    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 13367
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 13368
    if-eqz p2, :cond_120

    .line 13369
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v12, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 13371
    :goto_bf
    throw v1

    .line 13338
    :cond_c0
    const/4 v1, 0x1

    :try_start_c1
    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13339
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 13340
    .local v7, "cache":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8b

    .line 13341
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 13342
    const/4 v8, 0x1

    goto :goto_8b

    .line 13347
    .end local v7    # "cache":Landroid/graphics/Bitmap;
    :cond_d4
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 13349
    iget v1, p0, Landroid/view/View;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 13350
    if-nez p2, :cond_f4

    .line 13351
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13352
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13356
    :cond_f4
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_116

    .line 13357
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13358
    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 13359
    iget-object v1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8b

    .line 13362
    :cond_116
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_119
    .catchall {:try_start_c1 .. :try_end_119} :catchall_b1

    goto/16 :goto_8b

    .line 13371
    :cond_11b
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto/16 :goto_98

    :cond_120
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto :goto_bf

    .line 13374
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v8    # "caching":Z
    .end local v9    # "height":I
    .end local v11    # "layerType":I
    .end local v12    # "width":I
    :cond_124
    if-nez p2, :cond_98

    .line 13375
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13376
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_98
.end method

.method private getFinalAlpha()F
    .registers 3

    .prologue
    .line 9927
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_e

    .line 9928
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    mul-float/2addr v0, v1

    .line 9930
    :goto_d
    return v0

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_d
.end method

.method private getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;
    .registers 5
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 13389
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    .line 13390
    .local v0, "displayList":Landroid/view/DisplayList;
    invoke-virtual {p1, v0}, Landroid/view/HardwareLayer;->setDisplayList(Landroid/view/DisplayList;)V

    .line 13391
    return-object v0
.end method

.method private getScrollCache()Landroid/view/View$ScrollabilityCache;
    .registers 2

    .prologue
    .line 4254
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4255
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    return-object v0
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .registers 5

    .prologue
    .line 7028
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7029
    .local v0, "ancestor":Landroid/view/ViewParent;
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    move-object v1, v0

    .line 7030
    check-cast v1, Landroid/view/ViewGroup;

    .line 7031
    .local v1, "vgAncestor":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x60000

    if-ne v2, v3, :cond_13

    .line 7032
    const/4 v2, 0x1

    .line 7037
    .end local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :goto_12
    return v2

    .line 7034
    .restart local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7036
    goto :goto_2

    .line 7037
    .end local v1    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_18
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private hasListenersForAccessibility()Z
    .registers 3

    .prologue
    .line 7256
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 7257
    .local v0, "info":Landroid/view/View$ListenerInfo;
    iget-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-nez v1, :cond_26

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private hasRtlSupport()Z
    .registers 2

    .prologue
    .line 12200
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private inLiveRegion()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 19514
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    .line 19527
    :goto_8
    return v1

    .line 19518
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 19519
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_d
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_21

    move-object v1, v0

    .line 19520
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v2

    .line 19522
    goto :goto_8

    .line 19524
    :cond_1c
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_d

    .line 19527
    :cond_21
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 17464
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17465
    .local v0, "factory":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .registers 3

    .prologue
    .line 4248
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_11

    .line 4249
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4251
    :cond_11
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10667
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isDrawablesResolved()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 15082
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isHoverable()Z
    .registers 6

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x0

    .line 8539
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8540
    .local v0, "viewFlags":I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_c

    .line 8544
    :cond_b
    :goto_b
    return v1

    :cond_c
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_16

    and-int v2, v0, v4

    if-ne v2, v4, :cond_b

    :cond_16
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static isLayoutModeOptical(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 14767
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isRtlCompatibilityMode()Z
    .registers 3

    .prologue
    .line 12208
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 12209
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected static mergeDrawableStates([I[I)[I
    .registers 7
    .param p0, "baseState"    # [I
    .param p1, "additionalState"    # [I

    .prologue
    .line 15254
    array-length v0, p0

    .line 15255
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .line 15256
    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_c

    aget v2, p0, v1

    if-nez v2, :cond_c

    .line 15257
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 15259
    :cond_c
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15260
    return-object p0
.end method

.method private needRtlPropertiesResolution()Z
    .registers 3

    .prologue
    const v1, 0x60010220

    .line 12217
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static nonzero(F)Z
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 9278
    const v0, -0x457ced91    # -0.001f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_e

    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .registers 4

    .prologue
    .line 11370
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_c

    .line 11371
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 11373
    :cond_c
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_20

    .line 11374
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 11375
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11378
    :cond_20
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .prologue
    .line 14666
    const-string v1, ""

    .line 14667
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 14668
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 14669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14670
    add-int/lit8 v0, v0, 0x1

    .line 14673
    :cond_1d
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_76

    .line 14691
    :goto_22
    return-object v1

    .line 14675
    :sswitch_23
    if-lez v0, :cond_38

    .line 14676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14678
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14680
    goto :goto_22

    .line 14682
    :sswitch_4c
    if-lez v0, :cond_61

    .line 14683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14685
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14687
    goto :goto_22

    .line 14673
    nop

    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_23
        0x8 -> :sswitch_4c
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .registers 5
    .param p0, "privateFlags"    # I

    .prologue
    .line 14702
    const-string v1, ""

    .line 14703
    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 14705
    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 14706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14707
    add-int/lit8 v0, v0, 0x1

    .line 14710
    :cond_1d
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 14711
    if-lez v0, :cond_37

    .line 14712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14714
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14715
    add-int/lit8 v0, v0, 0x1

    .line 14718
    :cond_4c
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7b

    .line 14719
    if-lez v0, :cond_66

    .line 14720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14722
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14723
    add-int/lit8 v0, v0, 0x1

    .line 14726
    :cond_7b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_ab

    .line 14727
    if-lez v0, :cond_96

    .line 14728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14730
    :cond_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14731
    add-int/lit8 v0, v0, 0x1

    .line 14734
    :cond_ab
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_db

    .line 14735
    if-lez v0, :cond_c6

    .line 14736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14738
    :cond_c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14739
    add-int/lit8 v0, v0, 0x1

    .line 14742
    :cond_db
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_109

    .line 14743
    if-lez v0, :cond_f6

    .line 14744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14746
    :cond_f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14749
    :cond_109
    return-object v1
.end method

.method private removeLongPressCallback()V
    .registers 2

    .prologue
    .line 8769
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_9

    .line 8770
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8772
    :cond_9
    return-void
.end method

.method private removePerformClickCallback()V
    .registers 2

    .prologue
    .line 8778
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_9

    .line 8779
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8781
    :cond_9
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .registers 3

    .prologue
    .line 8825
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_e

    .line 8826
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8827
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 8829
    :cond_e
    return-void
.end method

.method private removeTapCallback()V
    .registers 3

    .prologue
    .line 8797
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_11

    .line 8798
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8799
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8801
    :cond_11
    return-void
.end method

.method private removeUnsetPressCallback()V
    .registers 2

    .prologue
    .line 8787
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_13

    .line 8788
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8789
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8791
    :cond_13
    return-void
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6983
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_10

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_11

    .line 7000
    :cond_10
    :goto_10
    return v0

    .line 6989
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_10

    .line 6995
    :cond_1c
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_10

    .line 6999
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    .line 7000
    goto :goto_10
.end method

.method private resetDisplayList()V
    .registers 2

    .prologue
    .line 13415
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_9

    .line 13416
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->reset()V

    .line 13418
    :cond_9
    return-void
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 5587
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 5598
    :cond_8
    :goto_8
    return-void

    .line 5591
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5594
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_8

    .line 5595
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_8
.end method

.method public static resolveSize(II)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 16620
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .registers 7
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 16637
    move v0, p0

    .line 16638
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 16639
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 16640
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_1e

    .line 16655
    :goto_c
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 16642
    :sswitch_11
    move v0, p0

    .line 16643
    goto :goto_c

    .line 16645
    :sswitch_13
    if-ge v2, p0, :cond_1a

    .line 16646
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_c

    .line 16648
    :cond_1a
    move v0, p0

    .line 16650
    goto :goto_c

    .line 16652
    :sswitch_1c
    move v0, v2

    goto :goto_c

    .line 16640
    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_13
        0x0 -> :sswitch_11
        0x40000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method private sendAccessibilityHoverEvent(I)V
    .registers 5
    .param p1, "eventType"    # I

    .prologue
    .line 6878
    move-object v1, p0

    .line 6880
    .local v1, "source":Landroid/view/View;
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6881
    invoke-virtual {v1, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6888
    :cond_a
    return-void

    .line 6884
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6885
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_a

    move-object v1, v0

    .line 6886
    check-cast v1, Landroid/view/View;

    goto :goto_1
.end method

.method private sendViewTextTraversedAtGranularityEvent(IIII)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "granularity"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I

    .prologue
    .line 7531
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_5

    .line 7543
    :goto_4
    return-void

    .line 7534
    :cond_5
    const/high16 v1, 0x20000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7536
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7537
    invoke-virtual {p0, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7538
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7539
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 7540
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 7541
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 7542
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_4
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16275
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 16276
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    .line 16279
    :cond_c
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16280
    return-void
.end method

.method private setOpticalFrame(IIII)Z
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 14771
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 14773
    .local v1, "parentInsets":Landroid/graphics/Insets;
    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 14774
    .local v0, "childInsets":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, p3

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v5, p4

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    return v2

    .line 14771
    .end local v0    # "childInsets":Landroid/graphics/Insets;
    .end local v1    # "parentInsets":Landroid/graphics/Insets;
    :cond_2f
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_e
.end method

.method private sizeChange(IIII)V
    .registers 6
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 14932
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 14933
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_19

    .line 14934
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setRight(I)V

    .line 14935
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBottom(I)V

    .line 14937
    :cond_19
    return-void
.end method

.method private skipInvalidate()Z
    .registers 2

    .prologue
    .line 10796
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private transformMotionEventToGlobal(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 15891
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_d

    .line 15892
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 15895
    :cond_d
    iget v3, p0, Landroid/view/View;->mLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15897
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15898
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2e

    move-object v1, v0

    .line 15899
    check-cast v1, Landroid/view/View;

    .line 15900
    .local v1, "vp":Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15901
    invoke-direct {v1, p1}, Landroid/view/View;->transformMotionEventToGlobal(Landroid/view/MotionEvent;)V

    .line 15906
    .end local v1    # "vp":Landroid/view/View;
    :cond_2d
    :goto_2d
    return-void

    .line 15902
    :cond_2e
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_2d

    move-object v2, v0

    .line 15903
    check-cast v2, Landroid/view/ViewRootImpl;

    .line 15904
    .local v2, "vr":Landroid/view/ViewRootImpl;
    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2d
.end method

.method private transformMotionEventToLocal(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 15868
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15869
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2e

    move-object v1, v0

    .line 15870
    check-cast v1, Landroid/view/View;

    .line 15871
    .local v1, "vp":Landroid/view/View;
    invoke-direct {v1, p1}, Landroid/view/View;->transformMotionEventToLocal(Landroid/view/MotionEvent;)V

    .line 15872
    iget v3, v1, Landroid/view/View;->mScrollX:I

    int-to-float v3, v3

    iget v4, v1, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15878
    .end local v1    # "vp":Landroid/view/View;
    :cond_15
    :goto_15
    iget v3, p0, Landroid/view/View;->mLeft:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15880
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 15881
    invoke-virtual {p0}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 15883
    :cond_2d
    return-void

    .line 15873
    :cond_2e
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_15

    move-object v2, v0

    .line 15874
    check-cast v2, Landroid/view/ViewRootImpl;

    .line 15875
    .local v2, "vr":Landroid/view/ViewRootImpl;
    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_15
.end method

.method private traverseAtGranularity(IZZ)Z
    .registers 14
    .param p1, "granularity"    # I
    .param p2, "forward"    # Z
    .param p3, "extendSelection"    # Z

    .prologue
    .line 7442
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v8

    .line 7443
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_e

    .line 7444
    :cond_c
    const/4 v9, 0x0

    .line 7475
    :goto_d
    return v9

    .line 7446
    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .line 7447
    .local v2, "iterator":Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-nez v2, :cond_16

    .line 7448
    const/4 v9, 0x0

    goto :goto_d

    .line 7450
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v1

    .line 7451
    .local v1, "current":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_20

    .line 7452
    if-eqz p2, :cond_2a

    const/4 v1, 0x0

    .line 7454
    :cond_20
    :goto_20
    if-eqz p2, :cond_2f

    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v3

    .line 7455
    .local v3, "range":[I
    :goto_26
    if-nez v3, :cond_34

    .line 7456
    const/4 v9, 0x0

    goto :goto_d

    .line 7452
    .end local v3    # "range":[I
    :cond_2a
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_20

    .line 7454
    :cond_2f
    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v3

    goto :goto_26

    .line 7458
    .restart local v3    # "range":[I
    :cond_34
    const/4 v9, 0x0

    aget v5, v3, v9

    .line 7459
    .local v5, "segmentStart":I
    const/4 v9, 0x1

    aget v4, v3, v9

    .line 7462
    .local v4, "segmentEnd":I
    if-eqz p3, :cond_5f

    invoke-virtual {p0}, Landroid/view/View;->isAccessibilitySelectionExtendable()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 7463
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v7

    .line 7464
    .local v7, "selectionStart":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_4c

    .line 7465
    if-eqz p2, :cond_5b

    move v7, v5

    .line 7467
    :cond_4c
    :goto_4c
    if-eqz p2, :cond_5d

    move v6, v4

    .line 7471
    .local v6, "selectionEnd":I
    :goto_4f
    invoke-virtual {p0, v7, v6}, Landroid/view/View;->setAccessibilitySelection(II)V

    .line 7472
    if-eqz p2, :cond_66

    const/16 v0, 0x100

    .line 7474
    .local v0, "action":I
    :goto_56
    invoke-direct {p0, v0, p1, v5, v4}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    .line 7475
    const/4 v9, 0x1

    goto :goto_d

    .end local v0    # "action":I
    .end local v6    # "selectionEnd":I
    :cond_5b
    move v7, v4

    .line 7465
    goto :goto_4c

    :cond_5d
    move v6, v5

    .line 7467
    goto :goto_4f

    .line 7469
    .end local v7    # "selectionStart":I
    :cond_5f
    if-eqz p2, :cond_64

    move v6, v4

    .restart local v6    # "selectionEnd":I
    :goto_62
    move v7, v6

    .restart local v7    # "selectionStart":I
    goto :goto_4f

    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :cond_64
    move v6, v5

    goto :goto_62

    .line 7472
    .restart local v6    # "selectionEnd":I
    .restart local v7    # "selectionStart":I
    :cond_66
    const/16 v0, 0x200

    goto :goto_56
.end method

.method private updateMatrix()V
    .registers 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 9305
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9306
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-nez v0, :cond_7

    .line 9346
    :cond_6
    :goto_6
    return-void

    .line 9309
    :cond_7
    iget-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_6

    .line 9314
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_48

    .line 9315
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    # getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_28

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    # getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_48

    .line 9316
    :cond_28
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    # setter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;I)I

    .line 9317
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    # setter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;I)I

    .line 9318
    # getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 9319
    # getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 9322
    :cond_48
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 9323
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_9a

    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 9324
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 9325
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 9326
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 9342
    :goto_86
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9343
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    # setter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Z)Z

    .line 9344
    const/4 v1, 0x1

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2102(Landroid/view/View$TransformationInfo;Z)Z

    goto/16 :goto_6

    .line 9328
    :cond_9a
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    if-nez v1, :cond_b0

    .line 9329
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9330
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9332
    :cond_b0
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 9333
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 9334
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 9335
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 9336
    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 9337
    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9339
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 9340
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto/16 :goto_86
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7211
    .local p1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7212
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7214
    :cond_9
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6711
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 6712
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 6731
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_3

    .line 6742
    :cond_2
    :goto_2
    return-void

    .line 6734
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6737
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6741
    :cond_1a
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 4338
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4339
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 4340
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4343
    :cond_12
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4344
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 4305
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4306
    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 4307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$002(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4309
    :cond_12
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 4310
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4312
    :cond_23
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x200000

    .line 6794
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 6796
    .local v0, "viewFlags":I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_e

    and-int v1, v0, v3

    if-ne v1, v3, :cond_15

    :cond_e
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_15

    .line 6798
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6800
    :cond_15
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .registers 2

    .prologue
    .line 18438
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_b

    .line 18439
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 18441
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4893
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_29

    .line 4894
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 4896
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4897
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4898
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4899
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4901
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_29
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .registers 18
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 17409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 17410
    .local v1, "r":Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 17411
    .local v13, "db":Landroid/graphics/Rect;
    iget-object v12, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 17412
    .local v12, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_6d

    if-eqz v12, :cond_6d

    .line 17413
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 17414
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v2, v3

    .line 17415
    .local v5, "h":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_2f

    .line 17417
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17419
    :cond_2f
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_3c

    .line 17421
    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17423
    :cond_3c
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_4a

    .line 17425
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17427
    :cond_4a
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_57

    .line 17429
    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 17431
    :cond_57
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 17432
    .local v14, "location":[I
    invoke-virtual {p0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17433
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 17434
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 17438
    .end local v5    # "h":I
    .end local v9    # "w":I
    .end local v14    # "location":[I
    :goto_6c
    return-void

    .line 17436
    :cond_6d
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_6c
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    .line 12085
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_7

    .line 12086
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 12093
    :goto_6
    return-void

    .line 12087
    :cond_7
    if-nez p1, :cond_d

    .line 12088
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 12090
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10654
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected awakenScrollBars(I)Z
    .registers 3
    .param p1, "startDelay"    # I

    .prologue
    .line 10706
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 13
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10748
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 10750
    .local v3, "scrollCache":Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_a

    iget-boolean v6, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_b

    .line 10788
    :cond_a
    :goto_a
    return v4

    .line 10754
    :cond_b
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_16

    .line 10755
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 10758
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 10760
    :cond_22
    if-eqz p2, :cond_27

    .line 10762
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10765
    :cond_27
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_33

    .line 10769
    const/16 v0, 0x2ee

    .line 10770
    .local v0, "KEY_REPEAT_FIRST_DELAY":I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 10775
    .end local v0    # "KEY_REPEAT_FIRST_DELAY":I
    :cond_33
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v1, v6, v8

    .line 10776
    .local v1, "fadeStartTime":J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 10777
    iput v5, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 10780
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_50

    .line 10781
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10782
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_50
    move v4, v5

    .line 10785
    goto :goto_a
.end method

.method public bringToFront()V
    .registers 2

    .prologue
    .line 9028
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 9029
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 9031
    :cond_9
    return-void
.end method

.method public buildDrawingCache()V
    .registers 2

    .prologue
    .line 13522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13523
    return-void
.end method

.method public buildDrawingCache(Z)V
    .registers 25
    .param p1, "autoScale"    # Z

    .prologue
    .line 13549
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    and-int v20, v20, v21

    if-eqz v20, :cond_17

    if-eqz p1, :cond_ea

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_e9

    .line 13551
    :cond_17
    :goto_17
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    .line 13553
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .line 13554
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    .line 13556
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13557
    .local v2, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v2, :cond_f4

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f4

    const/16 v17, 0x1

    .line 13559
    .local v17, "scalingRequired":Z
    :goto_49
    if-eqz p1, :cond_71

    if-eqz v17, :cond_71

    .line 13560
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 13561
    int-to-float v0, v10

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v10, v0

    .line 13564
    :cond_71
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 13565
    .local v6, "drawingCacheBackgroundColor":I
    if-nez v6, :cond_7d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v20

    if-eqz v20, :cond_f8

    :cond_7d
    const/4 v11, 0x1

    .line 13566
    .local v11, "opaque":Z
    :goto_7e
    if-eqz v2, :cond_fa

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v20, v0

    if-eqz v20, :cond_fa

    const/16 v18, 0x1

    .line 13568
    .local v18, "use32BitCache":Z
    :goto_88
    mul-int v21, v19, v10

    if-eqz v11, :cond_fd

    if-nez v18, :cond_fd

    const/16 v20, 0x2

    :goto_90
    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v12, v0

    .line 13569
    .local v12, "projectedBitmapSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v7, v0

    .line 13571
    .local v7, "drawingCacheSize":J
    if-lez v19, :cond_ae

    if-lez v10, :cond_ae

    cmp-long v20, v12, v7

    if-lez v20, :cond_100

    .line 13572
    :cond_ae
    if-lez v19, :cond_de

    if-lez v10, :cond_de

    .line 13573
    const-string v20, "View"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "View too large to fit into drawing cache, needs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, only "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " available"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13577
    :cond_de
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 13578
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    .line 13689
    .end local v2    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v6    # "drawingCacheBackgroundColor":I
    .end local v7    # "drawingCacheSize":J
    .end local v10    # "height":I
    .end local v11    # "opaque":Z
    .end local v12    # "projectedBitmapSize":J
    .end local v17    # "scalingRequired":Z
    .end local v18    # "use32BitCache":Z
    .end local v19    # "width":I
    :cond_e9
    :goto_e9
    return-void

    .line 13549
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_e9

    goto/16 :goto_17

    .line 13557
    .restart local v2    # "attachInfo":Landroid/view/View$AttachInfo;
    .restart local v10    # "height":I
    .restart local v19    # "width":I
    :cond_f4
    const/16 v17, 0x0

    goto/16 :goto_49

    .line 13565
    .restart local v6    # "drawingCacheBackgroundColor":I
    .restart local v17    # "scalingRequired":Z
    :cond_f8
    const/4 v11, 0x0

    goto :goto_7e

    .line 13566
    .restart local v11    # "opaque":Z
    :cond_fa
    const/16 v18, 0x0

    goto :goto_88

    .line 13568
    .restart local v18    # "use32BitCache":Z
    :cond_fd
    const/16 v20, 0x4

    goto :goto_90

    .line 13582
    .restart local v7    # "drawingCacheSize":J
    .restart local v12    # "projectedBitmapSize":J
    :cond_100
    const/4 v5, 0x1

    .line 13583
    .local v5, "clear":Z
    if-eqz p1, :cond_257

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13585
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_107
    if-eqz v3, :cond_11b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_11b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v10, :cond_167

    .line 13587
    :cond_11b
    if-nez v11, :cond_25d

    .line 13590
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x180000

    and-int v20, v20, v21

    .line 13595
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13605
    .local v14, "quality":Landroid/graphics/Bitmap$Config;
    :goto_129
    if-eqz v3, :cond_12e

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 13608
    :cond_12e
    :try_start_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 13610
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 13611
    if-eqz p1, :cond_266

    .line 13612
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13616
    :goto_159
    if-eqz v11, :cond_164

    if-eqz v18, :cond_164

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_164
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12e .. :try_end_164} :catch_26c

    .line 13630
    :cond_164
    if-eqz v6, :cond_28a

    const/4 v5, 0x1

    .line 13634
    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_167
    :goto_167
    if-eqz v2, :cond_28d

    .line 13635
    iget-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13636
    .local v4, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_172

    .line 13637
    new-instance v4, Landroid/graphics/Canvas;

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 13639
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_172
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13644
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13650
    :goto_17b
    if-eqz v5, :cond_180

    .line 13651
    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13654
    :cond_180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 13655
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 13657
    .local v15, "restoreCount":I
    if-eqz p1, :cond_196

    if-eqz v17, :cond_196

    .line 13658
    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    .line 13659
    .local v16, "scale":F
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13662
    .end local v16    # "scale":F
    :cond_196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13664
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 13665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1e9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v20, v0

    if-eqz v20, :cond_1fa

    .line 13667
    :cond_1e9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 13671
    :cond_1fa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_294

    .line 13672
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x600001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 13673
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    if-eqz v20, :cond_247

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_247

    .line 13675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 13681
    :cond_247
    :goto_247
    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13682
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13684
    if-eqz v2, :cond_e9

    .line 13686
    iput-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_e9

    .line 13583
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v15    # "restoreCount":I
    :cond_257
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_107

    .line 13601
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_25d
    if-eqz v18, :cond_263

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :goto_261
    goto/16 :goto_129

    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_263
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_261

    .line 13614
    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_266
    :try_start_266
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_26a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_266 .. :try_end_26a} :catch_26c

    goto/16 :goto_159

    .line 13617
    :catch_26c
    move-exception v9

    .line 13621
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_281

    .line 13622
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13626
    :goto_277
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_e9

    .line 13624
    :cond_281
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_277

    .line 13630
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :cond_28a
    const/4 v5, 0x0

    goto/16 :goto_167

    .line 13647
    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_28d
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    goto/16 :goto_17b

    .line 13678
    .restart local v15    # "restoreCount":I
    :cond_294
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_247
.end method

.method public buildLayer()V
    .registers 4

    .prologue
    .line 13034
    iget v1, p0, Landroid/view/View;->mLayerType:I

    if-nez v1, :cond_5

    .line 13062
    :cond_4
    :goto_4
    return-void

    .line 13036
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13037
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_11

    .line 13038
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This view must be attached to a window first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13041
    :cond_11
    iget v1, p0, Landroid/view/View;->mLayerType:I

    packed-switch v1, :pswitch_data_42

    goto :goto_4

    .line 13059
    :pswitch_17
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_4

    .line 13043
    :pswitch_1c
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13046
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    .line 13053
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->hasOnPreDrawListeners()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13054
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->dispatchFlushHardwareLayerUpdates()V

    goto :goto_4

    .line 13041
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method public callOnClick()Z
    .registers 3

    .prologue
    .line 4454
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4455
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_f

    .line 4456
    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4457
    const/4 v1, 0x1

    .line 4459
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method canAcceptDrag()Z
    .registers 2

    .prologue
    .line 17379
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public canHaveDisplayList()Z
    .registers 2

    .prologue
    .line 13259
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public canResolveLayoutDirection()Z
    .registers 5

    .prologue
    .line 12295
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 12308
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 12297
    :pswitch_9
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_37

    .line 12299
    :try_start_d
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveLayoutDirection()Z
    :try_end_12
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_8

    .line 12300
    :catch_14
    move-exception v0

    .line 12301
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12305
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_37
    const/4 v1, 0x0

    goto :goto_8

    .line 12295
    nop

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method public canResolveTextAlignment()Z
    .registers 5

    .prologue
    .line 18035
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 18048
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 18037
    :pswitch_9
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_37

    .line 18039
    :try_start_d
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextAlignment()Z
    :try_end_12
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_8

    .line 18040
    :catch_14
    move-exception v0

    .line 18041
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18045
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_37
    const/4 v1, 0x0

    goto :goto_8

    .line 18035
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public canResolveTextDirection()Z
    .registers 5

    .prologue
    .line 17800
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 17813
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 17802
    :pswitch_9
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_37

    .line 17804
    :try_start_d
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextDirection()Z
    :try_end_12
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_8

    .line 17805
    :catch_14
    move-exception v0

    .line 17806
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17810
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_37
    const/4 v1, 0x0

    goto :goto_8

    .line 17800
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11868
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .line 11869
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 11870
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 11874
    :cond_13
    :goto_13
    return v2

    .line 11871
    :cond_14
    if-gez p1, :cond_1a

    .line 11872
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 11874
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method public canScrollVertically(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11885
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .line 11886
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 11887
    .local v1, "range":I
    if-nez v1, :cond_14

    move v2, v3

    .line 11891
    :cond_13
    :goto_13
    return v2

    .line 11888
    :cond_14
    if-gez p1, :cond_1a

    .line 11889
    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    .line 11891
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method public cancelLongPress()V
    .registers 1

    .prologue
    .line 8810
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8817
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8818
    return-void
.end method

.method public final cancelPendingInputEvents()V
    .registers 1

    .prologue
    .line 12668
    invoke-virtual {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 12669
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8328
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccessibilityFocus()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 6856
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 6859
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6860
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_19

    .line 6861
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 6862
    .local v0, "focusHost":Landroid/view/View;
    if-eqz v0, :cond_19

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 6863
    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6866
    .end local v0    # "focusHost":Landroid/view/View;
    :cond_19
    return-void
.end method

.method clearAccessibilityFocusNoCallbacks()V
    .registers 3

    .prologue
    .line 6900
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 6901
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6902
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6903
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6905
    :cond_17
    return-void
.end method

.method public clearAnimation()V
    .registers 2

    .prologue
    .line 16800
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 16801
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 16803
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 16804
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 16805
    return-void
.end method

.method public clearFocus()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 4708
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->clearFocusInternal(ZZ)V

    .line 4709
    return-void
.end method

.method clearFocusInternal(ZZ)V
    .registers 5
    .param p1, "propagate"    # Z
    .param p2, "refocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4721
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    .line 4722
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4724
    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_18

    .line 4725
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 4728
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4730
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4732
    if-eqz p1, :cond_2c

    if-eqz p2, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 4733
    :cond_29
    invoke-virtual {p0, p0}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 4736
    :cond_2c
    return-void
.end method

.method protected computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 5931
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_21

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-nez v2, :cond_21

    .line 5935
    :cond_19
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5936
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 5937
    const/4 v1, 0x1

    .line 5947
    :goto_20
    return v1

    .line 5941
    :cond_21
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 5942
    .local v0, "overscan":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5943
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 5944
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 5945
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 5946
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_20
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 11797
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 11776
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 11755
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .registers 5

    .prologue
    const/high16 v3, 0x3000000

    .line 11051
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_32

    .line 11052
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11057
    :goto_16
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11058
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_20

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2a

    :cond_20
    and-int v1, v0, v3

    if-eqz v1, :cond_2a

    and-int v1, v0, v3

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_3b

    .line 11061
    :cond_2a
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11065
    :goto_31
    return-void

    .line 11054
    .end local v0    # "flags":I
    :cond_32
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_16

    .line 11063
    .restart local v0    # "flags":I
    :cond_3b
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_31
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .prologue
    .line 15665
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_6
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 11387
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 11858
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 2

    .prologue
    .line 11837
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 11816
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 5130
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 5131
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5133
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_a
.end method

.method createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .prologue
    .line 5141
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 5142
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_c

    .line 5143
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5147
    :goto_b
    return-object v0

    .line 5145
    :cond_c
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 5146
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_b
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 8342
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    .line 8346
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8348
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 8349
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 8350
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_1a

    .line 8351
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_1a
    move-object v2, p1

    .line 8356
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8358
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2a

    .line 8359
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 8361
    :cond_2a
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    .line 13696
    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int v8, v9, v10

    .line 13697
    .local v8, "width":I
    iget v9, p0, Landroid/view/View;->mBottom:I

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int v4, v9, v10

    .line 13699
    .local v4, "height":I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13700
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_34

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 13701
    .local v7, "scale":F
    :goto_12
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 13702
    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 13704
    iget-object v9, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    if-lez v8, :cond_37

    .end local v8    # "width":I
    :goto_26
    if-lez v4, :cond_39

    .end local v4    # "height":I
    :goto_28
    invoke-static {v9, v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 13706
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3b

    .line 13707
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .line 13700
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .restart local v4    # "height":I
    .restart local v8    # "width":I
    :cond_34
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_12

    .line 13704
    .restart local v7    # "scale":F
    :cond_37
    const/4 v8, 0x1

    goto :goto_26

    .end local v8    # "width":I
    :cond_39
    const/4 v4, 0x1

    goto :goto_28

    .line 13710
    .end local v4    # "height":I
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13711
    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz v5, :cond_4a

    .line 13712
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 13716
    :cond_4a
    if-eqz v0, :cond_b0

    .line 13717
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13718
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-nez v2, :cond_55

    .line 13719
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 13721
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_55
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13726
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13732
    :goto_5b
    const/high16 v9, -0x1000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_63

    .line 13733
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13736
    :cond_63
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 13737
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 13738
    .local v6, "restoreCount":I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13739
    iget v9, p0, Landroid/view/View;->mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13742
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13743
    .local v3, "flags":I
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13746
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_b6

    .line 13747
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13748
    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v9, :cond_a2

    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a2

    .line 13749
    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 13755
    :cond_a2
    :goto_a2
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13757
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13758
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13760
    if-eqz v0, :cond_af

    .line 13762
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13765
    :cond_af
    return-object v1

    .line 13729
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "flags":I
    .end local v6    # "restoreCount":I
    :cond_b0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    goto :goto_5b

    .line 13752
    .restart local v3    # "flags":I
    .restart local v6    # "restoreCount":I
    :cond_b6
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a2
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 16289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 16290
    return-void
.end method

.method protected debug(I)V
    .registers 7
    .param p1, "depth"    # I

    .prologue
    .line 16302
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16304
    .local v1, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16305
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 16306
    .local v0, "id":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_41

    .line 16307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16309
    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 16310
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_64

    .line 16311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16313
    :cond_64
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16315
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8b

    .line 16316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16317
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16320
    :cond_8b
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16324
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16326
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_101

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_101

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_101

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_14f

    .line 16328
    :cond_101
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16331
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16334
    :cond_14f
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16337
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16339
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16340
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_22d

    .line 16341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16345
    :goto_198
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16347
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16351
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16353
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 16354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16357
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16358
    return-void

    .line 16343
    :cond_22d
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_198
.end method

.method public destroyDrawingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 13479
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 13480
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13481
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 13483
    :cond_c
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 13484
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13485
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 13487
    :cond_17
    return-void
.end method

.method protected destroyHardwareResources()V
    .registers 2

    .prologue
    .line 13166
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    .line 13167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 13168
    return-void
.end method

.method destroyLayer(Z)Z
    .registers 6
    .param p1, "valid"    # Z

    .prologue
    const/4 v1, 0x1

    .line 13136
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v2, :cond_35

    .line 13137
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13138
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_34

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_34

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    if-nez p1, :cond_1f

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 13142
    :cond_1f
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2, v3}, Landroid/view/HardwareRenderer;->cancelLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 13143
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2}, Landroid/view/HardwareLayer;->destroy()V

    .line 13144
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 13146
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 13147
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 13151
    .end local v0    # "info":Landroid/view/View$AttachInfo;
    :cond_34
    :goto_34
    return v1

    :cond_35
    const/4 v1, 0x0

    goto :goto_34
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 10
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x0

    .line 12569
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12570
    iget-object v5, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v5, :cond_10

    .line 12571
    iget-object v5, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v5}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/ViewGroup;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 12573
    :cond_10
    iget v5, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 12575
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12576
    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_29

    .line 12577
    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 12578
    iput-object v3, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12580
    :cond_29
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3e

    .line 12581
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12582
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12584
    :cond_3e
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p0, v5, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 12585
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 12587
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12588
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_4e

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 12590
    .local v3, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_4e
    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6a

    .line 12595
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 12596
    .local v2, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_5a

    .line 12600
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_6a
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12601
    .local v4, "vis":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_73

    .line 12602
    invoke-virtual {p0, v4}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12604
    :cond_73
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_7c

    .line 12606
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12608
    :cond_7c
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 12609
    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .registers 4

    .prologue
    .line 12676
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12677
    invoke-virtual {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 12678
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_38

    .line 12679
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCancelPendingInputEvents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12682
    :cond_38
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 3
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    .line 8103
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 8104
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 8082
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8083
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 12612
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12613
    .local v1, "info":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_e

    .line 12614
    iget v5, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12615
    .local v5, "vis":I
    if-eq v5, v7, :cond_e

    .line 12616
    invoke-virtual {p0, v7}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12620
    .end local v5    # "vis":I
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12622
    iget-object v2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12623
    .local v2, "li":Landroid/view/View$ListenerInfo;
    if-eqz v2, :cond_35

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 12625
    .local v4, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_19
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_37

    .line 12630
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    .line 12631
    .local v3, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v3, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_25

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    .end local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_35
    move-object v4, v6

    .line 12623
    goto :goto_19

    .line 12635
    .restart local v4    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_37
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4d

    .line 12636
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12637
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12640
    :cond_4d
    iput-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12641
    iget-object v6, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v6, :cond_5c

    .line 12642
    iget-object v6, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v6}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->dispatchDetachedFromWindow()V

    .line 12644
    :cond_5c
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .prologue
    .line 7980
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 7981
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 17369
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 17371
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 17373
    const/4 v1, 0x1

    .line 17375
    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 9100
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 7607
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 7608
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7868
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7762
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_b

    .line 7763
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 7766
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 7767
    .local v1, "source":I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_40

    .line 7768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7769
    .local v0, "action":I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_22

    const/4 v4, 0x7

    if-eq v0, v4, :cond_22

    const/16 v4, 0xa

    if-ne v0, v4, :cond_29

    .line 7772
    :cond_22
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 7789
    .end local v0    # "action":I
    :cond_28
    :goto_28
    return v2

    .line 7775
    .restart local v0    # "action":I
    :cond_29
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 7782
    .end local v0    # "action":I
    :cond_2f
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 7786
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_3e

    .line 7787
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3e
    move v2, v3

    .line 7789
    goto :goto_28

    .line 7778
    :cond_40
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_28
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7854
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .registers 1

    .prologue
    .line 13248
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7822
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7824
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1c

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 7827
    const/4 v1, 0x1

    .line 7830
    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7653
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_b

    .line 7654
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 7659
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7660
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_2b

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_2b

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    .line 7673
    :goto_2a
    return v1

    .line 7665
    :cond_2b
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_33
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v2

    .line 7667
    goto :goto_2a

    .line 7665
    :cond_3b
    const/4 v1, 0x0

    goto :goto_33

    .line 7670
    :cond_3d
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_46

    .line 7671
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_46
    move v1, v3

    .line 7673
    goto :goto_2a
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7639
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7683
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7886
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7888
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4981
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 4982
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 4984
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4994
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4995
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12793
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 12794
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 12795
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_29

    .line 12798
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12799
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 12800
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    .line 12801
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12806
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_29
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12726
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_2e

    .line 12727
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12728
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 12729
    .local v0, "state":Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_27

    .line 12730
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12733
    :cond_27
    if-eqz v0, :cond_2e

    .line 12736
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12739
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_2e
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .registers 2
    .param p1, "screenState"    # I

    .prologue
    .line 12181
    invoke-virtual {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 12182
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .prologue
    .line 15768
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 6470
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .prologue
    .line 15725
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 7587
    invoke-direct {p0}, Landroid/view/View;->clearDisplayList()V

    .line 7589
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 7590
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 17082
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 17083
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_15

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 17084
    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 17087
    :cond_15
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7694
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_b

    .line 7695
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 7698
    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 7700
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7701
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_2c

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2c

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 7714
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_2b
    :goto_2b
    return v1

    .line 7706
    .restart local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 7711
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_32
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_3b

    .line 7712
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3b
    move v1, v2

    .line 7714
    goto :goto_2b
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7742
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_a

    .line 7743
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 7746
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 6635
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 7950
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7951
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 7900
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 7901
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 2
    .param p1, "visible"    # I

    .prologue
    .line 17063
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 17064
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 8004
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 8005
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 14415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_f

    .line 14416
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 14418
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v27, v0

    .line 14419
    .local v27, "privateFlags":I
    const/high16 v2, 0x600000

    and-int v2, v2, v27

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_b9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_b9

    :cond_2b
    const/4 v12, 0x1

    .line 14421
    .local v12, "dirtyOpaque":Z
    :goto_2c
    const v2, -0x600001

    and-int v2, v2, v27

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14438
    if-nez v12, :cond_76

    .line 14439
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14440
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_76

    .line 14441
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v31, v0

    .line 14442
    .local v31, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 14444
    .local v32, "scrollY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v2, :cond_6d

    .line 14445
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14446
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 14449
    :cond_6d
    or-int v2, v31, v32

    if-nez v2, :cond_bc

    .line 14450
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14460
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    .end local v31    # "scrollX":I
    .end local v32    # "scrollY":I
    :cond_76
    :goto_76
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v38, v0

    .line 14461
    .local v38, "viewFlags":I
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_da

    const/16 v20, 0x1

    .line 14462
    .local v20, "horizontalEdges":Z
    :goto_84
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_dd

    const/16 v37, 0x1

    .line 14463
    .local v37, "verticalEdges":Z
    :goto_8c
    if-nez v37, :cond_e0

    if-nez v20, :cond_e0

    .line 14465
    if-nez v12, :cond_95

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 14468
    :cond_95
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14471
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 14473
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_b8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 14474
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14620
    :cond_b8
    :goto_b8
    return-void

    .line 14419
    .end local v12    # "dirtyOpaque":Z
    .end local v20    # "horizontalEdges":Z
    .end local v37    # "verticalEdges":Z
    .end local v38    # "viewFlags":I
    :cond_b9
    const/4 v12, 0x0

    goto/16 :goto_2c

    .line 14452
    .restart local v9    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "dirtyOpaque":Z
    .restart local v31    # "scrollX":I
    .restart local v32    # "scrollY":I
    :cond_bc
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14453
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14454
    move/from16 v0, v31

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v32

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_76

    .line 14461
    .end local v9    # "background":Landroid/graphics/drawable/Drawable;
    .end local v31    # "scrollX":I
    .end local v32    # "scrollY":I
    .restart local v38    # "viewFlags":I
    :cond_da
    const/16 v20, 0x0

    goto :goto_84

    .line 14462
    .restart local v20    # "horizontalEdges":Z
    :cond_dd
    const/16 v37, 0x0

    goto :goto_8c

    .line 14488
    .restart local v37    # "verticalEdges":Z
    :cond_e0
    const/16 v16, 0x0

    .line 14489
    .local v16, "drawTop":Z
    const/4 v13, 0x0

    .line 14490
    .local v13, "drawBottom":Z
    const/4 v14, 0x0

    .line 14491
    .local v14, "drawLeft":Z
    const/4 v15, 0x0

    .line 14493
    .local v15, "drawRight":Z
    const/16 v36, 0x0

    .line 14494
    .local v36, "topFadeStrength":F
    const/4 v11, 0x0

    .line 14495
    .local v11, "bottomFadeStrength":F
    const/16 v22, 0x0

    .line 14496
    .local v22, "leftFadeStrength":F
    const/16 v29, 0x0

    .line 14499
    .local v29, "rightFadeStrength":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .line 14501
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v25

    .line 14502
    .local v25, "offsetRequired":Z
    if-eqz v25, :cond_fe

    .line 14503
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v2

    add-int v26, v26, v2

    .line 14506
    :cond_fe
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    add-int v21, v2, v26

    .line 14507
    .local v21, "left":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    add-int v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v28, v2, v26

    .line 14508
    .local v28, "right":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeTop(Z)I

    move-result v3

    add-int v35, v2, v3

    .line 14509
    .local v35, "top":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v2

    add-int v10, v35, v2

    .line 14511
    .local v10, "bottom":I
    if-eqz v25, :cond_13b

    .line 14512
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v2

    add-int v28, v28, v2

    .line 14513
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v10, v2

    .line 14516
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v33, v0

    .line 14517
    .local v33, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 14518
    .local v18, "fadeHeight":F
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    .line 14522
    .local v23, "length":I
    if-eqz v37, :cond_159

    add-int v2, v35, v23

    sub-int v3, v10, v23

    if-le v2, v3, :cond_159

    .line 14523
    sub-int v2, v10, v35

    div-int/lit8 v23, v2, 0x2

    .line 14527
    :cond_159
    if-eqz v20, :cond_165

    add-int v2, v21, v23

    sub-int v3, v28, v23

    if-le v2, v3, :cond_165

    .line 14528
    sub-int v2, v28, v21

    div-int/lit8 v23, v2, 0x2

    .line 14531
    :cond_165
    if-eqz v37, :cond_198

    .line 14532
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 14533
    mul-float v2, v36, v18

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32a

    const/16 v16, 0x1

    .line 14534
    :goto_180
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 14535
    mul-float v2, v11, v18

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32e

    const/4 v13, 0x1

    .line 14538
    :cond_198
    :goto_198
    if-eqz v20, :cond_1ca

    .line 14539
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 14540
    mul-float v2, v22, v18

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_331

    const/4 v14, 0x1

    .line 14541
    :goto_1b2
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 14542
    mul-float v2, v29, v18

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_334

    const/4 v15, 0x1

    .line 14545
    :cond_1ca
    :goto_1ca
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v30

    .line 14547
    .local v30, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v34

    .line 14548
    .local v34, "solidColor":I
    if-nez v34, :cond_337

    .line 14549
    const/16 v19, 0x4

    .line 14551
    .local v19, "flags":I
    if-eqz v16, :cond_1eb

    .line 14552
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14555
    :cond_1eb
    if-eqz v13, :cond_1fe

    .line 14556
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14559
    :cond_1fe
    if-eqz v14, :cond_211

    .line 14560
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14563
    :cond_211
    if-eqz v15, :cond_224

    .line 14564
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 14571
    .end local v19    # "flags":I
    :cond_224
    :goto_224
    if-nez v12, :cond_229

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 14574
    :cond_229
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14577
    move-object/from16 v0, v33

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 14578
    .local v7, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    .line 14579
    .local v24, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v17, v0

    .line 14581
    .local v17, "fade":Landroid/graphics/Shader;
    if-eqz v16, :cond_26a

    .line 14582
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v18, v36

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14583
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14584
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14585
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14588
    :cond_26a
    if-eqz v13, :cond_29b

    .line 14589
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v18, v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14590
    const/high16 v2, 0x43340000    # 180.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14591
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v3, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14592
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14593
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14596
    :cond_29b
    if-eqz v14, :cond_2ce

    .line 14597
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v18, v22

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14598
    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14599
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14600
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14601
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14604
    :cond_2ce
    if-eqz v15, :cond_301

    .line 14605
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v18, v29

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14606
    const/high16 v2, 0x42b40000    # 90.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 14607
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14608
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 14609
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14612
    :cond_301
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14615
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 14617
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_b8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 14618
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b8

    .line 14533
    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v17    # "fade":Landroid/graphics/Shader;
    .end local v24    # "matrix":Landroid/graphics/Matrix;
    .end local v30    # "saveCount":I
    .end local v34    # "solidColor":I
    :cond_32a
    const/16 v16, 0x0

    goto/16 :goto_180

    .line 14535
    :cond_32e
    const/4 v13, 0x0

    goto/16 :goto_198

    .line 14540
    :cond_331
    const/4 v14, 0x0

    goto/16 :goto_1b2

    .line 14542
    :cond_334
    const/4 v15, 0x0

    goto/16 :goto_1ca

    .line 14567
    .restart local v30    # "saveCount":I
    .restart local v34    # "solidColor":I
    :cond_337
    invoke-virtual/range {v33 .. v34}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_224
.end method

.method draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z
    .registers 58
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "drawingTime"    # J

    .prologue
    .line 14070
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_cb

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v3, :cond_cb

    const/16 v52, 0x1

    .line 14071
    .local v52, "useDisplayListProperties":Z
    :goto_10
    const/16 v38, 0x0

    .line 14072
    .local v38, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v27

    .line 14073
    .local v27, "childHasIdentityMatrix":Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    .line 14075
    .local v30, "flags":I
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_35

    .line 14076
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 14077
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x101

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14080
    :cond_35
    const/16 v50, 0x0

    .line 14081
    .local v50, "transformToApply":Landroid/view/animation/Transformation;
    const/16 v28, 0x0

    .line 14083
    .local v28, "concatMatrix":Z
    const/4 v8, 0x0

    .line 14085
    .local v8, "scalingRequired":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayerType()I

    move-result v37

    .line 14087
    .local v37, "layerType":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v31

    .line 14088
    .local v31, "hardwareAccelerated":Z
    const v3, 0x8000

    and-int v3, v3, v30

    if-nez v3, :cond_4f

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_cf

    .line 14090
    :cond_4f
    const/16 v26, 0x1

    .line 14092
    .local v26, "caching":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v8, v3, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 14097
    :cond_5d
    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 14098
    .local v7, "a":Landroid/view/animation/Animation;
    if-eqz v7, :cond_d9

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 14099
    invoke-direct/range {v3 .. v8}, Landroid/view/View;->drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z

    move-result v38

    .line 14100
    invoke-virtual {v7}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v28

    .line 14101
    if-eqz v28, :cond_7d

    .line 14102
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14104
    :cond_7d
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v50

    .line 14124
    :cond_81
    :goto_81
    if-nez v27, :cond_128

    const/4 v3, 0x1

    :goto_84
    or-int v28, v28, v3

    .line 14128
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14130
    if-nez v28, :cond_12b

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x801

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    int-to-float v13, v3

    sget-object v14, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_12b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_12b

    .line 14135
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 14402
    :goto_ca
    return v38

    .line 14070
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v8    # "scalingRequired":Z
    .end local v26    # "caching":Z
    .end local v27    # "childHasIdentityMatrix":Z
    .end local v28    # "concatMatrix":Z
    .end local v30    # "flags":I
    .end local v31    # "hardwareAccelerated":Z
    .end local v37    # "layerType":I
    .end local v38    # "more":Z
    .end local v50    # "transformToApply":Landroid/view/animation/Transformation;
    .end local v52    # "useDisplayListProperties":Z
    :cond_cb
    const/16 v52, 0x0

    goto/16 :goto_10

    .line 14094
    .restart local v8    # "scalingRequired":Z
    .restart local v27    # "childHasIdentityMatrix":Z
    .restart local v28    # "concatMatrix":Z
    .restart local v30    # "flags":I
    .restart local v31    # "hardwareAccelerated":Z
    .restart local v37    # "layerType":I
    .restart local v38    # "more":Z
    .restart local v50    # "transformToApply":Landroid/view/animation/Transformation;
    .restart local v52    # "useDisplayListProperties":Z
    :cond_cf
    if-nez v37, :cond_d3

    if-eqz v31, :cond_d6

    :cond_d3
    const/16 v26, 0x1

    .restart local v26    # "caching":Z
    :goto_d5
    goto :goto_5d

    .end local v26    # "caching":Z
    :cond_d6
    const/16 v26, 0x0

    goto :goto_d5

    .line 14106
    .restart local v7    # "a":Landroid/view/animation/Animation;
    .restart local v26    # "caching":Z
    :cond_d9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_fa

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_fa

    .line 14109
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 14110
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14112
    :cond_fa
    if-nez v52, :cond_81

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_81

    .line 14114
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v46

    .line 14115
    .local v46, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v34

    .line 14116
    .local v34, "hasTransform":Z
    if-eqz v34, :cond_81

    .line 14117
    invoke-virtual/range {v46 .. v46}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v51

    .line 14118
    .local v51, "transformType":I
    if-eqz v51, :cond_122

    move-object/from16 v50, v46

    .line 14119
    :goto_11a
    and-int/lit8 v3, v51, 0x2

    if-eqz v3, :cond_125

    const/16 v28, 0x1

    :goto_120
    goto/16 :goto_81

    .line 14118
    :cond_122
    const/16 v50, 0x0

    goto :goto_11a

    .line 14119
    :cond_125
    const/16 v28, 0x0

    goto :goto_120

    .line 14124
    .end local v34    # "hasTransform":Z
    .end local v46    # "t":Landroid/view/animation/Transformation;
    .end local v51    # "transformType":I
    :cond_128
    const/4 v3, 0x0

    goto/16 :goto_84

    .line 14138
    :cond_12b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const v4, -0x10000001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 14140
    if-eqz v31, :cond_155

    .line 14143
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_371

    const/4 v3, 0x1

    :goto_145
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 14144
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14147
    :cond_155
    const/16 v29, 0x0

    .line 14148
    .local v29, "displayList":Landroid/view/DisplayList;
    const/16 v24, 0x0

    .line 14149
    .local v24, "cache":Landroid/graphics/Bitmap;
    const/16 v32, 0x0

    .line 14150
    .local v32, "hasDisplayList":Z
    if-eqz v26, :cond_170

    .line 14151
    if-nez v31, :cond_374

    .line 14152
    if-eqz v37, :cond_169

    .line 14153
    const/16 v37, 0x1

    .line 14154
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 14156
    :cond_169
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 14180
    :cond_170
    :goto_170
    and-int v52, v52, v32

    .line 14181
    if-eqz v52, :cond_184

    .line 14182
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 14183
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_184

    .line 14187
    const/16 v29, 0x0

    .line 14188
    const/16 v32, 0x0

    .line 14189
    const/16 v52, 0x0

    .line 14193
    :cond_184
    const/16 v44, 0x0

    .line 14194
    .local v44, "sx":I
    const/16 v45, 0x0

    .line 14195
    .local v45, "sy":I
    if-nez v32, :cond_199

    .line 14196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 14197
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v44, v0

    .line 14198
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v45, v0

    .line 14201
    :cond_199
    if-eqz v24, :cond_19d

    if-eqz v32, :cond_39e

    :cond_19d
    const/16 v33, 0x1

    .line 14202
    .local v33, "hasNoCache":Z
    :goto_19f
    if-nez v24, :cond_3a2

    if-nez v32, :cond_3a2

    const/4 v3, 0x2

    move/from16 v0, v37

    if-eq v0, v3, :cond_3a2

    const/16 v39, 0x1

    .line 14205
    .local v39, "offsetForScroll":Z
    :goto_1aa
    const/16 v40, -0x1

    .line 14206
    .local v40, "restoreTo":I
    if-eqz v52, :cond_1b0

    if-eqz v50, :cond_1b4

    .line 14207
    :cond_1b0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 14209
    :cond_1b4
    if-eqz v39, :cond_3a6

    .line 14210
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v3, v3, v44

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int v4, v4, v45

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14226
    :cond_1c9
    :goto_1c9
    if-eqz v52, :cond_3d4

    const/high16 v23, 0x3f800000    # 1.0f

    .line 14227
    .local v23, "alpha":F
    :goto_1cd
    if-nez v50, :cond_1e4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_1e4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_1e4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_451

    .line 14229
    :cond_1e4
    if-nez v50, :cond_1e8

    if-nez v27, :cond_24c

    .line 14230
    :cond_1e8
    const/16 v47, 0x0

    .line 14231
    .local v47, "transX":I
    const/16 v48, 0x0

    .line 14233
    .local v48, "transY":I
    if-eqz v39, :cond_1f8

    .line 14234
    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v47, v0

    .line 14235
    move/from16 v0, v45

    neg-int v0, v0

    move/from16 v48, v0

    .line 14238
    :cond_1f8
    if-eqz v50, :cond_227

    .line 14239
    if-eqz v28, :cond_211

    .line 14240
    if-eqz v52, :cond_3e0

    .line 14241
    invoke-virtual/range {v50 .. v50}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 14249
    :goto_207
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14252
    :cond_211
    invoke-virtual/range {v50 .. v50}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v49

    .line 14253
    .local v49, "transformAlpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v49, v3

    if-gez v3, :cond_227

    .line 14254
    mul-float v23, v23, v49

    .line 14255
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14259
    .end local v49    # "transformAlpha":F
    :cond_227
    if-nez v27, :cond_24c

    if-nez v52, :cond_24c

    .line 14260
    move/from16 v0, v47

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v48

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14261
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 14262
    move/from16 v0, v47

    int-to-float v3, v0

    move/from16 v0, v48

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14267
    .end local v47    # "transX":I
    .end local v48    # "transY":I
    :cond_24c
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_25b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29f

    .line 14269
    :cond_25b
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v23, v3

    if-gez v3, :cond_403

    .line 14270
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14274
    :goto_26b
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14275
    if-eqz v33, :cond_29f

    .line 14276
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v23

    float-to-int v14, v3

    .line 14277
    .local v14, "multipliedAlpha":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v3

    if-nez v3, :cond_444

    .line 14278
    const/4 v15, 0x4

    .line 14279
    .local v15, "layerFlags":I
    and-int/lit8 v3, v30, 0x1

    if-nez v3, :cond_28b

    if-eqz v37, :cond_28d

    .line 14281
    :cond_28b
    or-int/lit8 v15, v15, 0x10

    .line 14283
    :cond_28d
    if-eqz v52, :cond_40f

    .line 14284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v3, v3, v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 14302
    .end local v14    # "multipliedAlpha":I
    .end local v15    # "layerFlags":I
    :cond_29f
    :goto_29f
    and-int/lit8 v3, v30, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c9

    if-nez v52, :cond_2c9

    if-nez v24, :cond_2c9

    .line 14304
    if-eqz v39, :cond_471

    .line 14305
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    add-int v3, v3, v44

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    add-int v4, v4, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 14315
    :cond_2c9
    :goto_2c9
    if-nez v52, :cond_2db

    if-eqz v32, :cond_2db

    .line 14316
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 14317
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_2db

    .line 14321
    const/16 v29, 0x0

    .line 14322
    const/16 v32, 0x0

    .line 14326
    :cond_2db
    if-eqz v33, :cond_503

    .line 14327
    const/16 v36, 0x0

    .line 14328
    .local v36, "layerRendered":Z
    const/4 v3, 0x2

    move/from16 v0, v37

    if-ne v0, v3, :cond_30f

    if-nez v52, :cond_30f

    .line 14329
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v35

    .line 14330
    .local v35, "layer":Landroid/view/HardwareLayer;
    if-eqz v35, :cond_4a1

    invoke-virtual/range {v35 .. v35}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4a1

    .line 14331
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v3, p1

    .line 14332
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 14333
    const/16 v36, 0x1

    .line 14343
    .end local v35    # "layer":Landroid/view/HardwareLayer;
    :cond_30f
    :goto_30f
    if-nez v36, :cond_32c

    .line 14344
    if-nez v32, :cond_4e9

    .line 14346
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_4e4

    .line 14347
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14348
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14382
    .end local v36    # "layerRendered":Z
    :cond_32c
    :goto_32c
    if-ltz v40, :cond_335

    .line 14383
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14386
    :cond_335
    if-eqz v7, :cond_34f

    if-nez v38, :cond_34f

    .line 14387
    if-nez v31, :cond_348

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v3

    if-nez v3, :cond_348

    .line 14388
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 14390
    :cond_348
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 14393
    :cond_34f
    if-eqz v38, :cond_36a

    if-eqz v31, :cond_36a

    .line 14394
    invoke-virtual {v7}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_36a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_36a

    .line 14396
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 14400
    :cond_36a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_ca

    .line 14143
    .end local v23    # "alpha":F
    .end local v24    # "cache":Landroid/graphics/Bitmap;
    .end local v29    # "displayList":Landroid/view/DisplayList;
    .end local v32    # "hasDisplayList":Z
    .end local v33    # "hasNoCache":Z
    .end local v39    # "offsetForScroll":Z
    .end local v40    # "restoreTo":I
    .end local v44    # "sx":I
    .end local v45    # "sy":I
    :cond_371
    const/4 v3, 0x0

    goto/16 :goto_145

    .line 14158
    .restart local v24    # "cache":Landroid/graphics/Bitmap;
    .restart local v29    # "displayList":Landroid/view/DisplayList;
    .restart local v32    # "hasDisplayList":Z
    :cond_374
    packed-switch v37, :pswitch_data_57c

    goto/16 :goto_170

    .line 14175
    :pswitch_379
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_170

    .line 14160
    :pswitch_37f
    if-eqz v52, :cond_387

    .line 14161
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_170

    .line 14163
    :cond_387
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 14164
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 14166
    goto/16 :goto_170

    .line 14168
    :pswitch_396
    if-eqz v52, :cond_170

    .line 14169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_170

    .line 14201
    .restart local v44    # "sx":I
    .restart local v45    # "sy":I
    :cond_39e
    const/16 v33, 0x0

    goto/16 :goto_19f

    .line 14202
    .restart local v33    # "hasNoCache":Z
    :cond_3a2
    const/16 v39, 0x0

    goto/16 :goto_1aa

    .line 14212
    .restart local v39    # "offsetForScroll":Z
    .restart local v40    # "restoreTo":I
    :cond_3a6
    if-nez v52, :cond_3b7

    .line 14213
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14215
    :cond_3b7
    if-eqz v8, :cond_1c9

    .line 14216
    if-eqz v52, :cond_3bf

    .line 14218
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 14221
    :cond_3bf
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v41, v3, v4

    .line 14222
    .local v41, "scale":F
    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_1c9

    .line 14226
    .end local v41    # "scale":F
    :cond_3d4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v4

    mul-float v23, v3, v4

    goto/16 :goto_1cd

    .line 14245
    .restart local v23    # "alpha":F
    .restart local v47    # "transX":I
    .restart local v48    # "transY":I
    :cond_3e0
    move/from16 v0, v47

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v48

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14246
    invoke-virtual/range {v50 .. v50}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 14247
    move/from16 v0, v47

    int-to-float v3, v0

    move/from16 v0, v48

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_207

    .line 14272
    .end local v47    # "transX":I
    .end local v48    # "transY":I
    :cond_403
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    goto/16 :goto_26b

    .line 14285
    .restart local v14    # "multipliedAlpha":I
    .restart local v15    # "layerFlags":I
    :cond_40f
    if-nez v37, :cond_29f

    .line 14286
    if-eqz v32, :cond_43e

    const/16 v42, 0x0

    .line 14287
    .local v42, "scrollX":I
    :goto_415
    if-eqz v32, :cond_441

    const/16 v43, 0x0

    .line 14288
    .local v43, "scrollY":I
    :goto_419
    move/from16 v0, v42

    int-to-float v10, v0

    move/from16 v0, v43

    int-to-float v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v13, v3

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto/16 :goto_29f

    .end local v42    # "scrollX":I
    .end local v43    # "scrollY":I
    :cond_43e
    move/from16 v42, v44

    .line 14286
    goto :goto_415

    .restart local v42    # "scrollX":I
    :cond_441
    move/from16 v43, v45

    .line 14287
    goto :goto_419

    .line 14293
    .end local v15    # "layerFlags":I
    .end local v42    # "scrollX":I
    :cond_444
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_29f

    .line 14297
    .end local v14    # "multipliedAlpha":I
    :cond_451
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_29f

    .line 14298
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 14299
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_29f

    .line 14307
    :cond_471
    if-eqz v8, :cond_475

    if-nez v24, :cond_490

    .line 14308
    :cond_475
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2c9

    .line 14310
    :cond_490
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2c9

    .line 14335
    .restart local v35    # "layer":Landroid/view/HardwareLayer;
    .restart local v36    # "layerRendered":Z
    :cond_4a1
    if-eqz v32, :cond_4de

    const/16 v42, 0x0

    .line 14336
    .restart local v42    # "scrollX":I
    :goto_4a5
    if-eqz v32, :cond_4e1

    const/16 v43, 0x0

    .line 14337
    .restart local v43    # "scrollY":I
    :goto_4a9
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x14

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_30f

    .end local v42    # "scrollX":I
    .end local v43    # "scrollY":I
    :cond_4de
    move/from16 v42, v44

    .line 14335
    goto :goto_4a5

    .restart local v42    # "scrollX":I
    :cond_4e1
    move/from16 v43, v45

    .line 14336
    goto :goto_4a9

    .line 14350
    .end local v35    # "layer":Landroid/view/HardwareLayer;
    .end local v42    # "scrollX":I
    :cond_4e4
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_32c

    .line 14353
    :cond_4e9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v3, p1

    .line 14354
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    goto/16 :goto_32c

    .line 14357
    .end local v36    # "layerRendered":Z
    :cond_503
    if-eqz v24, :cond_32c

    .line 14358
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14361
    if-nez v37, :cond_56b

    .line 14362
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 14363
    .local v25, "cachePaint":Landroid/graphics/Paint;
    if-nez v25, :cond_52c

    .line 14364
    new-instance v25, Landroid/graphics/Paint;

    .end local v25    # "cachePaint":Landroid/graphics/Paint;
    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 14365
    .restart local v25    # "cachePaint":Landroid/graphics/Paint;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 14366
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 14368
    :cond_52c
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v23, v3

    if-gez v3, :cond_553

    .line 14369
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14370
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x1000

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14379
    :cond_546
    :goto_546
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_32c

    .line 14371
    :cond_553
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_546

    .line 14372
    const/16 v3, 0xff

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14373
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x1001

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_546

    .line 14376
    .end local v25    # "cachePaint":Landroid/graphics/Paint;
    :cond_56b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 14377
    .restart local v25    # "cachePaint":Landroid/graphics/Paint;
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_546

    .line 14158
    :pswitch_data_57c
    .packed-switch 0x0
        :pswitch_379
        :pswitch_37f
        :pswitch_396
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 15118
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15119
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 15120
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15122
    :cond_11
    return-void
.end method

.method ensureTransformationInfo()V
    .registers 2

    .prologue
    .line 9296
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_b

    .line 9297
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9299
    :cond_b
    return-void
.end method

.method public executeHardwareAction(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 12478
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_13

    .line 12479
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->safelyRun(Ljava/lang/Runnable;)Z

    move-result v0

    .line 12481
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 5618
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 6647
    sparse-switch p2, :sswitch_data_4e

    .line 6674
    :cond_5
    :goto_5
    return-object v1

    .line 6649
    :sswitch_6
    iget v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-eq v2, v3, :cond_5

    .line 6650
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 6652
    :sswitch_11
    iget v2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-eq v2, v3, :cond_5

    .line 6653
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 6655
    :sswitch_1c
    iget v2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-eq v2, v3, :cond_5

    .line 6656
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 6658
    :sswitch_27
    iget v2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-eq v2, v3, :cond_5

    .line 6659
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 6661
    :sswitch_32
    iget v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-eq v2, v3, :cond_5

    .line 6662
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 6664
    :sswitch_3d
    iget v2, p0, Landroid/view/View;->mID:I

    if-eq v2, v3, :cond_5

    .line 6665
    iget v0, p0, Landroid/view/View;->mID:I

    .line 6666
    .local v0, "id":I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 6647
    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_32
        0x11 -> :sswitch_6
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_11
        0x82 -> :sswitch_27
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 16038
    if-gez p1, :cond_4

    .line 16039
    const/4 v0, 0x0

    .line 16041
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 16060
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 16063
    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 16025
    if-gez p1, :cond_4

    .line 16026
    const/4 v0, 0x0

    .line 16028
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 16089
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 7
    .param p1, "start"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 16109
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 16111
    .local v0, "childToSkip":Landroid/view/View;
    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 16112
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_9

    if-ne p1, p0, :cond_a

    .line 16118
    .end local v2    # "view":Landroid/view/View;
    :cond_9
    :goto_9
    return-object v2

    .line 16116
    .restart local v2    # "view":Landroid/view/View;
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 16117
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_14

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_16

    .line 16118
    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 16121
    :cond_16
    move-object v0, p1

    move-object p1, v1

    .line 16122
    check-cast p1, Landroid/view/View;

    .line 16123
    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 16011
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16014
    .end local p0    # "this":Landroid/view/View;
    :goto_6
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 15986
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_5

    .line 15989
    .end local p0    # "this":Landroid/view/View;
    :goto_4
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_5
    const/4 p0, 0x0

    goto :goto_4
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16074
    if-nez p1, :cond_4

    .line 16075
    const/4 v0, 0x0

    .line 16077
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 15998
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16001
    .end local p0    # "this":Landroid/view/View;
    :goto_a
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_b
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 6760
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 6761
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_d

    .line 6762
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6773
    :cond_d
    :goto_d
    return-void

    .line 6764
    :cond_e
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_d

    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 6767
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 6768
    .local v1, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 6769
    .local v0, "contentDescriptionLowerCase":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6770
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, -0x80000000

    .line 5908
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 5909
    iput v4, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 5910
    iput v4, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 5911
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 5912
    .local v0, "localInsets":Landroid/graphics/Rect;
    if-nez v0, :cond_21

    .line 5913
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "localInsets":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5914
    .restart local v0    # "localInsets":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5916
    :cond_21
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 5917
    .local v1, "res":Z
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 5918
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 5919
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 5923
    .end local v0    # "localInsets":Landroid/graphics/Rect;
    .end local v1    # "res":Z
    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method public fitsSystemWindows()Z
    .registers 2

    .prologue
    .line 5993
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 6616
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    .line 6617
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 6619
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public forceLayout()V
    .registers 3

    .prologue
    .line 16444
    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clear()V

    .line 16446
    :cond_9
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16447
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16448
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 16890
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 16891
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_2f

    if-eqz v6, :cond_2f

    .line 16892
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16893
    .local v8, "pflags":I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_30

    .line 16896
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 16897
    .local v7, "location":[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 16898
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16907
    .end local v7    # "location":[I
    .end local v8    # "pflags":I
    :cond_2f
    :goto_2f
    return v9

    .line 16900
    .restart local v8    # "pflags":I
    :cond_30
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    .line 16904
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_2f
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .registers 2

    .prologue
    .line 5424
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAccessibilityLiveRegion()I
    .registers 3

    .prologue
    .line 7114
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x1800000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .prologue
    .line 5463
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 5464
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 5466
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAccessibilitySelectionEnd()I
    .registers 2

    .prologue
    .line 7511
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .registers 2

    .prologue
    .line 7504
    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    return v0
.end method

.method public getAccessibilityViewId()I
    .registers 3

    .prologue
    .line 5479
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 5480
    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 5482
    :cond_d
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .registers 2

    .prologue
    .line 5493
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public getAlpha()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9801
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 16781
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 12534
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12535
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 12536
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 12537
    .local v1, "appWindowToken":Landroid/os/IBinder;
    if-nez v1, :cond_a

    .line 12538
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 12542
    .end local v1    # "appWindowToken":Landroid/os/IBinder;
    :cond_a
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 15440
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 16386
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10020
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 11488
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getBottomPaddingOffset()I
    .registers 2

    .prologue
    .line 13862
    const/4 v0, 0x0

    return v0
.end method

.method getBoundsOnScreen(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    .line 5195
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_8

    .line 5232
    :goto_7
    return-void

    .line 5199
    :cond_8
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5200
    .local v2, "position":Landroid/graphics/RectF;
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5202
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_28

    .line 5203
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5206
    :cond_28
    iget v4, p0, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5208
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5209
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_33
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_5e

    move-object v1, v0

    .line 5210
    check-cast v1, Landroid/view/View;

    .line 5212
    .local v1, "parentView":Landroid/view/View;
    iget v4, v1, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5214
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_52

    .line 5215
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5218
    :cond_52
    iget v4, v1, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5220
    iget-object v0, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5221
    goto :goto_33

    .line 5223
    .end local v1    # "parentView":Landroid/view/View;
    :cond_5e
    instance-of v4, v0, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_6c

    move-object v3, v0

    .line 5224
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 5225
    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget v4, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 5228
    .end local v3    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_6c
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 5230
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_7
.end method

.method public getCameraDistance()F
    .registers 4

    .prologue
    .line 9379
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9380
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 9381
    .local v0, "dpi":F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9382
    .local v1, "info":Landroid/view/View$TransformationInfo;
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_24

    .line 9383
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9384
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9386
    :cond_24
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v2

    mul-float/2addr v2, v0

    neg-float v2, v2

    return v2
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 13942
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 5509
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 8153
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 8374
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 2

    .prologue
    .line 12551
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .registers 3

    .prologue
    .line 13404
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 13405
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    return-object v0
.end method

.method public final getDrawableState()[I
    .registers 2

    .prologue
    .line 15153
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_d

    .line 15154
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 15158
    :goto_c
    return-object v0

    .line 15156
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 15157
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15158
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_c
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 13428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "autoScale"    # Z

    .prologue
    const/high16 v2, 0x20000

    const v1, 0x8000

    .line 13459
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    .line 13460
    const/4 v0, 0x0

    .line 13465
    :goto_b
    return-object v0

    .line 13462
    :cond_c
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 13463
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13465
    :cond_14
    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b

    :cond_19
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method public getDrawingCacheBackgroundColor()I
    .registers 2

    .prologue
    .line 13513
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .registers 3

    .prologue
    .line 5671
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x180000

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 9185
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 9186
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 9187
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 9188
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 9189
    return-void
.end method

.method public getDrawingTime()J
    .registers 3

    .prologue
    .line 12837
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method protected getFadeHeight(Z)I
    .registers 5
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 13880
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 13881
    .local v0, "padding":I
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 13882
    :cond_9
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .registers 4
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 13870
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 13871
    .local v0, "top":I
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 13872
    :cond_9
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6532
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFitsSystemWindows()Z
    .registers 3

    .prologue
    .line 5988
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6697
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6698
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 6699
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 10398
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 10399
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 10429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 8
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "globalOffset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 10416
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 10417
    .local v1, "width":I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 10418
    .local v0, "height":I
    if-lez v1, :cond_2c

    if-lez v0, :cond_2c

    .line 10419
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10420
    if-eqz p2, :cond_1f

    .line 10421
    iget v3, p0, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 10423
    :cond_1f
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2b
    const/4 v2, 0x1

    .line 10425
    :cond_2c
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 11079
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11080
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    .line 11081
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 11083
    :goto_6
    return-object v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 13071
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_16

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_16

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_17

    .line 13124
    :cond_16
    :goto_16
    return-object v4

    .line 13076
    :cond_17
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 13078
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v6

    .line 13079
    .local v3, "width":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v6

    .line 13081
    .local v0, "height":I
    if-eqz v3, :cond_16

    if-eqz v0, :cond_16

    .line 13085
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3d

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v5, :cond_80

    .line 13086
    :cond_3d
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v5, :cond_83

    .line 13087
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v6

    invoke-virtual {v5, v3, v0, v6}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v5

    iput-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 13089
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 13112
    :cond_54
    :goto_54
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 13116
    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    iget-object v5, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 13117
    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-direct {p0, v5}, Landroid/view/View;->getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;

    move-result-object v5

    iget-object v6, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V

    .line 13118
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 13119
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_7b

    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2, v4}, Landroid/view/ViewRootImpl;->pushHardwareLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 13121
    :cond_7b
    iget-object v4, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 13124
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_80
    iget-object v4, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto :goto_16

    .line 13091
    :cond_83
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v5

    if-ne v5, v3, :cond_93

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_a0

    .line 13092
    :cond_93
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v3, v0}, Landroid/view/HardwareLayer;->resize(II)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 13093
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 13102
    :cond_a0
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 13104
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v1

    .line 13105
    .local v1, "opaque":Z
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v5

    if-eqz v5, :cond_54

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isOpaque()Z

    move-result v5

    if-eq v5, v1, :cond_54

    .line 13106
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v1}, Landroid/view/HardwareLayer;->setOpaque(Z)V

    .line 13107
    iget-object v5, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_54
.end method

.method public getHardwareRenderer()Landroid/view/HardwareRenderer;
    .registers 2

    .prologue
    .line 13270
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 13271
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 13273
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final getHeight()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 9172
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 10352
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10353
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 10354
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_12

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v2, :cond_1e

    .line 10355
    :cond_12
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 10363
    :goto_1d
    return-void

    .line 10357
    :cond_1e
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 10358
    .local v1, "tmpRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10359
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10360
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1d
.end method

.method public getHorizontalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 4108
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4109
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4110
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 4111
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4114
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getHorizontalScrollFactor()F
    .registers 2

    .prologue
    .line 17619
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4146
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4147
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_11

    .line 4148
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4149
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_11

    .line 4150
    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 4151
    .local v2, "size":I
    if-gtz v2, :cond_11

    .line 4152
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4158
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_11
    return v2
.end method

.method public getId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 16181
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getImportantForAccessibility()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "noHideDescendants"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 7062
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x700000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method final getInverseMatrix()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 9356
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9357
    .local v0, "info":Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_2f

    .line 9358
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9359
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2100(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 9360
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 9361
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2202(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9363
    :cond_1b
    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 9364
    const/4 v1, 0x0

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2102(Landroid/view/View$TransformationInfo;Z)Z

    .line 9366
    :cond_2a
    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 9368
    :goto_2e
    return-object v1

    :cond_2f
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_2e
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 7486
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .registers 5
    .param p1, "granularity"    # I

    .prologue
    .line 7549
    sparse-switch p1, :sswitch_data_66

    .line 7580
    :cond_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 7551
    :sswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7552
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 7553
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    .line 7556
    .local v0, "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_4

    .line 7561
    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_29
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7562
    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 7563
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    .line 7566
    .local v0, "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_4

    .line 7571
    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_4d
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7572
    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 7573
    invoke-static {}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    .line 7575
    .local v0, "iterator":Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_4

    .line 7549
    nop

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_29
        0x8 -> :sswitch_4d
    .end sparse-switch
.end method

.method public getKeepScreenOn()Z
    .registers 3

    .prologue
    .line 5702
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .registers 2

    .prologue
    .line 7625
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getLabelFor()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 5551
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    return v0
.end method

.method public getLayerType()I
    .registers 2

    .prologue
    .line 13017
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .registers 5
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6247
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6248
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x11

    if-ge v0, v2, :cond_16

    .line 6249
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6252
    :cond_15
    :goto_15
    return v1

    :cond_16
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_15
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 10557
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10093
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 11503
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getLeftPaddingOffset()I
    .registers 2

    .prologue
    .line 13820
    const/4 v0, 0x0

    return v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .registers 2

    .prologue
    .line 4282
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_7

    .line 4283
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4286
    :goto_6
    return-object v0

    .line 4285
    :cond_7
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4286
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_6
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 10433
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 10434
    .local v0, "offset":Landroid/graphics/Point;
    :goto_8
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 10435
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 10436
    const/4 v1, 0x1

    .line 10438
    :goto_18
    return v1

    .line 10433
    .end local v0    # "offset":Landroid/graphics/Point;
    :cond_19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_8

    .line 10438
    .restart local v0    # "offset":Landroid/graphics/Point;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getLocationInWindow([I)V
    .registers 11
    .param p1, "location"    # [I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 15933
    if-eqz p1, :cond_a

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_12

    .line 15934
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 15937
    :cond_12
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_1b

    .line 15939
    aput v6, p1, v7

    aput v6, p1, v6

    .line 15978
    :goto_1a
    return-void

    .line 15943
    :cond_1b
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 15944
    .local v0, "position":[F
    const/4 v4, 0x0

    aput v4, v0, v7

    aput v4, v0, v6

    .line 15946
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_31

    .line 15947
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 15950
    :cond_31
    aget v4, v0, v6

    iget v5, p0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 15951
    aget v4, v0, v7

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 15953
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15954
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_43
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_7a

    move-object v1, v2

    .line 15955
    check-cast v1, Landroid/view/View;

    .line 15957
    .local v1, "view":Landroid/view/View;
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 15958
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 15960
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_67

    .line 15961
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 15964
    :cond_67
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 15965
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 15967
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15968
    goto :goto_43

    .line 15970
    .end local v1    # "view":Landroid/view/View;
    :cond_7a
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_89

    move-object v3, v2

    .line 15972
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 15973
    .local v3, "vr":Landroid/view/ViewRootImpl;
    aget v4, v0, v7

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 15976
    .end local v3    # "vr":Landroid/view/ViewRootImpl;
    :cond_89
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    .line 15977
    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    goto :goto_1a
.end method

.method public getLocationOnScreen([I)V
    .registers 6
    .param p1, "location"    # [I

    .prologue
    .line 15916
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15918
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15919
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 15920
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 15921
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 15923
    :cond_17
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 9264
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_e

    .line 9265
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9266
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 9268
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_d
.end method

.method public final getMeasuredHeight()I
    .registers 3

    .prologue
    .line 9223
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .registers 2

    .prologue
    .line 9236
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .registers 3

    .prologue
    .line 9247
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .registers 3

    .prologue
    .line 9199
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .registers 2

    .prologue
    .line 9212
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 16725
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 16754
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .registers 2

    .prologue
    .line 5789
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .registers 2

    .prologue
    .line 5810
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .registers 2

    .prologue
    .line 5726
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .registers 2

    .prologue
    .line 5747
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .registers 2

    .prologue
    .line 5768
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 3

    .prologue
    .line 4367
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4368
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_6
    return-object v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .prologue
    .line 15690
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_a

    .line 15691
    invoke-virtual {p0}, Landroid/view/View;->computeOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    .line 15693
    :cond_a
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOverScrollMode()I
    .registers 2

    .prologue
    .line 17568
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getOverlay()Landroid/view/ViewOverlay;
    .registers 3

    .prologue
    .line 14637
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_d

    .line 14638
    new-instance v0, Landroid/view/ViewOverlay;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    .line 14640
    :cond_d
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    return-object v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 15591
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .registers 3

    .prologue
    .line 15645
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15646
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15648
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_12
    return v0

    :cond_13
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_12
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 15602
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15603
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15605
    :cond_9
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 15631
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15632
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15634
    :cond_9
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .registers 3

    .prologue
    .line 15616
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 15617
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 15619
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_12
    return v0

    :cond_13
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_12
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 15580
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 9109
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 7191
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 7192
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    .line 7193
    .local v0, "parentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 7194
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7199
    .end local v0    # "parentView":Landroid/view/View;
    :goto_12
    return-object v1

    .line 7196
    .restart local v0    # "parentView":Landroid/view/View;
    :cond_13
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_12

    .line 7199
    .end local v0    # "parentView":Landroid/view/View;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getPivotX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9701
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getPivotY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9754
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getRawLayoutDirection()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6195
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRawTextAlignment()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 17874
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0xe000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public getRawTextDirection()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 17648
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 14955
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 10160
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 3

    .prologue
    .line 11517
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected getRightPaddingOffset()I
    .registers 2

    .prologue
    .line 13834
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 4

    .prologue
    .line 15808
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_b

    .line 15809
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 15810
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_b

    .line 15821
    .end local v1    # "v":Landroid/view/View;
    :goto_a
    return-object v1

    .line 15815
    :cond_b
    move-object v0, p0

    .line 15817
    .local v0, "parent":Landroid/view/View;
    :goto_c
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1b

    .line 15818
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_c

    :cond_1b
    move-object v1, v0

    .line 15821
    goto :goto_a
.end method

.method public getRotation()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9463
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getRotationX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9561
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getRotationY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9510
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getScaleX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9613
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method public getScaleY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9656
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .registers 2

    .prologue
    .line 11627
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    goto :goto_8
.end method

.method public getScrollBarFadeDuration()I
    .registers 2

    .prologue
    .line 11651
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    goto :goto_8
.end method

.method public getScrollBarSize()I
    .registers 2

    .prologue
    .line 11675
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    goto :goto_e
.end method

.method public getScrollBarStyle()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 11734
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .registers 2

    .prologue
    .line 9141
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .registers 2

    .prologue
    .line 9152
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 14656
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 3

    .prologue
    .line 16696
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    iget v0, p0, Landroid/view/View;->mMinHeight:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 3

    .prologue
    .line 16712
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    iget v0, p0, Landroid/view/View;->mMinWidth:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6
.end method

.method public getSystemUiVisibility()I
    .registers 2

    .prologue
    .line 17034
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 16194
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 16223
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 16224
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTextAlignment()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 17938
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0xe0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getTextDirection()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 17708
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c00

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final getTop()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9953
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 11474
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected getTopPaddingOffset()I
    .registers 2

    .prologue
    .line 13848
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .registers 2

    .prologue
    .line 8842
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6783
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6784
    return-object v0
.end method

.method public getTransitionAlpha()F
    .registers 2

    .prologue
    .line 9943
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8
.end method

.method public getTranslationX()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10273
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getTranslationY()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10315
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getVerticalFadingEdgeLength()I
    .registers 3

    .prologue
    .line 4075
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4076
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4077
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_d

    .line 4078
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4081
    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected getVerticalScrollFactor()F
    .registers 5

    .prologue
    .line 17598
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_34

    .line 17599
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 17600
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_24

    .line 17602
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17605
    :cond_24
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .line 17608
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_34
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .registers 2

    .prologue
    .line 4278
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4124
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4125
    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_12

    .line 4126
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4127
    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_12

    .line 4128
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 4129
    .local v2, "size":I
    if-gtz v2, :cond_12

    .line 4130
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4136
    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_12
    return v2
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 2

    .prologue
    .line 11092
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 11093
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 11095
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    .prologue
    .line 15793
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 15794
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 15799
    :goto_8
    return-object v0

    .line 15796
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_14

    .line 15797
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 15799
    :cond_14
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_8
.end method

.method public getVisibility()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6025
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 9162
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .registers 2

    .prologue
    .line 12491
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method public getWindowId()Landroid/view/WindowId;
    .registers 4

    .prologue
    .line 12508
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_6

    .line 12509
    const/4 v0, 0x0

    .line 12520
    :goto_5
    return-object v0

    .line 12511
    :cond_6
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    if-nez v0, :cond_29

    .line 12513
    :try_start_c
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    .line 12515
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Landroid/view/WindowId;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    invoke-direct {v1, v2}, Landroid/view/WindowId;-><init>(Landroid/view/IWindowId;)V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2e

    .line 12520
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    goto :goto_5

    .line 12517
    :catch_2e
    move-exception v0

    goto :goto_29
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .prologue
    .line 12560
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowSystemUiVisibility()I
    .registers 2

    .prologue
    .line 17044
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 12500
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWindowVisibility()I
    .registers 2

    .prologue
    .line 8030
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x8

    goto :goto_8
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 8050
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_32

    .line 8052
    :try_start_4
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_30

    .line 8059
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 8060
    .local v2, "insets":Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 8061
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 8062
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 8063
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 8070
    .end local v2    # "insets":Landroid/graphics/Rect;
    :goto_2f
    return-void

    .line 8053
    :catch_30
    move-exception v1

    .line 8054
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2f

    .line 8068
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_32
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 8069
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_2f
.end method

.method public getX()F
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10226
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_b
    add-float/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getY()F
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 10249
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_b
    add-float/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .registers 3
    .param p1, "off"    # Z

    .prologue
    .line 18428
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 18429
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 4604
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_33

    .line 4605
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4607
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4609
    .local v0, "oldFocus":Landroid/view/View;
    :goto_18
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_21

    .line 4610
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4613
    :cond_21
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2c

    .line 4614
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 4617
    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4618
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4620
    .end local v0    # "oldFocus":Landroid/view/View;
    :cond_33
    return-void

    .line 4607
    :cond_34
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public hasFocus()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 4773
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFocusable()Z
    .registers 2

    .prologue
    .line 4789
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected hasHoveredChild()Z
    .registers 2

    .prologue
    .line 7840
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .registers 2

    .prologue
    .line 9288
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_e

    .line 9289
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9290
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    .line 9292
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public hasOnClickListeners()Z
    .registers 3

    .prologue
    .line 4391
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4392
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected hasOpaqueScrollbars()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1000000

    .line 11071
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 9823
    const/4 v0, 0x1

    return v0
.end method

.method hasStaticLayer()Z
    .registers 2

    .prologue
    .line 12998
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/high16 v1, -0x80000000

    .line 6283
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 7938
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public includeForAccessibility()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7228
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_14

    .line 7229
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    .line 7233
    :cond_14
    return v0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 4059
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4061
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4064
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .registers 12
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4173
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4175
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4177
    .local v3, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_12

    .line 4178
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 4181
    :cond_12
    const/16 v6, 0x2c

    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 4183
    .local v1, "fadeScrollbars":Z
    if-nez v1, :cond_1c

    .line 4184
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 4186
    :cond_1c
    iput-boolean v1, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 4189
    const/16 v6, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 4192
    const/16 v6, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 4197
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v6

    invoke-virtual {p1, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4201
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4202
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4204
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4205
    .local v4, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5b

    .line 4206
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4209
    :cond_5b
    const/4 v6, 0x5

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4211
    .local v0, "alwaysDraw":Z
    if-eqz v0, :cond_67

    .line 4212
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 4215
    :cond_67
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4216
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4218
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4219
    if-eqz v4, :cond_7d

    .line 4220
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4223
    :cond_7d
    const/4 v6, 0x6

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4225
    if-eqz v0, :cond_89

    .line 4226
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 4230
    :cond_89
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 4231
    .local v2, "layoutDirection":I
    if-eqz v5, :cond_92

    .line 4232
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 4234
    :cond_92
    if-eqz v4, :cond_97

    .line 4235
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 4239
    :cond_97
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 4240
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v5, 0x1000000

    const/4 v3, 0x0

    .line 15479
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 15480
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 15481
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 15483
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 15484
    .local v2, "viewFlags":I
    const/4 v0, 0x0

    .line 15487
    .local v0, "changed":Z
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_27

    .line 15488
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_1e

    .line 15489
    and-int v4, v2, v5

    if-nez v4, :cond_49

    move v1, v3

    .line 15491
    .local v1, "offset":I
    :goto_19
    iget v4, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_62

    .line 15507
    .end local v1    # "offset":I
    :cond_1e
    :goto_1e
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_27

    .line 15508
    and-int v4, v2, v5

    if-nez v4, :cond_5c

    :goto_26
    add-int/2addr p4, v3

    .line 15513
    :cond_27
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_2e

    .line 15514
    const/4 v0, 0x1

    .line 15515
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15517
    :cond_2e
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_35

    .line 15518
    const/4 v0, 0x1

    .line 15519
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 15521
    :cond_35
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_3c

    .line 15522
    const/4 v0, 0x1

    .line 15523
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 15525
    :cond_3c
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_43

    .line 15526
    const/4 v0, 0x1

    .line 15527
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 15530
    :cond_43
    if-eqz v0, :cond_48

    .line 15531
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15533
    :cond_48
    return-void

    .line 15489
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_19

    .line 15493
    .restart local v1    # "offset":I
    :pswitch_4e
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 15494
    add-int/2addr p1, v1

    goto :goto_1e

    .line 15496
    :cond_56
    add-int/2addr p3, v1

    .line 15498
    goto :goto_1e

    .line 15500
    :pswitch_58
    add-int/2addr p3, v1

    .line 15501
    goto :goto_1e

    .line 15503
    :pswitch_5a
    add-int/2addr p1, v1

    goto :goto_1e

    .line 15508
    .end local v1    # "offset":I
    :cond_5c
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_26

    .line 15491
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_5a
        :pswitch_58
    .end packed-switch
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 10890
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 10891
    return-void
.end method

.method public invalidate(IIII)V
    .registers 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x80000000

    .line 10853
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 10881
    :cond_b
    :goto_b
    return-void

    .line 10856
    :cond_c
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_b

    .line 10859
    :cond_1e
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10860
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10861
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10862
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10863
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10873
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    if-ge p1, p3, :cond_b

    if-ge p2, p4, :cond_b

    .line 10874
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 10875
    .local v2, "scrollX":I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 10876
    .local v3, "scrollY":I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10877
    .local v4, "tmpr":Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10878
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_b
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x80000000

    .line 10810
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 10839
    :cond_b
    :goto_b
    return-void

    .line 10813
    :cond_c
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_1e

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_b

    .line 10816
    :cond_1e
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10817
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10818
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10819
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10820
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10830
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 10831
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 10832
    .local v3, "scrollX":I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 10833
    .local v4, "scrollY":I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10834
    .local v2, "r":Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10836
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_b
.end method

.method invalidate(Z)V
    .registers 10
    .param p1, "invalidateCache"    # Z

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    const/high16 v5, -0x80000000

    .line 10905
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 10938
    :cond_c
    :goto_c
    return-void

    .line 10908
    :cond_d
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-eq v3, v4, :cond_29

    if-eqz p1, :cond_1c

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_29

    :cond_1c
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iget-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v3, v4, :cond_c

    .line 10911
    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 10912
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10913
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10914
    if-eqz p1, :cond_4b

    .line 10915
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10916
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10918
    :cond_4b
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10919
    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10930
    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 10931
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10932
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10935
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_c
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 14964
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 14965
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 14966
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 14967
    .local v1, "scrollX":I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 14969
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 14972
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_1d
    return-void
.end method

.method invalidateInheritedLayoutMode(I)V
    .registers 2
    .param p1, "layoutModeOfRoot"    # I

    .prologue
    .line 12485
    return-void
.end method

.method protected invalidateParentCaches()V
    .registers 4

    .prologue
    .line 11005
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 11006
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 11008
    :cond_11
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .registers 3

    .prologue
    .line 11020
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_14

    .line 11021
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 11023
    :cond_14
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .registers 10
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .prologue
    const/4 v6, 0x0

    .line 10957
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1e

    .line 10958
    :cond_d
    if-eqz p1, :cond_12

    .line 10959
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10961
    :cond_12
    if-eqz p2, :cond_1a

    .line 10962
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10964
    :cond_1a
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 10978
    :cond_1d
    :goto_1d
    return-void

    .line 10966
    :cond_1e
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10967
    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10968
    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 10969
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10970
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10971
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_43

    .line 10972
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v2}, Landroid/view/ViewGroup;->invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 10974
    :cond_43
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1d
.end method

.method public isAccessibilityFocused()Z
    .registers 3

    .prologue
    .line 6809
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isAccessibilitySelectionExtendable()Z
    .registers 2

    .prologue
    .line 7497
    const/4 v0, 0x0

    return v0
.end method

.method public isActionableForAccessibility()Z
    .registers 2

    .prologue
    .line 7246
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

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

.method public isActivated()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 15777
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .prologue
    .line 6326
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isClickable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6394
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDirty()Z
    .registers 3

    .prologue
    .line 10029
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x600000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isDrawingCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 13212
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDuplicateParentStateEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x400000

    .line 12875
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6048
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isFocusable()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6590
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isFocusableInTouchMode()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x40000

    .line 6603
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 5607
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHapticFeedbackEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x10000000

    .line 6173
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 13901
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 11401
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHorizontalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 11531
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isHovered()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8558
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isImportantForAccessibility()Z
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7161
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x700000

    and-int/2addr v2, v5

    shr-int/lit8 v0, v2, 0x14

    .line 7163
    .local v0, "mode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    if-ne v0, v6, :cond_10

    .line 7178
    :cond_f
    :goto_f
    return v3

    .line 7169
    :cond_10
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7170
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_12
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_24

    move-object v2, v1

    .line 7171
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-eq v2, v6, :cond_f

    .line 7175
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_12

    .line 7178
    :cond_24
    if-eq v0, v4, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-direct {p0}, Landroid/view/View;->hasListenersForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-nez v2, :cond_3e

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    if-eqz v2, :cond_41

    :cond_3e
    move v2, v4

    :goto_3f
    move v3, v2

    goto :goto_f

    :cond_41
    move v2, v3

    goto :goto_3f
.end method

.method public isInEditMode()Z
    .registers 2

    .prologue
    .line 13784
    const/4 v0, 0x0

    return v0
.end method

.method public isInLayout()Z
    .registers 3

    .prologue
    .line 16397
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 16398
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isInScrollingContainer()Z
    .registers 3

    .prologue
    .line 8755
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8756
    .local v0, "p":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_1a

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    move-object v1, v0

    .line 8757
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 8758
    const/4 v1, 0x1

    .line 8762
    :goto_14
    return v1

    .line 8760
    :cond_15
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 8762
    :cond_1a
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isInTouchMode()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8138
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_9

    .line 8139
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 8141
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_8
.end method

.method public isLaidOut()Z
    .registers 3

    .prologue
    .line 6334
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isLayoutDirectionInherited()Z
    .registers 3

    .prologue
    .line 12329
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isLayoutDirectionResolved()Z
    .registers 3

    .prologue
    .line 12336
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLayoutRequested()Z
    .registers 3

    .prologue
    .line 14759
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLayoutRtl()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6266
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLongClickable()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200000

    .line 6421
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isOpaque()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x1800000

    .line 11038
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 2

    .prologue
    .line 13806
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .registers 3

    .prologue
    const/high16 v1, -0x80000000

    .line 15661
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isPaddingResolved()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20000000

    .line 12345
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isPressed()Z
    .registers 3

    .prologue
    .line 6484
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRootNamespace()Z
    .registers 2

    .prologue
    .line 16166
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSaveEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10000

    .line 6497
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSaveFromParentEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20000000

    .line 6561
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrollContainer()Z
    .registers 3

    .prologue
    .line 5631
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isScrollbarFadingEnabled()Z
    .registers 2

    .prologue
    .line 11615
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelected()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 15734
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isShown()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5830
    move-object v0, p0

    .line 5833
    .local v0, "current":Landroid/view/View;
    :cond_2
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_9

    .line 5846
    :cond_8
    :goto_8
    return v2

    .line 5836
    :cond_9
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5837
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_8

    .line 5840
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_13

    .line 5841
    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    move-object v0, v1

    .line 5843
    check-cast v0, Landroid/view/View;

    .line 5844
    if-nez v0, :cond_2

    goto :goto_8
.end method

.method public isSoundEffectsEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x8000000

    .line 6144
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isTextAlignmentInherited()Z
    .registers 2

    .prologue
    .line 18071
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTextAlignmentResolved()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10000

    .line 18078
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isTextDirectionInherited()Z
    .registers 2

    .prologue
    .line 17836
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTextDirectionResolved()Z
    .registers 3

    .prologue
    .line 17843
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .registers 3

    .prologue
    .line 11438
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVerticalScrollBarEnabled()Z
    .registers 3

    .prologue
    .line 11561
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 12029
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisibleToUser()Z
    .registers 2

    .prologue
    .line 5360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 9
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 5381
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_c

    .line 5383
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v5, :cond_d

    .line 5412
    :cond_c
    :goto_c
    return v4

    .line 5388
    :cond_d
    move-object v0, p0

    .line 5389
    :goto_e
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_2e

    move-object v2, v0

    .line 5390
    check-cast v2, Landroid/view/View;

    .line 5393
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    .line 5397
    iget-object v0, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5398
    .local v0, "current":Landroid/view/ViewParent;
    goto :goto_e

    .line 5400
    .end local v0    # "current":Landroid/view/ViewParent;
    .end local v2    # "view":Landroid/view/View;
    :cond_2e
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5401
    .local v3, "visibleRect":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v5, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 5402
    .local v1, "offset":Landroid/graphics/Point;
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5406
    if-eqz p1, :cond_4c

    .line 5407
    iget v4, v1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 5408
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    goto :goto_c

    .line 5410
    :cond_4c
    const/4 v4, 0x1

    goto :goto_c
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 15268
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 15269
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 15271
    :cond_9
    return-void
.end method

.method public layout(IIII)V
    .registers 22
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 14803
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1f

    .line 14804
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mOldWidthMeasureSpec:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mOldHeightMeasureSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->onMeasure(II)V

    .line 14805
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x9

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14808
    :cond_1f
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 14809
    .local v9, "oldL":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mTop:I

    .line 14810
    .local v10, "oldT":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mBottom:I

    .line 14811
    .local v12, "oldB":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mRight:I

    .line 14813
    .local v11, "oldR":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-direct/range {p0 .. p4}, Landroid/view/View;->setOpticalFrame(IIII)Z

    move-result v2

    .line 14816
    .local v2, "changed":Z
    :goto_3d
    if-nez v2, :cond_49

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_9a

    :cond_49
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 14817
    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    .line 14818
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14820
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 14821
    .local v14, "li":Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_9a

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 14822
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 14824
    .local v15, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 14825
    .local v16, "numListeners":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7b
    move/from16 v0, v16

    if-ge v13, v0, :cond_9a

    .line 14826
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 14825
    add-int/lit8 v13, v13, 0x1

    goto :goto_7b

    .line 14813
    .end local v2    # "changed":Z
    .end local v13    # "i":I
    .end local v14    # "li":Landroid/view/View$ListenerInfo;
    .end local v15    # "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16    # "numListeners":I
    :cond_95
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    goto :goto_3d

    .line 14831
    .restart local v2    # "changed":Z
    :cond_9a
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14832
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 14833
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .registers 2

    .prologue
    const/16 v0, 0x800

    .line 6010
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    .line 6011
    return-void
.end method

.method public final measure(II)V
    .registers 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 16471
    invoke-static/range {p0 .. p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v8

    .line 16472
    .local v8, "optical":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v11}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v11

    if-eq v8, v11, :cond_30

    .line 16473
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 16474
    .local v3, "insets":Landroid/graphics/Insets;
    iget v11, v3, Landroid/graphics/Insets;->left:I

    iget v12, v3, Landroid/graphics/Insets;->right:I

    add-int v7, v11, v12

    .line 16475
    .local v7, "oWidth":I
    iget v11, v3, Landroid/graphics/Insets;->top:I

    iget v12, v3, Landroid/graphics/Insets;->bottom:I

    add-int v6, v11, v12

    .line 16476
    .local v6, "oHeight":I
    if-eqz v8, :cond_21

    neg-int v7, v7

    .end local v7    # "oWidth":I
    :cond_21
    move/from16 v0, p1

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p1

    .line 16477
    if-eqz v8, :cond_2a

    neg-int v6, v6

    .end local v6    # "oHeight":I
    :cond_2a
    move/from16 v0, p2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p2

    .line 16481
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_30
    move/from16 v0, p1

    int-to-long v11, v0

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    or-long v4, v11, v13

    .line 16482
    .local v4, "key":J
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-nez v11, :cond_51

    new-instance v11, Landroid/util/LongSparseLongArray;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Landroid/util/LongSparseLongArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    .line 16484
    :cond_51
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x1000

    const/16 v12, 0x1000

    if-eq v11, v12, :cond_6b

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mOldWidthMeasureSpec:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_6b

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mOldHeightMeasureSpec:I

    move/from16 v0, p2

    if-eq v0, v11, :cond_da

    .line 16489
    :cond_6b
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, -0x801

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags:I

    .line 16491
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 16493
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x1000

    const/16 v12, 0x1000

    if-ne v11, v12, :cond_a9

    const/4 v2, -0x1

    .line 16495
    .local v2, "cacheIndex":I
    :goto_83
    if-ltz v2, :cond_89

    sget-boolean v11, Landroid/view/View;->sIgnoreMeasureCache:Z

    if-eqz v11, :cond_b2

    .line 16497
    :cond_89
    invoke-virtual/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 16498
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v11, v11, -0x9

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 16508
    :goto_96
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v11, v11, 0x800

    const/16 v12, 0x800

    if-eq v11, v12, :cond_d0

    .line 16509
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 16493
    .end local v2    # "cacheIndex":I
    :cond_a9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v2

    goto :goto_83

    .line 16500
    .restart local v2    # "cacheIndex":I
    :cond_b2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v11, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v9

    .line 16502
    .local v9, "value":J
    const/16 v11, 0x20

    shr-long v11, v9, v11

    long-to-int v11, v11

    long-to-int v12, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16503
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v11, v11, 0x8

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_96

    .line 16514
    .end local v9    # "value":J
    :cond_d0
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v11, v11, 0x2000

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mPrivateFlags:I

    .line 16517
    .end local v2    # "cacheIndex":I
    :cond_da
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 16518
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 16520
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mMeasuredWidth:I

    int-to-long v12, v12

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mMeasuredHeight:I

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    or-long/2addr v12, v14

    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 16522
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .registers 4
    .param p1, "force"    # Z

    .prologue
    .line 8120
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8121
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_19

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_19

    .line 8122
    if-nez p1, :cond_16

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_16

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_16

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_19

    .line 8124
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 8127
    :cond_19
    return-void
.end method

.method notifyGlobalFocusCleared(Landroid/view/View;)V
    .registers 4
    .param p1, "oldFocus"    # Landroid/view/View;

    .prologue
    .line 4739
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_e

    .line 4740
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 4742
    :cond_e
    return-void
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .registers 5

    .prologue
    const/high16 v2, 0x8000000

    .line 7296
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7311
    :cond_e
    :goto_e
    return-void

    .line 7299
    :cond_f
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v2

    if-nez v1, :cond_e

    .line 7300
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7301
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_e

    .line 7303
    :try_start_1d
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v2, 0x1

    invoke-interface {v1, p0, p0, v2}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_23
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_e

    .line 7305
    :catch_24
    move-exception v0

    .line 7306
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public notifyViewAccessibilityStateChangedIfNeeded(I)V
    .registers 4
    .param p1, "changeType"    # I

    .prologue
    .line 7274
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 7282
    :goto_c
    return-void

    .line 7277
    :cond_d
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    if-nez v0, :cond_19

    .line 7278
    new-instance v0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    .line 7281
    :cond_19
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    invoke-virtual {v0, p1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->runOrPost(I)V

    goto :goto_c
.end method

.method public offsetLeftAndRight(I)V
    .registers 12
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10498
    if-eqz p1, :cond_34

    .line 10499
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10500
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_35

    :cond_13
    move v0, v6

    .line 10502
    .local v0, "matrixIsIdentity":Z
    :goto_14
    if-eqz v0, :cond_60

    .line 10503
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_37

    .line 10504
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10526
    :cond_1d
    :goto_1d
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mLeft:I

    .line 10527
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mRight:I

    .line 10528
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_64

    .line 10529
    iget-object v6, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    int-to-float v7, p1

    invoke-virtual {v6, v7}, Landroid/view/DisplayList;->offsetLeftAndRight(F)V

    .line 10530
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10538
    .end local v0    # "matrixIsIdentity":Z
    :cond_34
    :goto_34
    return-void

    :cond_35
    move v0, v5

    .line 10500
    goto :goto_14

    .line 10506
    .restart local v0    # "matrixIsIdentity":Z
    :cond_37
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10507
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_1d

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1d

    .line 10508
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10511
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_59

    .line 10512
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int v2, v7, p1

    .line 10513
    .local v2, "minLeft":I
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 10518
    .local v1, "maxRight":I
    :goto_4b
    sub-int v7, v1, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10519
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 10515
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    :cond_59
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 10516
    .restart local v2    # "minLeft":I
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int v1, v7, p1

    .restart local v1    # "maxRight":I
    goto :goto_4b

    .line 10523
    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_60
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1d

    .line 10532
    :cond_64
    if-nez v0, :cond_69

    .line 10533
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10535
    :cond_69
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_34
.end method

.method public offsetTopAndBottom(I)V
    .registers 12
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10447
    if-eqz p1, :cond_34

    .line 10448
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10449
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_13

    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v8}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v8

    if-eqz v8, :cond_35

    :cond_13
    move v0, v7

    .line 10451
    .local v0, "matrixIsIdentity":Z
    :goto_14
    if-eqz v0, :cond_62

    .line 10452
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_37

    .line 10453
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10478
    :cond_1d
    :goto_1d
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mTop:I

    .line 10479
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mBottom:I

    .line 10480
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_66

    .line 10481
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    int-to-float v8, p1

    invoke-virtual {v7, v8}, Landroid/view/DisplayList;->offsetTopAndBottom(F)V

    .line 10482
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10490
    .end local v0    # "matrixIsIdentity":Z
    :cond_34
    :goto_34
    return-void

    :cond_35
    move v0, v6

    .line 10449
    goto :goto_14

    .line 10455
    .restart local v0    # "matrixIsIdentity":Z
    :cond_37
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10456
    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_1d

    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_1d

    .line 10457
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v8, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10461
    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_5a

    .line 10462
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int v2, v8, p1

    .line 10463
    .local v2, "minTop":I
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 10464
    .local v1, "maxBottom":I
    move v5, p1

    .line 10470
    .local v5, "yLoc":I
    :goto_4c
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    sub-int v9, v1, v2

    invoke-virtual {v4, v6, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 10471
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 10466
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v5    # "yLoc":I
    :cond_5a
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 10467
    .restart local v2    # "minTop":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int v1, v8, p1

    .line 10468
    .restart local v1    # "maxBottom":I
    const/4 v5, 0x0

    .restart local v5    # "yLoc":I
    goto :goto_4c

    .line 10475
    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "yLoc":I
    :cond_62
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1d

    .line 10484
    :cond_66
    if-nez v0, :cond_6b

    .line 10485
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10487
    :cond_6b
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_34
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 16856
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16857
    return-void
.end method

.method protected onAnimationStart()V
    .registers 3

    .prologue
    .line 16844
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16845
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 12105
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    .line 12106
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 12109
    :cond_b
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1d

    .line 12110
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 12111
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12114
    :cond_1d
    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12116
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 12118
    invoke-virtual {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 12120
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 12121
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 12122
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 12125
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_36
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_3f

    .line 12126
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1}, Landroid/view/DisplayList;->clearDirty()V

    .line 12128
    :cond_3f
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .registers 2

    .prologue
    .line 12696
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 12697
    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    .line 12698
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12699
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 8298
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 17388
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 8096
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 8384
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 10
    .param p1, "extraSpace"    # I

    .prologue
    const/high16 v7, 0x400000

    const/4 v6, 0x0

    .line 15178
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_17

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_17

    .line 15180
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 15233
    :cond_16
    :goto_16
    return-object v0

    .line 15185
    :cond_17
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15187
    .local v2, "privateFlags":I
    const/4 v4, 0x0

    .line 15188
    .local v4, "viewStateIndex":I
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_20

    or-int/lit8 v4, v4, 0x10

    .line 15189
    :cond_20
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_28

    or-int/lit8 v4, v4, 0x8

    .line 15190
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_30

    or-int/lit8 v4, v4, 0x4

    .line 15191
    :cond_30
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_36

    or-int/lit8 v4, v4, 0x2

    .line 15192
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_3e

    or-int/lit8 v4, v4, 0x1

    .line 15193
    :cond_3e
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v2

    if-eqz v5, :cond_45

    or-int/lit8 v4, v4, 0x20

    .line 15194
    :cond_45
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_57

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v5, :cond_57

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 15199
    or-int/lit8 v4, v4, 0x40

    .line 15201
    :cond_57
    const/high16 v5, 0x10000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_5e

    or-int/lit16 v4, v4, 0x80

    .line 15203
    :cond_5e
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 15204
    .local v3, "privateFlags2":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_66

    or-int/lit16 v4, v4, 0x100

    .line 15205
    :cond_66
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_6c

    or-int/lit16 v4, v4, 0x200

    .line 15207
    :cond_6c
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 15221
    .local v0, "drawableState":[I
    if-eqz p1, :cond_16

    .line 15226
    if-eqz v0, :cond_7e

    .line 15227
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 15228
    .local v1, "fullState":[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7c
    move-object v0, v1

    .line 15233
    goto :goto_16

    .line 15230
    .end local v1    # "fullState":[I
    :cond_7e
    new-array v1, p1, [I

    .restart local v1    # "fullState":[I
    goto :goto_7c
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 8314
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 12428
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12429
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 12431
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 12432
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 12433
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 12434
    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    .line 12436
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 12437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 12439
    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    .line 12441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 12442
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .prologue
    .line 7993
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 17349
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 12078
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 12048
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12049
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12050
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 11905
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 11906
    .local v9, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_c

    .line 11908
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .line 11910
    .local v18, "state":I
    if-nez v18, :cond_d

    .line 12020
    .end local v18    # "state":I
    :cond_c
    :goto_c
    return-void

    .line 11914
    .restart local v18    # "state":I
    :cond_d
    const/4 v14, 0x0

    .line 11916
    .local v14, "invalidate":Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_13d

    .line 11918
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_1c

    .line 11919
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 11922
    :cond_1c
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .line 11925
    .local v19, "values":[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_12f

    .line 11927
    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    .line 11935
    :goto_2f
    const/4 v14, 0x1

    .line 11943
    .end local v19    # "values":[F
    :goto_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    .line 11945
    .local v22, "viewFlags":I
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_146

    const/4 v10, 0x1

    .line 11947
    .local v10, "drawHorizontalScrollBar":Z
    :goto_3f
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_149

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_149

    const/4 v11, 0x1

    .line 11951
    .local v11, "drawVerticalScrollBar":Z
    :goto_4e
    if-nez v11, :cond_52

    if-eqz v10, :cond_c

    .line 11952
    :cond_52
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v23, v2, v3

    .line 11953
    .local v23, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int v12, v2, v3

    .line 11955
    .local v12, "height":I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 11957
    .local v4, "scrollBar":Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    .line 11958
    .local v15, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    .line 11959
    .local v16, "scrollY":I
    const/high16 v2, 0x2000000

    and-int v2, v2, v22

    if-nez v2, :cond_14c

    const/4 v13, -0x1

    .line 11966
    .local v13, "inside":I
    :goto_79
    if-eqz v10, :cond_cd

    .line 11967
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 11968
    .local v17, "size":I
    if-gtz v17, :cond_86

    .line 11969
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 11972
    :cond_86
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 11975
    if-eqz v11, :cond_14f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v20

    .line 11977
    .local v20, "verticalScrollBarGap":I
    :goto_a1
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .line 11978
    .local v6, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .line 11979
    .local v5, "left":I
    add-int v2, v15, v23

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .line 11980
    .local v7, "right":I
    add-int v8, v6, v17

    .local v8, "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 11981
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 11982
    if-eqz v14, :cond_cd

    .line 11983
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 11987
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v17    # "size":I
    .end local v20    # "verticalScrollBarGap":I
    :cond_cd
    if-eqz v11, :cond_c

    .line 11988
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 11989
    .restart local v17    # "size":I
    if-gtz v17, :cond_da

    .line 11990
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 11993
    :cond_da
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 11996
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    move/from16 v21, v0

    .line 11997
    .local v21, "verticalScrollbarPosition":I
    if-nez v21, :cond_ff

    .line 11998
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_153

    const/16 v21, 0x1

    .line 12001
    :cond_ff
    :goto_ff
    packed-switch v21, :pswitch_data_15e

    .line 12004
    add-int v2, v15, v23

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .line 12010
    .restart local v5    # "left":I
    :goto_10d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .line 12011
    .restart local v6    # "top":I
    add-int v7, v5, v17

    .line 12012
    .restart local v7    # "right":I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .restart local v8    # "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 12013
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 12014
    if-eqz v14, :cond_c

    .line 12015
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_c

    .line 11929
    .end local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v10    # "drawHorizontalScrollBar":Z
    .end local v11    # "drawVerticalScrollBar":Z
    .end local v12    # "height":I
    .end local v13    # "inside":I
    .end local v15    # "scrollX":I
    .end local v16    # "scrollY":I
    .end local v17    # "size":I
    .end local v21    # "verticalScrollbarPosition":I
    .end local v22    # "viewFlags":I
    .end local v23    # "width":I
    .restart local v19    # "values":[F
    :cond_12f
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2f

    .line 11939
    .end local v19    # "values":[F
    :cond_13d
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_30

    .line 11945
    .restart local v22    # "viewFlags":I
    :cond_146
    const/4 v10, 0x0

    goto/16 :goto_3f

    .line 11947
    .restart local v10    # "drawHorizontalScrollBar":Z
    :cond_149
    const/4 v11, 0x0

    goto/16 :goto_4e

    .line 11959
    .restart local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .restart local v11    # "drawVerticalScrollBar":Z
    .restart local v12    # "height":I
    .restart local v15    # "scrollX":I
    .restart local v16    # "scrollY":I
    .restart local v23    # "width":I
    :cond_14c
    const/4 v13, 0x0

    goto/16 :goto_79

    .line 11975
    .restart local v13    # "inside":I
    .restart local v17    # "size":I
    :cond_14f
    const/16 v20, 0x0

    goto/16 :goto_a1

    .line 11998
    .restart local v21    # "verticalScrollbarPosition":I
    :cond_153
    const/16 v21, 0x2

    goto :goto_ff

    .line 12007
    :pswitch_156
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5    # "left":I
    goto :goto_10d

    .line 12001
    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_156
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 12068
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12069
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12070
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7727
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 7730
    const/4 v0, 0x0

    .line 7732
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 14947
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 7615
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 4811
    if-eqz p1, :cond_46

    .line 4812
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4818
    :goto_8
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4819
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_4a

    .line 4820
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4821
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4823
    :cond_17
    if-eqz v0, :cond_26

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_26

    .line 4825
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 4827
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4833
    :cond_29
    :goto_29
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 4834
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4835
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3a

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_3a

    .line 4836
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 4839
    :cond_3a
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_45

    .line 4840
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 4842
    :cond_45
    return-void

    .line 4814
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "li":Landroid/view/View$ListenerInfo;
    :cond_46
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_8

    .line 4828
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4a
    if-eqz v0, :cond_29

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_29

    .line 4830
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_29
.end method

.method protected onFocusLost()V
    .registers 1

    .prologue
    .line 5583
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 5584
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8440
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .registers 2
    .param p1, "hovered"    # Z

    .prologue
    .line 8605
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8484
    .local v0, "action":I
    iget-boolean v3, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_3a

    .line 8485
    const/16 v3, 0x9

    if-eq v0, v3, :cond_12

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2d

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 8489
    const/16 v3, 0x80

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8490
    iput-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8506
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 8507
    packed-switch v0, :pswitch_data_72

    .line 8523
    :goto_36
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    .line 8529
    :goto_39
    return v1

    .line 8493
    :cond_3a
    const/16 v3, 0xa

    if-eq v0, v3, :cond_4f

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 8496
    :cond_4f
    iput-boolean v2, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8497
    const/16 v3, 0x100

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8500
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v3, :cond_2d

    .line 8501
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_2d

    .line 8509
    :pswitch_68
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_36

    .line 8512
    :pswitch_6c
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_36

    :cond_70
    move v1, v2

    .line 8529
    goto :goto_39

    .line 8507
    :pswitch_data_72
    .packed-switch 0x9
        :pswitch_68
        :pswitch_6c
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5072
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5073
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5077
    :goto_9
    return-void

    .line 5075
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5085
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 5086
    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 5087
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5088
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 5089
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5091
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    sparse-switch v2, :sswitch_data_7a

    .line 5111
    :cond_2a
    :goto_2a
    return-void

    .line 5093
    :sswitch_2b
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_52

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 5095
    .local v0, "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_33
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 5096
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 5097
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 5098
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2a

    .line 5099
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2a

    .line 5093
    .end local v0    # "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_33

    .line 5103
    :sswitch_58
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5104
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2a

    .line 5105
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 5106
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 5107
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_2a

    .line 5091
    :sswitch_data_7a
    .sparse-switch
        0x8 -> :sswitch_2b
        0x2000 -> :sswitch_58
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 5182
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5183
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5187
    :goto_9
    return-void

    .line 5185
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_9
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v9, -0x1

    .line 5240
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5242
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5243
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 5245
    invoke-virtual {p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 5246
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5248
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v3

    .line 5249
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v7, v3, Landroid/view/View;

    if-eqz v7, :cond_1e

    .line 5250
    check-cast v3, Landroid/view/View;

    .end local v3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 5253
    :cond_1e
    iget v7, p0, Landroid/view/View;->mID:I

    if-eq v7, v9, :cond_51

    .line 5254
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 5255
    .local v4, "rootView":Landroid/view/View;
    if-nez v4, :cond_29

    .line 5256
    move-object v4, p0

    .line 5258
    :cond_29
    iget v7, p0, Landroid/view/View;->mID:I

    invoke-direct {v4, p0, v7}, Landroid/view/View;->findLabelForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 5259
    .local v1, "label":Landroid/view/View;
    if-eqz v1, :cond_34

    .line 5260
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    .line 5263
    :cond_34
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_51

    iget v7, p0, Landroid/view/View;->mID:I

    invoke-static {v7}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 5267
    :try_start_44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/view/View;->mID:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 5268
    .local v6, "viewId":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V
    :try_end_51
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_51} :catch_13c

    .line 5275
    .end local v1    # "label":Landroid/view/View;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v6    # "viewId":Ljava/lang/String;
    :cond_51
    :goto_51
    iget v7, p0, Landroid/view/View;->mLabelForId:I

    if-eq v7, v9, :cond_67

    .line 5276
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 5277
    .restart local v4    # "rootView":Landroid/view/View;
    if-nez v4, :cond_5c

    .line 5278
    move-object v4, p0

    .line 5280
    :cond_5c
    iget v7, p0, Landroid/view/View;->mLabelForId:I

    invoke-direct {v4, p0, v7}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 5281
    .local v2, "labeled":Landroid/view/View;
    if-eqz v2, :cond_67

    .line 5282
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 5286
    .end local v2    # "labeled":Landroid/view/View;
    .end local v4    # "rootView":Landroid/view/View;
    :cond_67
    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 5288
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5289
    const-class v7, Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 5290
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5292
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 5293
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 5294
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 5295
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 5296
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 5297
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 5298
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 5299
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 5304
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5305
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5307
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 5308
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_131

    .line 5309
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5315
    :cond_d8
    :goto_d8
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-nez v7, :cond_136

    .line 5316
    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5321
    :goto_e3
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_f4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 5322
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5325
    :cond_f4
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_105

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_105

    .line 5326
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5329
    :cond_105
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 5330
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_130

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_130

    .line 5331
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 5333
    const/high16 v7, 0x20000

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5334
    const/16 v7, 0x100

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5335
    const/16 v7, 0x200

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5336
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 5340
    :cond_130
    return-void

    .line 5311
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_131
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_d8

    .line 5318
    :cond_136
    const/16 v7, 0x80

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_e3

    .line 5269
    .restart local v1    # "label":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :catch_13c
    move-exception v7

    goto/16 :goto_51
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x1

    .line 8187
    const/4 v0, 0x0

    .line 8189
    .local v0, "result":Z
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 8190
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_14

    move v0, v1

    .line 8202
    .end local v0    # "result":Z
    :cond_13
    :goto_13
    return v0

    .line 8194
    .restart local v0    # "result":Z
    :cond_14
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_21

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    :cond_21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_13

    .line 8197
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 8198
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/View;->checkForLongClick(I)V

    move v0, v1

    .line 8199
    goto :goto_13
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8214
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8262
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8169
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8277
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 8231
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8232
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    .line 8233
    const/4 v0, 0x1

    .line 8245
    :cond_10
    :goto_10
    return v0

    .line 8235
    :cond_11
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8236
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8238
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_10

    .line 8240
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8241
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_10
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 14849
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 16571
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16573
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 17557
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5030
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 5031
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5035
    :goto_9
    return-void

    .line 5033
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5043
    return-void
.end method

.method public onResolveDrawables(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 15072
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 12821
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12822
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 12823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12829
    :cond_5c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 12235
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 12763
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12764
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .registers 2
    .param p1, "screenState"    # I

    .prologue
    .line 12194
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v2, 0x1

    .line 9045
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 9046
    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    .line 9049
    :cond_10
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9051
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 9052
    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_18

    .line 9053
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 9055
    :cond_18
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 16871
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 9090
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    .prologue
    .line 7599
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 7600
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7601
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x200000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8625
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8627
    .local v3, "viewFlags":I
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_28

    .line 8628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_1e

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_1e

    .line 8629
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8633
    :cond_1e
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_26

    and-int v8, v3, v10

    if-ne v8, v10, :cond_27

    :cond_26
    move v6, v7

    .line 8748
    :cond_27
    :goto_27
    return v6

    .line 8637
    :cond_28
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v8, :cond_36

    .line 8638
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v8, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_36

    move v6, v7

    .line 8639
    goto :goto_27

    .line 8643
    :cond_36
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_3e

    and-int v8, v3, v10

    if-ne v8, v10, :cond_27

    .line 8645
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_122

    :cond_45
    :goto_45
    move v6, v7

    .line 8745
    goto :goto_27

    .line 8647
    :pswitch_47
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_ad

    move v2, v7

    .line 8648
    .local v2, "prepressed":Z
    :goto_4f
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_57

    if-eqz v2, :cond_45

    .line 8651
    :cond_57
    const/4 v0, 0x0

    .line 8652
    .local v0, "focusTaken":Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 8653
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 8656
    :cond_6e
    if-eqz v2, :cond_73

    .line 8661
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8664
    :cond_73
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_92

    .line 8666
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8669
    if-nez v0, :cond_92

    .line 8673
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_87

    .line 8674
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 8676
    :cond_87
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_92

    .line 8677
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 8682
    :cond_92
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_9d

    .line 8683
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 8686
    :cond_9d
    if-eqz v2, :cond_af

    .line 8687
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8693
    :cond_a9
    :goto_a9
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_45

    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :cond_ad
    move v2, v6

    .line 8647
    goto :goto_4f

    .line 8689
    .restart local v0    # "focusTaken":Z
    .restart local v2    # "prepressed":Z
    :cond_af
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_a9

    .line 8691
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_a9

    .line 8698
    .end local v0    # "focusTaken":Z
    .end local v2    # "prepressed":Z
    :pswitch_bd
    iput-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8700
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 8705
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    .line 8709
    .local v1, "isInScrollingContainer":Z
    if-eqz v1, :cond_e9

    .line 8710
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x2000000

    or-int/2addr v6, v8

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8711
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_dd

    .line 8712
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 8714
    :cond_dd
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_45

    .line 8717
    :cond_e9
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8718
    invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V

    goto/16 :goto_45

    .line 8723
    .end local v1    # "isInScrollingContainer":Z
    :pswitch_f1
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8724
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8725
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto/16 :goto_45

    .line 8729
    :pswitch_fc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 8730
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 8733
    .local v5, "y":I
    int-to-float v8, v4

    int-to-float v9, v5

    iget v10, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v10, v10

    invoke-virtual {p0, v8, v9, v10}, Landroid/view/View;->pointInView(FFF)Z

    move-result v8

    if-nez v8, :cond_45

    .line 8735
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8736
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_45

    .line 8738
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8740
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_45

    .line 8645
    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_47
        :pswitch_fc
        :pswitch_f1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8399
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 7961
    if-nez p2, :cond_9

    .line 7962
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_a

    .line 7963
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 7968
    :cond_9
    :goto_9
    return-void

    .line 7965
    :cond_a
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 7914
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7915
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_28

    .line 7916
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7917
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7919
    :cond_10
    if-eqz v0, :cond_1b

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 7920
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 7922
    :cond_1b
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 7923
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 7924
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 7928
    :cond_24
    :goto_24
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7929
    return-void

    .line 7925
    :cond_28
    if-eqz v0, :cond_24

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    .line 7926
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_24
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 2
    .param p1, "visible"    # I

    .prologue
    .line 17056
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 8018
    if-nez p1, :cond_5

    .line 8019
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 8021
    :cond_5
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "clear"    # Z
    .param p3, "clearMask"    # I

    .prologue
    .line 13223
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13227
    if-eqz p2, :cond_65

    .line 13228
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13230
    :cond_65
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_90

    move-object v3, p0

    .line 13231
    check-cast v3, Landroid/view/ViewGroup;

    .line 13232
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 13233
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_71
    if-ge v2, v1, :cond_90

    .line 13234
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13235
    .local v0, "child":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 13233
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 13238
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_90
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 26
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 17496
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mOverScrollMode:I

    .line 17497
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_55

    const/4 v2, 0x1

    .line 17499
    .local v2, "canScrollHorizontal":Z
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_57

    const/4 v3, 0x1

    .line 17501
    .local v3, "canScrollVertical":Z
    :goto_1a
    if-eqz v10, :cond_21

    const/4 v14, 0x1

    if-ne v10, v14, :cond_59

    if-eqz v2, :cond_59

    :cond_21
    const/4 v9, 0x1

    .line 17503
    .local v9, "overScrollHorizontal":Z
    :goto_22
    if-eqz v10, :cond_29

    const/4 v14, 0x1

    if-ne v10, v14, :cond_5b

    if-eqz v3, :cond_5b

    :cond_29
    const/4 v11, 0x1

    .line 17506
    .local v11, "overScrollVertical":Z
    :goto_2a
    add-int v7, p3, p1

    .line 17507
    .local v7, "newScrollX":I
    if-nez v9, :cond_30

    .line 17508
    const/16 p7, 0x0

    .line 17511
    :cond_30
    add-int v8, p4, p2

    .line 17512
    .local v8, "newScrollY":I
    if-nez v11, :cond_36

    .line 17513
    const/16 p8, 0x0

    .line 17517
    :cond_36
    move/from16 v0, p7

    neg-int v6, v0

    .line 17518
    .local v6, "left":I
    add-int v12, p7, p5

    .line 17519
    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .line 17520
    .local v13, "top":I
    add-int v1, p8, p6

    .line 17522
    .local v1, "bottom":I
    const/4 v4, 0x0

    .line 17523
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_5d

    .line 17524
    move v7, v12

    .line 17525
    const/4 v4, 0x1

    .line 17531
    :cond_45
    :goto_45
    const/4 v5, 0x0

    .line 17532
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_62

    .line 17533
    move v8, v1

    .line 17534
    const/4 v5, 0x1

    .line 17540
    :cond_4a
    :goto_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 17542
    if-nez v4, :cond_53

    if-eqz v5, :cond_67

    :cond_53
    const/4 v14, 0x1

    :goto_54
    return v14

    .line 17497
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_55
    const/4 v2, 0x0

    goto :goto_f

    .line 17499
    .restart local v2    # "canScrollHorizontal":Z
    :cond_57
    const/4 v3, 0x0

    goto :goto_1a

    .line 17501
    .restart local v3    # "canScrollVertical":Z
    :cond_59
    const/4 v9, 0x0

    goto :goto_22

    .line 17503
    .restart local v9    # "overScrollHorizontal":Z
    :cond_5b
    const/4 v11, 0x0

    goto :goto_2a

    .line 17526
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_5d
    if-ge v7, v6, :cond_45

    .line 17527
    move v7, v6

    .line 17528
    const/4 v4, 0x1

    goto :goto_45

    .line 17535
    .restart local v5    # "clampedY":Z
    :cond_62
    if-ge v8, v13, :cond_4a

    .line 17536
    move v8, v13

    .line 17537
    const/4 v5, 0x1

    goto :goto_4a

    .line 17542
    :cond_67
    const/4 v14, 0x0

    goto :goto_54
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 7336
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 7337
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 7339
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_a
.end method

.method performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7349
    sparse-switch p1, :sswitch_data_cc

    :cond_6
    move v5, v6

    .line 7437
    :cond_7
    :goto_7
    return v5

    .line 7351
    :sswitch_8
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7352
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_7

    .line 7357
    :sswitch_12
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7358
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_7

    .line 7363
    :sswitch_1c
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_6

    .line 7366
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 7367
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v5

    goto :goto_7

    .line 7371
    :sswitch_2e
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7372
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 7373
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    goto :goto_7

    .line 7377
    :sswitch_3f
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-nez v7, :cond_6

    .line 7378
    invoke-virtual {p0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 7379
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v5

    goto :goto_7

    .line 7383
    :sswitch_4d
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7384
    invoke-virtual {p0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 7385
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    goto :goto_7

    .line 7389
    :sswitch_5e
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v5

    if-nez v5, :cond_6

    .line 7390
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result v5

    goto :goto_7

    .line 7394
    :sswitch_69
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7395
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_7

    .line 7400
    :sswitch_73
    if-eqz p2, :cond_6

    .line 7401
    const-string v6, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7403
    .local v2, "granularity":I
    const-string v6, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 7405
    .local v1, "extendSelection":Z
    invoke-direct {p0, v2, v5, v1}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result v5

    goto :goto_7

    .line 7409
    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_86
    if-eqz p2, :cond_6

    .line 7410
    const-string v5, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7412
    .restart local v2    # "granularity":I
    const-string v5, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 7414
    .restart local v1    # "extendSelection":Z
    invoke-direct {p0, v2, v6, v1}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result v5

    goto/16 :goto_7

    .line 7418
    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_9a
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .line 7419
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_a3

    move v5, v6

    .line 7420
    goto/16 :goto_7

    .line 7422
    :cond_a3
    if-eqz p2, :cond_c9

    const-string v7, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7424
    .local v3, "start":I
    :goto_ab
    if-eqz p2, :cond_b3

    const-string v7, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7427
    .local v0, "end":I
    :cond_b3
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v7

    if-ne v7, v3, :cond_bf

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v7

    if-eq v7, v0, :cond_6

    :cond_bf
    if-ne v3, v0, :cond_6

    .line 7430
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setAccessibilitySelection(II)V

    .line 7431
    invoke-virtual {p0, v6}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_7

    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_c9
    move v3, v0

    .line 7422
    goto :goto_ab

    .line 7349
    nop

    :sswitch_data_cc
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_2e
        0x4 -> :sswitch_3f
        0x8 -> :sswitch_4d
        0x10 -> :sswitch_8
        0x20 -> :sswitch_12
        0x40 -> :sswitch_5e
        0x80 -> :sswitch_69
        0x100 -> :sswitch_73
        0x200 -> :sswitch_86
        0x20000 -> :sswitch_9a
    .end sparse-switch
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    .line 4495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4496
    const/4 v0, 0x1

    .line 4499
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public performClick()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4433
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4435
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4436
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_16

    iget-object v3, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_16

    .line 4437
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 4438
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4442
    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .registers 7
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    .line 8107
    and-int/lit8 v1, p2, 0xc

    if-nez v1, :cond_21

    .line 8108
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    .line 8109
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 8111
    :cond_e
    iget v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 8112
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 8113
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_21

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 8114
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 8117
    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_21
    return-void
.end method

.method public performHapticFeedback(I)Z
    .registers 3
    .param p1, "feedbackConstant"    # I

    .prologue
    .line 16945
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .registers 6
    .param p1, "feedbackConstant"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 16958
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_6

    .line 16966
    :cond_5
    :goto_5
    return v0

    .line 16962
    :cond_6
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16966
    :cond_10
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_5
.end method

.method public performLongClick()Z
    .registers 4

    .prologue
    .line 4469
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4471
    const/4 v0, 0x0

    .line 4472
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4473
    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_13

    .line 4474
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 4476
    :cond_13
    if-nez v0, :cond_19

    .line 4477
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 4479
    :cond_19
    if-eqz v0, :cond_1f

    .line 4480
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4482
    :cond_1f
    return v0
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "soundConstant"    # I

    .prologue
    .line 16923
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 16927
    :cond_10
    :goto_10
    return-void

    .line 16926
    :cond_11
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_10
.end method

.method final pointInView(FF)Z
    .registers 6
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 10369
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1f

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_1f

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public pointInView(FFF)Z
    .registers 6
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 10382
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_22

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_22

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_22

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 11112
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11113
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 11114
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 11118
    :goto_a
    return v1

    .line 11117
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 11118
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 11141
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11142
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_b

    .line 11143
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 11147
    :goto_a
    return v1

    .line 11146
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11147
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public postInvalidate()V
    .registers 3

    .prologue
    .line 11234
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 11235
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 11254
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 11255
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .registers 5
    .param p1, "delayMilliseconds"    # J

    .prologue
    .line 11273
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11274
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_9

    .line 11275
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateDelayed(Landroid/view/View;J)V

    .line 11277
    :cond_9
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .registers 10
    .param p1, "delayMilliseconds"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 11302
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11303
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 11304
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 11305
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 11306
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 11307
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 11308
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 11309
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 11311
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V

    .line 11313
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_17
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .registers 3

    .prologue
    .line 11327
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11328
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_9

    .line 11329
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->dispatchInvalidateOnAnimation(Landroid/view/View;)V

    .line 11331
    :cond_9
    return-void
.end method

.method public postInvalidateOnAnimation(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 11351
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11352
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_17

    .line 11353
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 11354
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 11355
    iput p1, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 11356
    iput p2, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 11357
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 11358
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 11360
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 11362
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_17
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 11160
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11161
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_e

    .line 11162
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 11168
    :goto_d
    return-void

    .line 11166
    :cond_e
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    .registers 11
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 11183
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11184
    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_10

    .line 11185
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 11191
    :goto_f
    return-void

    .line 11189
    :cond_10
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_f
.end method

.method protected recomputePadding()V
    .registers 5

    .prologue
    .line 11585
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 11586
    return-void
.end method

.method public refreshDrawableState()V
    .registers 3

    .prologue
    .line 15133
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15134
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 15136
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15137
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 15138
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 15140
    :cond_10
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 6
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 11209
    if-eqz p1, :cond_14

    .line 11210
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11211
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_15

    .line 11212
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11213
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 11220
    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_14
    :goto_14
    return v3

    .line 11217
    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_15
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 4354
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4355
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    .line 4359
    :cond_a
    :goto_a
    return-void

    .line 4358
    :cond_b
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 4320
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4321
    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_a

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    .line 4325
    :cond_a
    :goto_a
    return-void

    .line 4324
    :cond_b
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public requestAccessibilityFocus()Z
    .registers 6

    .prologue
    const/high16 v4, 0x4000000

    const/4 v2, 0x0

    .line 6827
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 6828
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_16

    .line 6844
    :cond_15
    :goto_15
    return v2

    .line 6831
    :cond_16
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_15

    .line 6834
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v3, v4

    if-nez v3, :cond_15

    .line 6835
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6836
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6837
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_30

    .line 6838
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6840
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6841
    const v2, 0x8000

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6842
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public requestFitSystemWindows()V
    .registers 2

    .prologue
    .line 6000
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_9

    .line 6001
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    .line 6003
    :cond_9
    return-void
.end method

.method public final requestFocus()Z
    .registers 2

    .prologue
    .line 6924
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 6945
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 6978
    invoke-direct {p0, p1, p2}, Landroid/view/View;->requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final requestFocusFromTouch()Z
    .registers 3

    .prologue
    .line 7015
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7016
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 7017
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_10

    .line 7018
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 7021
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_10
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .registers 4

    .prologue
    .line 16413
    iget-object v1, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clear()V

    .line 16415
    :cond_9
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-nez v1, :cond_2a

    .line 16418
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 16419
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 16420
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->requestLayoutDuringLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 16436
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_25
    :goto_25
    return-void

    .line 16424
    .restart local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_26
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p0, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    .line 16427
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2a
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16428
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16430
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_48

    .line 16431
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 16433
    :cond_48
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-ne v1, p0, :cond_25

    .line 16434
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    goto :goto_25
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 4634
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .registers 12
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    .line 4653
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_6

    .line 4654
    const/4 v4, 0x0

    .line 4689
    :cond_5
    return v4

    .line 4657
    :cond_6
    move-object v0, p0

    .line 4659
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_5d

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4660
    .local v3, "position":Landroid/graphics/RectF;
    :goto_f
    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4662
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4663
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 4664
    .local v4, "scrolled":Z
    :goto_15
    if-eqz v1, :cond_5

    .line 4665
    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 4668
    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v4, v5

    .line 4671
    invoke-virtual {v0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v5

    if-nez v5, :cond_38

    .line 4672
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4675
    :cond_38
    iget v5, v0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    iget v6, v0, Landroid/view/View;->mTop:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 4677
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_5

    move-object v2, v1

    .line 4681
    check-cast v2, Landroid/view/View;

    .line 4683
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 4685
    move-object v0, v2

    .line 4686
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4687
    goto :goto_15

    .line 4659
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "parentView":Landroid/view/View;
    .end local v3    # "position":Landroid/graphics/RectF;
    .end local v4    # "scrolled":Z
    :cond_5d
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_f
.end method

.method public resetPaddingToInitialValues()V
    .registers 2

    .prologue
    .line 15672
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 15673
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15674
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 15684
    :goto_e
    return-void

    .line 15677
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 15678
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_26

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    :goto_1b
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15679
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_29

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    :goto_23
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_e

    .line 15678
    :cond_26
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    goto :goto_1b

    .line 15679
    :cond_29
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    goto :goto_23

    .line 15681
    :cond_2c
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_3d

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    :goto_32
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 15682
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_40

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    :goto_3a
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_e

    .line 15681
    :cond_3d
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    goto :goto_32

    .line 15682
    :cond_40
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    goto :goto_3a
.end method

.method protected resetResolvedDrawables()V
    .registers 3

    .prologue
    .line 15078
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 15079
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .registers 2

    .prologue
    .line 12320
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12321
    return-void
.end method

.method public resetResolvedPadding()V
    .registers 3

    .prologue
    .line 12418
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12419
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .registers 3

    .prologue
    .line 18060
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18062
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18063
    return-void
.end method

.method public resetResolvedTextDirection()V
    .registers 2

    .prologue
    .line 17825
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1e01

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17827
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17828
    return-void
.end method

.method public resetRtlProperties()V
    .registers 1

    .prologue
    .line 12170
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 12171
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 12172
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 12173
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 12174
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 12175
    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .registers 3

    .prologue
    .line 7318
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7319
    return-void
.end method

.method protected resolveDrawables()V
    .registers 4

    .prologue
    .line 15044
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 15057
    :goto_d
    return-void

    .line 15049
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 15052
    .local v0, "layoutDirection":I
    :goto_18
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_21

    .line 15053
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 15055
    :cond_21
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 15056
    invoke-virtual {p0, v0}, Landroid/view/View;->onResolveDrawables(I)V

    goto :goto_d

    .line 15049
    .end local v0    # "layoutDirection":I
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    goto :goto_18
.end method

.method public resolveLayoutDirection()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 12247
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v3, v3, -0x31

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12249
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 12251
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v3, v3, 0xc

    shr-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_78

    .line 12285
    :cond_17
    :goto_17
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    move v1, v2

    .line 12286
    :cond_1e
    return v1

    .line 12256
    :pswitch_1f
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 12260
    :try_start_25
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->isLayoutDirectionResolved()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 12262
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_17

    .line 12263
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_3b
    .catch Ljava/lang/AbstractMethodError; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_17

    .line 12265
    :catch_3c
    move-exception v0

    .line 12266
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 12271
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_60
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_17

    .line 12274
    :pswitch_67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_17

    .line 12276
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_17

    .line 12251
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_60
        :pswitch_1f
        :pswitch_67
    .end packed-switch
.end method

.method public resolveLayoutParams()V
    .registers 3

    .prologue
    .line 10587
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_d

    .line 10588
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->resolveLayoutDirection(I)V

    .line 10590
    :cond_d
    return-void
.end method

.method public resolvePadding()V
    .registers 7

    .prologue
    const/high16 v3, -0x80000000

    .line 12355
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 12357
    .local v1, "resolvedLayoutDirection":I
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 12362
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_41

    iget-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-eqz v2, :cond_18

    iget-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v2, :cond_41

    .line 12363
    :cond_18
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 12364
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_2c

    .line 12365
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12366
    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 12368
    :cond_2c
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12369
    iget-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-nez v2, :cond_39

    .line 12370
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 12372
    :cond_39
    iget-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v2, :cond_41

    .line 12373
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 12376
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_41
    packed-switch v1, :pswitch_data_9a

    .line 12391
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v2, v3, :cond_8d

    .line 12392
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 12396
    :goto_4c
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v2, v3, :cond_92

    .line 12397
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 12403
    :goto_54
    iget v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v2, :cond_97

    iget v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    :goto_5a
    iput v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 12406
    :cond_5c
    iget v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v5, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 12407
    invoke-virtual {p0, v1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 12409
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12410
    return-void

    .line 12378
    :pswitch_72
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v2, v3, :cond_83

    .line 12379
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 12383
    :goto_7a
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v2, v3, :cond_88

    .line 12384
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_54

    .line 12381
    :cond_83
    iget v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_7a

    .line 12386
    :cond_88
    iget v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_54

    .line 12394
    :cond_8d
    iget v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_4c

    .line 12399
    :cond_92
    iget v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_54

    .line 12403
    :cond_97
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_5a

    .line 12376
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_72
    .end packed-switch
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .registers 2

    .prologue
    .line 12138
    invoke-direct {p0}, Landroid/view/View;->needRtlPropertiesResolution()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 12161
    :goto_7
    return v0

    .line 12141
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_14

    .line 12142
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 12143
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 12146
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->isTextDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 12147
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    .line 12149
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->isTextAlignmentResolved()Z

    move-result v0

    if-nez v0, :cond_26

    .line 12150
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 12154
    :cond_26
    invoke-direct {p0}, Landroid/view/View;->isDrawablesResolved()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 12155
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 12157
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_38

    .line 12158
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 12160
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 12161
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public resolveTextAlignment()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v7, 0x20000

    .line 17951
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    const v6, -0xf0001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17953
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 17955
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v2

    .line 17956
    .local v2, "textAlignment":I
    packed-switch v2, :pswitch_data_ba

    .line 18017
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 18025
    .end local v2    # "textAlignment":I
    :goto_1e
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 18026
    :goto_26
    return v3

    .line 17959
    .restart local v2    # "textAlignment":I
    :pswitch_27
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextAlignment()Z

    move-result v5

    if-nez v5, :cond_33

    .line 17961
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_26

    .line 17968
    :cond_33
    :try_start_33
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextAlignmentResolved()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 17969
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_40
    .catch Ljava/lang/AbstractMethodError; {:try_start_33 .. :try_end_40} :catch_41

    goto :goto_26

    .line 17973
    :catch_41
    move-exception v0

    .line 17974
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17976
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x30000

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 17978
    goto :goto_26

    .line 17983
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_6d
    :try_start_6d
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextAlignment()I
    :try_end_72
    .catch Ljava/lang/AbstractMethodError; {:try_start_6d .. :try_end_72} :catch_7c

    move-result v1

    .line 17989
    .local v1, "parentResolvedTextAlignment":I
    :goto_73
    packed-switch v1, :pswitch_data_cc

    .line 18003
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1e

    .line 17984
    .end local v1    # "parentResolvedTextAlignment":I
    :catch_7c
    move-exception v0

    .line 17985
    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17987
    const/4 v1, 0x1

    .restart local v1    # "parentResolvedTextAlignment":I
    goto :goto_73

    .line 17998
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_a1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0x11

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1e

    .line 18013
    .end local v1    # "parentResolvedTextAlignment":I
    :pswitch_aa
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0x11

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1e

    .line 18021
    .end local v2    # "textAlignment":I
    :cond_b3
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1e

    .line 17956
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_27
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch

    .line 17989
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
    .end packed-switch
.end method

.method public resolveTextDirection()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17720
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v5, v5, -0x1e01

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17722
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 17724
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v2

    .line 17725
    .local v2, "textDirection":I
    packed-switch v2, :pswitch_data_ba

    .line 17782
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17790
    .end local v2    # "textDirection":I
    :goto_1b
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 17791
    :goto_22
    return v3

    .line 17727
    .restart local v2    # "textDirection":I
    :pswitch_23
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextDirection()Z

    move-result v5

    if-nez v5, :cond_30

    .line 17729
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_22

    .line 17736
    :cond_30
    :try_start_30
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextDirectionResolved()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 17737
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_3e
    .catch Ljava/lang/AbstractMethodError; {:try_start_30 .. :try_end_3e} :catch_3f

    goto :goto_22

    .line 17741
    :catch_3f
    move-exception v0

    .line 17742
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17744
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x600

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    .line 17746
    goto :goto_22

    .line 17752
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_6a
    :try_start_6a
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextDirection()I
    :try_end_6f
    .catch Ljava/lang/AbstractMethodError; {:try_start_6a .. :try_end_6f} :catch_7a

    move-result v1

    .line 17758
    .local v1, "parentResolvedDirection":I
    :goto_70
    packed-switch v1, :pswitch_data_ca

    .line 17769
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1b

    .line 17753
    .end local v1    # "parentResolvedDirection":I
    :catch_7a
    move-exception v0

    .line 17754
    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17756
    const/4 v1, 0x3

    .restart local v1    # "parentResolvedDirection":I
    goto :goto_70

    .line 17764
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_9f
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0xa

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1b

    .line 17778
    .end local v1    # "parentResolvedDirection":I
    :pswitch_a8
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0xa

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1b

    .line 17786
    .end local v2    # "textDirection":I
    :cond_b1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1b

    .line 17725
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_23
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
    .end packed-switch

    .line 17758
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
    .end packed-switch
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12777
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 12778
    return-void
.end method

.method rootViewRequestFocus()Z
    .registers 3

    .prologue
    .line 4745
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4746
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12711
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 12712
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 13
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 14983
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p2, :cond_22

    .line 14984
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, p3, v0

    .line 14985
    .local v6, "delay":J
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_23

    .line 14986
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v6, v7}, Landroid/view/Choreographer;->subtractFrameDelay(J)J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 14993
    .end local v6    # "delay":J
    :cond_22
    :goto_22
    return-void

    .line 14990
    .restart local v6    # "delay":J
    :cond_23
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2, v6, v7}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_22
.end method

.method public scrollBy(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 10621
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 10622
    return-void
.end method

.method public scrollTo(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 10600
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_8

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_23

    .line 10601
    :cond_8
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 10602
    .local v0, "oldX":I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 10603
    .local v1, "oldY":I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 10604
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 10605
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10606
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10607
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_23

    .line 10608
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10611
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_23
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 4873
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4881
    :goto_6
    return-void

    .line 4876
    :cond_7
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_11

    .line 4877
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_6

    .line 4879
    :cond_11
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_6
.end method

.method sendAccessibilityEventInternal(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 4909
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4910
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4912
    :cond_13
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4930
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_a

    .line 4931
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4935
    :goto_9
    return-void

    .line 4933
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9
.end method

.method sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4943
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4953
    :goto_6
    return-void

    .line 4946
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4948
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x2a1bf

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 4949
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4952
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_6
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 5437
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 5438
    return-void
.end method

.method public setAccessibilityLiveRegion(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 7095
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 7096
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x1800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7097
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x17

    const/high16 v2, 0x1800000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7099
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7102
    :cond_1c
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7518
    if-ne p1, p2, :cond_7

    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    if-ne p2, v0, :cond_7

    .line 7527
    :goto_6
    return-void

    .line 7521
    :cond_7
    if-ltz p1, :cond_1d

    if-ne p1, p2, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1d

    .line 7522
    iput p1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 7526
    :goto_17
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_6

    .line 7524
    :cond_1d
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    goto :goto_17
.end method

.method public setActivated(Z)V
    .registers 7
    .param p1, "activated"    # Z

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 15752
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_21

    move v2, v3

    :goto_a
    if-eq v2, p1, :cond_20

    .line 15753
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v2, v4

    if-eqz p1, :cond_23

    :goto_14
    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15754
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 15755
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 15756
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    .line 15758
    :cond_20
    return-void

    :cond_21
    move v2, v1

    .line 15752
    goto :goto_a

    :cond_23
    move v0, v1

    .line 15753
    goto :goto_14
.end method

.method public setAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 9855
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9856
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_27

    .line 9857
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 9858
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 9859
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9861
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 9862
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 9871
    :cond_27
    :goto_27
    return-void

    .line 9864
    :cond_28
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9865
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9866
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_27

    .line 9867
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_27
.end method

.method setAlphaNoInvalidation(F)Z
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    .line 9884
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9885
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_37

    .line 9886
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 9887
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .line 9888
    .local v0, "subclassHandlesAlpha":Z
    if-eqz v0, :cond_22

    .line 9889
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9890
    const/4 v1, 0x1

    .line 9898
    .end local v0    # "subclassHandlesAlpha":Z
    :goto_21
    return v1

    .line 9892
    .restart local v0    # "subclassHandlesAlpha":Z
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9893
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_37

    .line 9894
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 9898
    .end local v0    # "subclassHandlesAlpha":Z
    :cond_37
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 16821
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 16823
    if-eqz p1, :cond_22

    .line 16827
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 16829
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 16831
    :cond_1f
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 16833
    :cond_22
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15322
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15323
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 15279
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_18

    .line 15280
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 15281
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 15282
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mBackgroundResource:I

    .line 15286
    :goto_17
    return-void

    .line 15284
    :cond_18
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 15330
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 15332
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_b

    .line 15428
    :goto_a
    return-void

    .line 15336
    :cond_b
    const/4 v1, 0x0

    .line 15338
    .local v1, "requestLayout":Z
    iput v4, p0, Landroid/view/View;->mBackgroundResource:I

    .line 15344
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1c

    .line 15345
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15346
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15349
    :cond_1c
    if-eqz p1, :cond_d4

    .line 15350
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 15351
    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_32

    .line 15352
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15353
    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15355
    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 15356
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 15357
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 15358
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 15359
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    packed-switch v2, :pswitch_data_ea

    .line 15367
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15368
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15369
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 15371
    :goto_5f
    iput-boolean v4, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 15372
    iput-boolean v4, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 15377
    :cond_63
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7f

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_7f

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_80

    .line 15379
    :cond_7f
    const/4 v1, 0x1

    .line 15382
    :cond_80
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15383
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 15384
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15386
    :cond_90
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d2

    move v2, v3

    :goto_97
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 15387
    iput-object p1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15389
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_af

    .line 15390
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15391
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15392
    const/4 v1, 0x1

    .line 15420
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_af
    :goto_af
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 15422
    if-eqz v1, :cond_b7

    .line 15423
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15426
    :cond_b7
    iput-boolean v3, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 15427
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_a

    .line 15361
    .restart local v0    # "padding":Landroid/graphics/Rect;
    :pswitch_be
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15362
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15363
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_5f

    :cond_d2
    move v2, v4

    .line 15386
    goto :goto_97

    .line 15396
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_d4
    iput-object v5, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 15398
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_e8

    .line 15404
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15405
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15417
    :cond_e8
    const/4 v1, 0x1

    goto :goto_af

    .line 15359
    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_be
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 15297
    if-eqz p1, :cond_7

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_7

    .line 15308
    :goto_6
    return-void

    .line 15301
    :cond_7
    const/4 v0, 0x0

    .line 15302
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_10

    .line 15303
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15305
    :cond_10
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15307
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_6
.end method

.method public final setBottom(I)V
    .registers 11
    .param p1, "bottom"    # I

    .prologue
    const/high16 v8, 0x10000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 10040
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v6, :cond_74

    .line 10041
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10042
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_17

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_75

    :cond_17
    move v0, v5

    .line 10044
    .local v0, "matrixIsIdentity":Z
    :goto_18
    if-eqz v0, :cond_79

    .line 10045
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_30

    .line 10047
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v6, :cond_77

    .line 10048
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 10052
    .local v1, "maxBottom":I
    :goto_24
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 10059
    .end local v1    # "maxBottom":I
    :cond_30
    :goto_30
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 10060
    .local v3, "width":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v4, v6

    .line 10062
    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 10063
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_49

    .line 10064
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setBottom(I)V

    .line 10067
    :cond_49
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v6

    invoke-direct {p0, v3, v4, v3, v2}, Landroid/view/View;->sizeChange(IIII)V

    .line 10069
    if-nez v0, :cond_67

    .line 10070
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-nez v4, :cond_5e

    .line 10072
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10074
    :cond_5e
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10075
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 10077
    :cond_67
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10078
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10079
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_74

    .line 10081
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10084
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_74
    return-void

    :cond_75
    move v0, v4

    .line 10042
    goto :goto_18

    .line 10050
    .restart local v0    # "matrixIsIdentity":Z
    :cond_77
    move v1, p1

    .restart local v1    # "maxBottom":I
    goto :goto_24

    .line 10056
    .end local v1    # "maxBottom":I
    :cond_79
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_30
.end method

.method public setCameraDistance(F)V
    .registers 10
    .param p1, "distance"    # F

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 9429
    invoke-virtual {p0, v6, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9431
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9432
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 9433
    .local v0, "dpi":F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9434
    .local v1, "info":Landroid/view/View$TransformationInfo;
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 9435
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9436
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9439
    :cond_2c
    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v5, v5, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 9440
    iput-boolean v6, v1, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9442
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9443
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_4d

    .line 9444
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 9446
    :cond_4d
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_55

    .line 9448
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9450
    :cond_55
    return-void
.end method

.method public setClickable(Z)V
    .registers 4
    .param p1, "clickable"    # Z

    .prologue
    const/16 v1, 0x4000

    .line 6409
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6410
    return-void

    .line 6409
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 13913
    if-eqz p1, :cond_4b

    .line 13914
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 13933
    :cond_a
    :goto_a
    return-void

    .line 13917
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1a

    .line 13918
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13919
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    goto :goto_a

    .line 13921
    :cond_1a
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 13925
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 13928
    :cond_4b
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 13929
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13930
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    goto :goto_a
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5525
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    .line 5526
    if-nez p1, :cond_10

    .line 5541
    :cond_7
    :goto_7
    return-void

    .line 5529
    :cond_8
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5532
    :cond_10
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 5533
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2a

    move v0, v1

    .line 5534
    .local v0, "nonEmptyDesc":Z
    :goto_1b
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2c

    .line 5535
    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5536
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_7

    .line 5533
    .end local v0    # "nonEmptyDesc":Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1b

    .line 5538
    .restart local v0    # "nonEmptyDesc":Z
    :cond_2c
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_7
.end method

.method public setDisabledSystemUiVisibility(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 17100
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_17

    .line 17101
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    if-eq v0, p1, :cond_17

    .line 17102
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    .line 17103
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_17

    .line 17104
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 17108
    :cond_17
    return-void
.end method

.method setDisplayListProperties(Landroid/view/DisplayList;)V
    .registers 16
    .param p1, "displayList"    # Landroid/view/DisplayList;

    .prologue
    const/high16 v13, 0x20000000

    const/high16 v5, 0x3f800000    # 1.0f

    .line 14012
    if-eqz p1, :cond_da

    .line 14013
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 14014
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setHasOverlappingRendering(Z)V

    .line 14015
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    .line 14016
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_db

    const/4 v0, 0x1

    :goto_29
    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    .line 14019
    :cond_2c
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14020
    .local v1, "alpha":F
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_65

    .line 14022
    iget-object v10, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v10, Landroid/view/ViewGroup;

    .line 14023
    .local v10, "parentVG":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v11

    .line 14024
    .local v11, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v10, p0, v11}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 14025
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v12

    .line 14026
    .local v12, "transformType":I
    if-eqz v12, :cond_65

    .line 14027
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_5a

    .line 14028
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    .line 14030
    :cond_5a
    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_65

    .line 14031
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setMatrix(Landroid/graphics/Matrix;)V

    .line 14036
    .end local v10    # "parentVG":Landroid/view/ViewGroup;
    .end local v11    # "t":Landroid/view/animation/Transformation;
    .end local v12    # "transformType":I
    :cond_65
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_de

    .line 14037
    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    mul-float/2addr v1, v0

    .line 14038
    cmpg-float v0, v1, v5

    if-gez v0, :cond_7e

    .line 14039
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 14040
    .local v9, "multipliedAlpha":I
    invoke-virtual {p0, v9}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 14041
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14044
    .end local v9    # "multipliedAlpha":I
    :cond_7e
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v5, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v6, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v7, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v8, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/view/DisplayList;->setTransformationInfo(FFFFFFFF)V

    .line 14049
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    if-nez v0, :cond_ba

    .line 14050
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 14051
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 14053
    :cond_ba
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 14054
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v13

    if-ne v0, v13, :cond_da

    .line 14055
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 14056
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 14062
    .end local v1    # "alpha":F
    :cond_da
    :goto_da
    return-void

    .line 14016
    :cond_db
    const/4 v0, 0x0

    goto/16 :goto_29

    .line 14058
    .restart local v1    # "alpha":F
    :cond_de
    cmpg-float v0, v1, v5

    if-gez v0, :cond_da

    .line 14059
    invoke-virtual {p1, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_da
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 13501
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_e

    .line 13502
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 13503
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13505
    :cond_e
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 13198
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    .line 13199
    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 13200
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .registers 3
    .param p1, "quality"    # I

    .prologue
    .line 5688
    const/high16 v0, 0x180000

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 5689
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 12862
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 12863
    return-void

    .line 12862
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 6059
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_9

    .line 6076
    :cond_8
    :goto_8
    return-void

    .line 6061
    :cond_9
    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6067
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6071
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 6073
    if-nez p1, :cond_8

    .line 6074
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_8

    :cond_1c
    move v0, v1

    .line 6061
    goto :goto_c
.end method

.method public setFadingEdgeLength(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 4095
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4096
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 4097
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x400

    .line 6546
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6548
    return-void

    .line 6546
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setFitsSystemWindows(Z)V
    .registers 4
    .param p1, "fitSystemWindows"    # Z

    .prologue
    const/4 v1, 0x2

    .line 5971
    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5972
    return-void

    .line 5971
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method setFlags(II)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const v10, -0x8001

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 8852
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 8854
    .local v0, "accessibilityEnabled":Z
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v6

    if-eqz v6, :cond_2b

    move v4, v7

    .line 8856
    .local v4, "oldIncludeForAccessibility":Z
    :goto_18
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8857
    .local v3, "old":I
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v9, p2, -0x1

    and-int/2addr v6, v9

    and-int v9, p1, p2

    or-int/2addr v6, v9

    iput v6, p0, Landroid/view/View;->mViewFlags:I

    .line 8859
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    xor-int v1, v6, v3

    .line 8860
    .local v1, "changed":I
    if-nez v1, :cond_2d

    .line 9014
    :cond_2a
    :goto_2a
    return-void

    .end local v1    # "changed":I
    .end local v3    # "old":I
    .end local v4    # "oldIncludeForAccessibility":Z
    :cond_2b
    move v4, v8

    .line 8854
    goto :goto_18

    .line 8863
    .restart local v1    # "changed":I
    .restart local v3    # "old":I
    .restart local v4    # "oldIncludeForAccessibility":Z
    :cond_2d
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8866
    .local v5, "privateFlags":I
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_42

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_42

    .line 8868
    and-int/lit8 v6, v3, 0x1

    if-ne v6, v7, :cond_173

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_173

    .line 8871
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8882
    :cond_42
    :goto_42
    and-int/lit8 v2, p1, 0xc

    .line 8883
    .local v2, "newVisibility":I
    if-nez v2, :cond_6b

    .line 8884
    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_6b

    .line 8890
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8891
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 8893
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8899
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_6b

    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    if-le v6, v9, :cond_6b

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    if-le v6, v9, :cond_6b

    .line 8900
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 8906
    :cond_6b
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_a7

    .line 8907
    invoke-virtual {p0, v8}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8908
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8910
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v9, 0x8

    if-ne v6, v9, :cond_9f

    .line 8911
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8912
    :cond_86
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8913
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8914
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_99

    .line 8916
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    .line 8920
    :cond_99
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8922
    :cond_9f
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_a7

    .line 8923
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 8928
    :cond_a7
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_d5

    .line 8929
    invoke-virtual {p0, v8}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8934
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8936
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/4 v9, 0x4

    if-ne v6, v9, :cond_cd

    .line 8938
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    if-eq v6, p0, :cond_cd

    .line 8939
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8940
    :cond_ca
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8943
    :cond_cd
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_d5

    .line 8944
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 8948
    :cond_d5
    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_f7

    .line 8950
    if-eqz v2, :cond_de

    .line 8951
    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    .line 8954
    :cond_de
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_186

    .line 8955
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    and-int/lit8 v9, v1, 0xc

    invoke-virtual {v6, p0, v9, v2}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 8957
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    .line 8961
    :cond_f4
    :goto_f4
    invoke-virtual {p0, p0, v2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 8964
    :cond_f7
    const/high16 v6, 0x20000

    and-int/2addr v6, v1

    if-eqz v6, :cond_ff

    .line 8965
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8968
    :cond_ff
    const v6, 0x8000

    and-int/2addr v6, v1

    if-eqz v6, :cond_110

    .line 8969
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8970
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8971
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8974
    :cond_110
    const/high16 v6, 0x180000

    and-int/2addr v6, v1

    if-eqz v6, :cond_11d

    .line 8975
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8976
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8979
    :cond_11d
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_13d

    .line 8980
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_199

    .line 8981
    iget-object v6, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_192

    .line 8982
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8983
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8990
    :goto_137
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8991
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 8994
    :cond_13d
    const/high16 v6, 0x4000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_155

    .line 8995
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_155

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_155

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v6, :cond_155

    .line 8996
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 9000
    :cond_155
    if-eqz v0, :cond_2a

    .line 9001
    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_168

    and-int/lit8 v6, v1, 0xc

    if-nez v6, :cond_168

    and-int/lit16 v6, v1, 0x4000

    if-nez v6, :cond_168

    const/high16 v6, 0x200000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1a5

    .line 9003
    :cond_168
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v6

    if-eq v4, v6, :cond_1a0

    .line 9004
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto/16 :goto_2a

    .line 8872
    .end local v2    # "newVisibility":I
    :cond_173
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_42

    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_42

    .line 8878
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_42

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_42

    .line 8958
    .restart local v2    # "newVisibility":I
    :cond_186
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_f4

    .line 8959
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v9, 0x0

    invoke-interface {v6, p0, v9}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_f4

    .line 8985
    :cond_192
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_137

    .line 8988
    :cond_199
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_137

    .line 9006
    :cond_1a0
    invoke-virtual {p0, v8}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_2a

    .line 9009
    :cond_1a5
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2a

    .line 9010
    invoke-virtual {p0, v8}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_2a
.end method

.method public setFocusable(Z)V
    .registers 5
    .param p1, "focusable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6090
    if-nez p1, :cond_9

    .line 6091
    const/high16 v2, 0x40000

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 6093
    :cond_9
    if-eqz p1, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6094
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5
    .param p1, "focusableInTouchMode"    # Z

    .prologue
    const/high16 v1, 0x40000

    const/4 v2, 0x1

    .line 6112
    if-eqz p1, :cond_f

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6113
    if-eqz p1, :cond_e

    .line 6114
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setFlags(II)V

    .line 6116
    :cond_e
    return-void

    .line 6112
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setFrame(IIII)Z
    .registers 18
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 14865
    const/4 v1, 0x0

    .line 14872
    .local v1, "changed":Z
    iget v8, p0, Landroid/view/View;->mLeft:I

    if-ne v8, p1, :cond_15

    iget v8, p0, Landroid/view/View;->mRight:I

    move/from16 v0, p3

    if-ne v8, v0, :cond_15

    iget v8, p0, Landroid/view/View;->mTop:I

    if-ne v8, p2, :cond_15

    iget v8, p0, Landroid/view/View;->mBottom:I

    move/from16 v0, p4

    if-eq v8, v0, :cond_87

    .line 14873
    :cond_15
    const/4 v1, 0x1

    .line 14876
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v8, 0x20

    .line 14878
    .local v2, "drawn":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v8, v9

    .line 14879
    .local v6, "oldWidth":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v5, v8, v9

    .line 14880
    .local v5, "oldHeight":I
    sub-int v4, p3, p1

    .line 14881
    .local v4, "newWidth":I
    sub-int v3, p4, p2

    .line 14882
    .local v3, "newHeight":I
    if-ne v4, v6, :cond_2e

    if-eq v3, v5, :cond_88

    :cond_2e
    const/4 v7, 0x1

    .line 14885
    .local v7, "sizeChanged":Z
    :goto_2f
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 14887
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 14888
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 14889
    move/from16 v0, p3

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 14890
    move/from16 v0, p4

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 14891
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_4f

    .line 14892
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v9, p0, Landroid/view/View;->mLeft:I

    iget v10, p0, Landroid/view/View;->mTop:I

    iget v11, p0, Landroid/view/View;->mRight:I

    iget v12, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 14895
    :cond_4f
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14898
    if-eqz v7, :cond_6a

    .line 14899
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x20000000

    and-int/2addr v8, v9

    if-nez v8, :cond_67

    .line 14901
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_67

    .line 14902
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 14905
    :cond_67
    invoke-direct {p0, v4, v3, v6, v5}, Landroid/view/View;->sizeChange(IIII)V

    .line 14908
    :cond_6a
    iget v8, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_7c

    .line 14914
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14915
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 14918
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 14922
    :cond_7c
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v8, v2

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14924
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 14926
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 14928
    .end local v2    # "drawn":I
    .end local v3    # "newHeight":I
    .end local v4    # "newWidth":I
    .end local v5    # "oldHeight":I
    .end local v6    # "oldWidth":I
    .end local v7    # "sizeChanged":Z
    :cond_87
    return v1

    .line 14882
    .restart local v2    # "drawn":I
    .restart local v3    # "newHeight":I
    .restart local v4    # "newWidth":I
    .restart local v5    # "oldHeight":I
    .restart local v6    # "oldWidth":I
    :cond_88
    const/4 v7, 0x0

    goto :goto_2f
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 4
    .param p1, "hapticFeedbackEnabled"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 6160
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6161
    return-void

    .line 6160
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setHasTransientState(Z)V
    .registers 6
    .param p1, "hasTransientState"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6300
    if-eqz p1, :cond_17

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, 0x1

    :goto_7
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    .line 6302
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-gez v1, :cond_1c

    .line 6303
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 6304
    const-string v1, "View"

    const-string v2, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6320
    :cond_16
    :goto_16
    return-void

    .line 6300
    :cond_17
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 6306
    :cond_1c
    if-eqz p1, :cond_23

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_29

    :cond_23
    if-nez p1, :cond_16

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-nez v1, :cond_16

    .line 6309
    :cond_29
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    const v3, 0x7fffffff

    and-int/2addr v3, v1

    if-eqz p1, :cond_64

    const/high16 v1, -0x80000000

    :goto_33
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6311
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_16

    .line 6313
    :try_start_3a
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_3f
    .catch Ljava/lang/AbstractMethodError; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_16

    .line 6314
    :catch_40
    move-exception v0

    .line 6315
    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_64
    move v1, v2

    .line 6309
    goto :goto_33
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .registers 3
    .param p1, "horizontalFadingEdgeEnabled"    # Z

    .prologue
    .line 11417
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 11418
    if-eqz p1, :cond_b

    .line 11419
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11422
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11424
    :cond_11
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .registers 3
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 11544
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 11545
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11546
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11547
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11549
    :cond_12
    return-void
.end method

.method public setHovered(Z)V
    .registers 4
    .param p1, "hovered"    # Z

    .prologue
    const/high16 v1, 0x10000000

    .line 8577
    if-eqz p1, :cond_16

    .line 8578
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 8579
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8580
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8581
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    .line 8590
    :cond_15
    :goto_15
    return-void

    .line 8584
    :cond_16
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 8585
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8586
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_15
.end method

.method public setId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 16140
    iput p1, p0, Landroid/view/View;->mID:I

    .line 16141
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-eq v0, v1, :cond_11

    .line 16142
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mID:I

    .line 16144
    :cond_11
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .registers 9
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 7133
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    .line 7134
    .local v2, "oldMode":I
    if-eq p1, v2, :cond_32

    .line 7138
    if-eqz v2, :cond_c

    if-nez p1, :cond_33

    :cond_c
    move v0, v1

    .line 7140
    .local v0, "maySkipNotify":Z
    :goto_d
    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 7141
    .local v1, "oldIncludeForAccessibility":Z
    :goto_15
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    const v5, -0x700001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7142
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, p1, 0x14

    const/high16 v6, 0x700000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 7144
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eq v1, v4, :cond_37

    .line 7145
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 7151
    .end local v0    # "maySkipNotify":Z
    .end local v1    # "oldIncludeForAccessibility":Z
    :cond_32
    :goto_32
    return-void

    :cond_33
    move v0, v3

    .line 7138
    goto :goto_d

    .restart local v0    # "maySkipNotify":Z
    :cond_35
    move v1, v3

    .line 7140
    goto :goto_15

    .line 7147
    .restart local v1    # "oldIncludeForAccessibility":Z
    :cond_37
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_32
.end method

.method public setIsRootNamespace(Z)V
    .registers 3
    .param p1, "isRoot"    # Z

    .prologue
    .line 16153
    if-eqz p1, :cond_9

    .line 16154
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16158
    :goto_8
    return-void

    .line 16156
    :cond_9
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_8
.end method

.method public setKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/high16 v1, 0x4000000

    .line 5716
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5717
    return-void

    .line 5716
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setLabelFor(I)V
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 5562
    iput p1, p0, Landroid/view/View;->mLabelForId:I

    .line 5563
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Landroid/view/View;->mID:I

    if-ne v0, v1, :cond_11

    .line 5565
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mID:I

    .line 5567
    :cond_11
    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 12977
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    .line 12978
    .local v1, "layerType":I
    if-eqz v1, :cond_1f

    .line 12979
    if-nez p1, :cond_20

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    :goto_e
    iput-object v2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 12980
    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 12981
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v0

    .line 12982
    .local v0, "layer":Landroid/view/HardwareLayer;
    if-eqz v0, :cond_1c

    .line 12983
    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 12985
    :cond_1c
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 12990
    .end local v0    # "layer":Landroid/view/HardwareLayer;
    :cond_1f
    :goto_1f
    return-void

    :cond_20
    move-object v2, p1

    .line 12979
    goto :goto_e

    .line 12987
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1f
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 7
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 12916
    if-ltz p1, :cond_8

    const/4 v3, 0x2

    if-le p1, v3, :cond_10

    .line 12917
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12921
    :cond_10
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-ne p1, v3, :cond_2a

    .line 12922
    if-eqz p1, :cond_29

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_29

    .line 12923
    if-nez p2, :cond_21

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_21
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 12924
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12925
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 12949
    :cond_29
    :goto_29
    return-void

    .line 12931
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_2a
    iget v3, p0, Landroid/view/View;->mLayerType:I

    packed-switch v3, :pswitch_data_5c

    .line 12942
    :goto_2f
    iput p1, p0, Landroid/view/View;->mLayerType:I

    .line 12943
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-nez v3, :cond_36

    move v0, v2

    .line 12944
    .local v0, "layerDisabled":Z
    :cond_36
    if-eqz v0, :cond_4d

    move-object p2, v1

    .end local p2    # "paint":Landroid/graphics/Paint;
    :cond_39
    :goto_39
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 12945
    if-eqz v0, :cond_55

    :goto_3d
    iput-object v1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 12947
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12948
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_29

    .line 12933
    .end local v0    # "layerDisabled":Z
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :pswitch_46
    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 12936
    :pswitch_49
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_2f

    .line 12944
    .restart local v0    # "layerDisabled":Z
    :cond_4d
    if-nez p2, :cond_39

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_39

    .line 12945
    :cond_55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3d

    .line 12931
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_49
        :pswitch_46
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .registers 4
    .param p1, "layoutDirection"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6217
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_22

    .line 6219
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6220
    invoke-virtual {p0}, Landroid/view/View;->resetRtlProperties()V

    .line 6222
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6225
    invoke-virtual {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 6226
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 6229
    :cond_22
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 10570
    if-nez p1, :cond_a

    .line 10571
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10573
    :cond_a
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 10574
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 10575
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 10576
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10578
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10579
    return-void
.end method

.method public final setLeft(I)V
    .registers 13
    .param p1, "left"    # I

    .prologue
    const/high16 v10, 0x10000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 10104
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v7, :cond_74

    .line 10105
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10106
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_17

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_75

    :cond_17
    move v1, v6

    .line 10108
    .local v1, "matrixIsIdentity":Z
    :goto_18
    if-eqz v1, :cond_7b

    .line 10109
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_32

    .line 10112
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v7, :cond_77

    .line 10113
    move v2, p1

    .line 10114
    .local v2, "minLeft":I
    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, p1, v7

    .line 10119
    .local v4, "xLoc":I
    :goto_27
    iget v7, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v7, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v4, v5, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 10126
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_32
    :goto_32
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 10127
    .local v3, "oldWidth":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v7

    .line 10129
    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 10130
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_49

    .line 10131
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v5, p1}, Landroid/view/DisplayList;->setLeft(I)V

    .line 10134
    :cond_49
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v5, v0, v3, v0}, Landroid/view/View;->sizeChange(IIII)V

    .line 10136
    if-nez v1, :cond_67

    .line 10137
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    if-nez v5, :cond_5e

    .line 10139
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10141
    :cond_5e
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10142
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 10144
    :cond_67
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10145
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10146
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_74

    .line 10148
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10151
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_74
    return-void

    :cond_75
    move v1, v5

    .line 10106
    goto :goto_18

    .line 10116
    .restart local v1    # "matrixIsIdentity":Z
    :cond_77
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 10117
    .restart local v2    # "minLeft":I
    const/4 v4, 0x0

    .restart local v4    # "xLoc":I
    goto :goto_27

    .line 10123
    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_7b
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_32
.end method

.method public setLongClickable(Z)V
    .registers 4
    .param p1, "longClickable"    # Z

    .prologue
    const/high16 v1, 0x200000

    .line 6435
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6436
    return-void

    .line 6435
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final setMeasuredDimension(II)V
    .registers 9
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 16588
    invoke-static {p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    .line 16589
    .local v1, "optical":Z
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v4}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v4

    if-eq v1, v4, :cond_22

    .line 16590
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 16591
    .local v0, "insets":Landroid/graphics/Insets;
    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int v3, v4, v5

    .line 16592
    .local v3, "opticalWidth":I
    iget v4, v0, Landroid/graphics/Insets;->top:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    add-int v2, v4, v5

    .line 16594
    .local v2, "opticalHeight":I
    if-eqz v1, :cond_2d

    .end local v3    # "opticalWidth":I
    :goto_1e
    add-int/2addr p1, v3

    .line 16595
    if-eqz v1, :cond_2f

    .end local v2    # "opticalHeight":I
    :goto_21
    add-int/2addr p2, v2

    .line 16597
    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_22
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 16598
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 16600
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16601
    return-void

    .line 16594
    .restart local v0    # "insets":Landroid/graphics/Insets;
    .restart local v2    # "opticalHeight":I
    .restart local v3    # "opticalWidth":I
    :cond_2d
    neg-int v3, v3

    goto :goto_1e

    .line 16595
    .end local v3    # "opticalWidth":I
    :cond_2f
    neg-int v2, v2

    goto :goto_21
.end method

.method public setMinimumHeight(I)V
    .registers 2
    .param p1, "minHeight"    # I

    .prologue
    .line 16740
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 16741
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16742
    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2
    .param p1, "minWidth"    # I

    .prologue
    .line 16769
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 16770
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16772
    return-void
.end method

.method public setNextFocusDownId(I)V
    .registers 2
    .param p1, "nextFocusDownId"    # I

    .prologue
    .line 5800
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 5801
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .registers 2
    .param p1, "nextFocusForwardId"    # I

    .prologue
    .line 5821
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 5822
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .registers 2
    .param p1, "nextFocusLeftId"    # I

    .prologue
    .line 5737
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 5738
    return-void
.end method

.method public setNextFocusRightId(I)V
    .registers 2
    .param p1, "nextFocusRightId"    # I

    .prologue
    .line 5758
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 5759
    return-void
.end method

.method public setNextFocusUpId(I)V
    .registers 2
    .param p1, "nextFocusUpId"    # I

    .prologue
    .line 5779
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 5780
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 4380
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4383
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4384
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 4418
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4421
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 4422
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 4581
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    .line 4582
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 4295
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 4296
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnGenericMotionListener;

    .prologue
    .line 4562
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    .line 4563
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 4570
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 4571
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 4546
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    .line 4547
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 4404
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4407
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 4408
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .prologue
    .line 17071
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$1102(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 17072
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_1a

    .line 17073
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 17075
    :cond_1a
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 4554
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 4555
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "overScrollMode"    # I

    .prologue
    .line 17583
    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    .line 17586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17588
    :cond_21
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 17589
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v0, -0x80000000

    .line 15461
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 15463
    iput v0, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 15464
    iput v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 15466
    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15467
    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15469
    iput-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 15470
    iput-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 15472
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 15473
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    .line 15553
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 15555
    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 15556
    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 15557
    iput-boolean v0, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 15558
    iput-boolean v0, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 15560
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 15568
    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15569
    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15570
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 15572
    :goto_1a
    return-void

    .line 15562
    :pswitch_1b
    iput p3, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15563
    iput p1, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 15564
    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_1a

    .line 15560
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method public setPivotX(F)V
    .registers 9
    .param p1, "pivotX"    # F

    .prologue
    const/high16 v6, 0x10000000

    const/high16 v5, 0x20000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9720
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9721
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9722
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3a

    move v1, v2

    .line 9724
    .local v1, "pivotSet":Z
    :goto_11
    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_19

    if-nez v1, :cond_39

    .line 9725
    :cond_19
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9726
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9727
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 9728
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9729
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9730
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_31

    .line 9731
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v2, p1}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 9733
    :cond_31
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_39

    .line 9735
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9738
    :cond_39
    return-void

    .end local v1    # "pivotSet":Z
    :cond_3a
    move v1, v3

    .line 9722
    goto :goto_11
.end method

.method public setPivotY(F)V
    .registers 9
    .param p1, "pivotY"    # F

    .prologue
    const/high16 v6, 0x10000000

    const/high16 v5, 0x20000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9772
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9773
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9774
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3a

    move v1, v2

    .line 9776
    .local v1, "pivotSet":Z
    :goto_11
    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_19

    if-nez v1, :cond_39

    .line 9777
    :cond_19
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9778
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9779
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 9780
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9781
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9782
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_31

    .line 9783
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v2, p1}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 9785
    :cond_31
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_39

    .line 9787
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9790
    :cond_39
    return-void

    .end local v1    # "pivotSet":Z
    :cond_3a
    move v1, v3

    .line 9774
    goto :goto_11
.end method

.method public setPressed(Z)V
    .registers 6
    .param p1, "pressed"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6448
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1e

    move v2, v0

    :goto_b
    if-eq p1, v2, :cond_20

    .line 6450
    .local v0, "needsRefresh":Z
    :goto_d
    if-eqz p1, :cond_22

    .line 6451
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6456
    :goto_15
    if-eqz v0, :cond_1a

    .line 6457
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6459
    :cond_1a
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 6460
    return-void

    .end local v0    # "needsRefresh":Z
    :cond_1e
    move v2, v1

    .line 6448
    goto :goto_b

    :cond_20
    move v0, v1

    goto :goto_d

    .line 6453
    .restart local v0    # "needsRefresh":Z
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_15
.end method

.method public final setRight(I)V
    .registers 12
    .param p1, "right"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 10171
    iget v6, p0, Landroid/view/View;->mRight:I

    if-eq p1, v6, :cond_74

    .line 10172
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10173
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_17

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_75

    :cond_17
    move v1, v5

    .line 10175
    .local v1, "matrixIsIdentity":Z
    :goto_18
    if-eqz v1, :cond_79

    .line 10176
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_30

    .line 10178
    iget v6, p0, Landroid/view/View;->mRight:I

    if-ge p1, v6, :cond_77

    .line 10179
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 10183
    .local v2, "maxRight":I
    :goto_24
    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 10190
    .end local v2    # "maxRight":I
    :cond_30
    :goto_30
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 10191
    .local v3, "oldWidth":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v6

    .line 10193
    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 10194
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_49

    .line 10195
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setRight(I)V

    .line 10198
    :cond_49
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v6

    invoke-direct {p0, v4, v0, v3, v0}, Landroid/view/View;->sizeChange(IIII)V

    .line 10200
    if-nez v1, :cond_67

    .line 10201
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-nez v4, :cond_5e

    .line 10203
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10205
    :cond_5e
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10206
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 10208
    :cond_67
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10209
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10210
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_74

    .line 10212
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10215
    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_74
    return-void

    :cond_75
    move v1, v4

    .line 10173
    goto :goto_18

    .line 10181
    .restart local v1    # "matrixIsIdentity":Z
    :cond_77
    move v2, p1

    .restart local v2    # "maxRight":I
    goto :goto_24

    .line 10187
    .end local v2    # "maxRight":I
    :cond_79
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_30
.end method

.method public setRotation(F)V
    .registers 7
    .param p1, "rotation"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9481
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9482
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9483
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2a

    .line 9485
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9486
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 9487
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9488
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9489
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_22

    .line 9490
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotation(F)V

    .line 9492
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2a

    .line 9494
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9497
    :cond_2a
    return-void
.end method

.method public setRotationX(F)V
    .registers 7
    .param p1, "rotationX"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9584
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9585
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9586
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2a

    .line 9587
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9588
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 9589
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9590
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9591
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_22

    .line 9592
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationX(F)V

    .line 9594
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2a

    .line 9596
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9599
    :cond_2a
    return-void
.end method

.method public setRotationY(F)V
    .registers 7
    .param p1, "rotationY"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9533
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9534
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9535
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2a

    .line 9536
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9537
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 9538
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9539
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9540
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_22

    .line 9541
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationY(F)V

    .line 9543
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2a

    .line 9545
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9548
    :cond_2a
    return-void
.end method

.method public setSaveEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x10000

    .line 6517
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6518
    return-void

    :cond_9
    move v0, v1

    .line 6517
    goto :goto_5
.end method

.method public setSaveFromParentEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x20000000

    .line 6578
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6579
    return-void

    :cond_9
    move v0, v1

    .line 6578
    goto :goto_5
.end method

.method public setScaleX(F)V
    .registers 7
    .param p1, "scaleX"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9627
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9628
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9629
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2a

    .line 9630
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9631
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 9632
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9633
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9634
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_22

    .line 9635
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleX(F)V

    .line 9637
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2a

    .line 9639
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9642
    :cond_2a
    return-void
.end method

.method public setScaleY(F)V
    .registers 7
    .param p1, "scaleY"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9670
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9671
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9672
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2a

    .line 9673
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9674
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 9675
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9676
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9677
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_22

    .line 9678
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleY(F)V

    .line 9680
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2a

    .line 9682
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9685
    :cond_2a
    return-void
.end method

.method public setScrollBarDefaultDelayBeforeFade(I)V
    .registers 3
    .param p1, "scrollBarDefaultDelayBeforeFade"    # I

    .prologue
    .line 11639
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 11640
    return-void
.end method

.method public setScrollBarFadeDuration(I)V
    .registers 3
    .param p1, "scrollBarFadeDuration"    # I

    .prologue
    .line 11663
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 11664
    return-void
.end method

.method public setScrollBarSize(I)V
    .registers 3
    .param p1, "scrollBarSize"    # I

    .prologue
    .line 11687
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 11688
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 5
    .param p1, "style"    # I

    .prologue
    const/high16 v2, 0x3000000

    .line 11710
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_18

    .line 11711
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11712
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11713
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11715
    :cond_18
    return-void
.end method

.method public setScrollContainer(Z)V
    .registers 4
    .param p1, "isScrollContainer"    # Z

    .prologue
    const/high16 v1, 0x100000

    .line 5644
    if-eqz p1, :cond_21

    .line 5645
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 5646
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5647
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5649
    :cond_19
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5656
    :goto_20
    return-void

    .line 5651
    :cond_21
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 5652
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5654
    :cond_2d
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_20
.end method

.method public setScrollX(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 9119
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 9120
    return-void
.end method

.method public setScrollY(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 9129
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 9130
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .registers 4
    .param p1, "fadeScrollbars"    # Z

    .prologue
    .line 11596
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11597
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 11598
    .local v0, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 11599
    if-eqz p1, :cond_d

    .line 11600
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 11604
    :goto_c
    return-void

    .line 11602
    :cond_d
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_c
.end method

.method public setSelected(Z)V
    .registers 6
    .param p1, "selected"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15706
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_27

    move v0, v2

    :goto_9
    if-eq v0, p1, :cond_26

    .line 15707
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v0, -0x5

    if-eqz p1, :cond_29

    const/4 v0, 0x4

    :goto_12
    or-int/2addr v0, v3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15708
    if-nez p1, :cond_1a

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 15709
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 15710
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 15711
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 15712
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 15715
    :cond_26
    return-void

    :cond_27
    move v0, v1

    .line 15706
    goto :goto_9

    :cond_29
    move v0, v1

    .line 15707
    goto :goto_12
.end method

.method public setSoundEffectsEnabled(Z)V
    .registers 4
    .param p1, "soundEffectsEnabled"    # Z

    .prologue
    const/high16 v1, 0x8000000

    .line 6131
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6132
    return-void

    .line 6131
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setSystemUiVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 17017
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_19

    .line 17018
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 17019
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_19

    .line 17020
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 17023
    :cond_19
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16251
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    .line 16252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16256
    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 16257
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16209
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 16210
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 16266
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 16267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16271
    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 16272
    return-void
.end method

.method public setTextAlignment(I)V
    .registers 5
    .param p1, "textAlignment"    # I

    .prologue
    .line 17897
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 17899
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xe001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17900
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 17902
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0xd

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17905
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 17907
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 17909
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17910
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 17912
    :cond_2d
    return-void
.end method

.method public setTextDirection(I)V
    .registers 4
    .param p1, "textDirection"    # I

    .prologue
    .line 17670
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-eq v0, p1, :cond_29

    .line 17672
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1c1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17673
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 17675
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x1c0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17677
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    .line 17679
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 17681
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17682
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 17684
    :cond_29
    return-void
.end method

.method public final setTop(I)V
    .registers 12
    .param p1, "top"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 9964
    iget v7, p0, Landroid/view/View;->mTop:I

    if-eq p1, v7, :cond_76

    .line 9965
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9966
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_17

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_77

    :cond_17
    move v0, v6

    .line 9968
    .local v0, "matrixIsIdentity":Z
    :goto_18
    if-eqz v0, :cond_7d

    .line 9969
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_32

    .line 9972
    iget v7, p0, Landroid/view/View;->mTop:I

    if-ge p1, v7, :cond_79

    .line 9973
    move v1, p1

    .line 9974
    .local v1, "minTop":I
    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, p1, v7

    .line 9979
    .local v4, "yLoc":I
    :goto_27
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0, v5, v4, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 9986
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_32
    :goto_32
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 9987
    .local v3, "width":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v7

    .line 9989
    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 9990
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_4b

    .line 9991
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v7, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v5, v7}, Landroid/view/DisplayList;->setTop(I)V

    .line 9994
    :cond_4b
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v3, v5, v3, v2}, Landroid/view/View;->sizeChange(IIII)V

    .line 9996
    if-nez v0, :cond_69

    .line 9997
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    if-nez v5, :cond_60

    .line 9999
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10001
    :cond_60
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10002
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 10004
    :cond_69
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 10005
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10006
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_76

    .line 10008
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10011
    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_76
    return-void

    :cond_77
    move v0, v5

    .line 9966
    goto :goto_18

    .line 9976
    .restart local v0    # "matrixIsIdentity":Z
    :cond_79
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 9977
    .restart local v1    # "minTop":I
    const/4 v4, 0x0

    .restart local v4    # "yLoc":I
    goto :goto_27

    .line 9983
    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_7d
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_32
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .registers 2
    .param p1, "delegate"    # Landroid/view/TouchDelegate;

    .prologue
    .line 8835
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 8836
    return-void
.end method

.method public setTransitionAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .prologue
    .line 9911
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9912
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_29

    .line 9913
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    .line 9914
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9915
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9916
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_29

    .line 9917
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 9920
    :cond_29
    return-void
.end method

.method public setTranslationX(F)V
    .registers 7
    .param p1, "translationX"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10287
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 10288
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 10289
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2a

    .line 10291
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10292
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 10293
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10294
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10295
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_22

    .line 10296
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationX(F)V

    .line 10298
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2a

    .line 10300
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10303
    :cond_2a
    return-void
.end method

.method public setTranslationY(F)V
    .registers 7
    .param p1, "translationY"    # F

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10329
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 10330
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 10331
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2a

    .line 10332
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10333
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 10334
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10335
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10336
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_22

    .line 10337
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationY(F)V

    .line 10339
    :cond_22
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2a

    .line 10341
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 10344
    :cond_2a
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .registers 3
    .param p1, "verticalFadingEdgeEnabled"    # Z

    .prologue
    .line 11454
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 11455
    if-eqz p1, :cond_b

    .line 11456
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11459
    :cond_b
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11461
    :cond_11
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .registers 3
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 11574
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 11575
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11576
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11577
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11579
    :cond_12
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 4266
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_c

    .line 4267
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 4268
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4269
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 4271
    :cond_c
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6036
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 6037
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6038
    :cond_12
    return-void

    :cond_13
    move v0, v1

    .line 6037
    goto :goto_f
.end method

.method public setWillNotCacheDrawing(Z)V
    .registers 4
    .param p1, "willNotCacheDrawing"    # Z

    .prologue
    const/high16 v1, 0x20000

    .line 6371
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6372
    return-void

    .line 6371
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setWillNotDraw(Z)V
    .registers 4
    .param p1, "willNotDraw"    # Z

    .prologue
    const/16 v1, 0x80

    .line 6348
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6349
    return-void

    .line 6348
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setX(F)V
    .registers 3
    .param p1, "x"    # F

    .prologue
    .line 10237
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 10238
    return-void
.end method

.method public setY(F)V
    .registers 3
    .param p1, "y"    # F

    .prologue
    .line 10260
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 10261
    return-void
.end method

.method public showContextMenu()Z
    .registers 2

    .prologue
    .line 4508
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 4522
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 4534
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4535
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 4536
    :goto_7
    return-object v1

    :cond_8
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_7
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 16790
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 16791
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 16792
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 16793
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 16794
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 28
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 17269
    const/16 v19, 0x0

    .line 17271
    .local v19, "okay":Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 17272
    .local v21, "shadowSize":Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 17273
    .local v22, "shadowTouchPoint":Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 17275
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_2d

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_35

    .line 17277
    :cond_2d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 17284
    :cond_35
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 17286
    .local v8, "surface":Landroid/view/Surface;
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 17290
    .local v11, "token":Landroid/os/IBinder;
    if-eqz v11, :cond_a6

    .line 17291
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5a} :catch_ae

    move-result-object v17

    .line 17293
    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_5c
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17294
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_a7

    .line 17296
    :try_start_6a
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 17299
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 17302
    .local v20, "root":Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 17305
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 17307
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 17314
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 17321
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "root":Landroid/view/ViewRootImpl;
    :cond_a6
    :goto_a6
    return v19

    .line 17296
    .restart local v11    # "token":Landroid/os/IBinder;
    .restart local v17    # "canvas":Landroid/graphics/Canvas;
    :catchall_a7
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_ae} :catch_ae

    .line 17316
    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    :catch_ae
    move-exception v18

    .line 17317
    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17318
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_a6
.end method

.method public toGlobalMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 15833
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15834
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_6

    .line 15835
    const/4 v1, 0x0

    .line 15840
    :goto_5
    return v1

    .line 15838
    :cond_6
    invoke-direct {p0, p1}, Landroid/view/View;->transformMotionEventToGlobal(Landroid/view/MotionEvent;)V

    .line 15839
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15840
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public toLocalMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 15852
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15853
    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_6

    .line 15854
    const/4 v1, 0x0

    .line 15859
    :goto_5
    return v1

    .line 15857
    :cond_6
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15858
    invoke-direct {p0, p1}, Landroid/view/View;->transformMotionEventToLocal(Landroid/view/MotionEvent;)V

    .line 15859
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v7, 0x46

    const/16 v9, 0x44

    const/16 v12, 0x2c

    const/16 v11, 0x20

    const/16 v8, 0x2e

    .line 3973
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3974
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    const/16 v6, 0x7b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3976
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3978
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    sparse-switch v6, :sswitch_data_1aa

    .line 3982
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3984
    :goto_39
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    if-ne v6, v10, :cond_169

    move v6, v7

    :goto_41
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3985
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_16c

    const/16 v6, 0x45

    :goto_4c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3986
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v10, 0x80

    if-ne v6, v10, :cond_16f

    move v6, v8

    :goto_58
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3987
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_172

    const/16 v6, 0x48

    :goto_63
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3988
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_175

    const/16 v6, 0x56

    :goto_6e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3989
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_178

    const/16 v6, 0x43

    :goto_79
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3990
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v10, 0x200000

    and-int/2addr v6, v10

    if-eqz v6, :cond_17b

    const/16 v6, 0x4c

    :goto_85
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3991
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3992
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_17e

    const/16 v6, 0x52

    :goto_93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3993
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_181

    :goto_9c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3994
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_184

    const/16 v6, 0x53

    :goto_a7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3995
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_187

    .line 3996
    const/16 v6, 0x70

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4000
    :goto_b6
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_196

    const/16 v6, 0x48

    :goto_bf
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4001
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_199

    const/16 v6, 0x41

    :goto_cb
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4002
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_19c

    const/16 v6, 0x49

    :goto_d7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4003
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    if-eqz v6, :cond_19f

    :goto_e1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4004
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4005
    iget v6, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4006
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4007
    iget v6, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4008
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4009
    iget v6, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4010
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4011
    iget v6, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4012
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 4013
    .local v1, "id":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_149

    .line 4014
    const-string v6, " #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4015
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    iget-object v4, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 4017
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_149

    if-eqz v4, :cond_149

    .line 4020
    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1b8

    .line 4028
    :try_start_125
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 4031
    .local v3, "pkgname":Ljava/lang/String;
    :goto_129
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 4032
    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 4033
    .local v0, "entryname":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4037
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4038
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_149
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_125 .. :try_end_149} :catch_1a8

    .line 4043
    .end local v0    # "entryname":Ljava/lang/String;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_149
    :goto_149
    const-string/jumbo v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 3979
    .end local v1    # "id":I
    :sswitch_154
    const/16 v6, 0x56

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 3980
    :sswitch_15b
    const/16 v6, 0x49

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 3981
    :sswitch_162
    const/16 v6, 0x47

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :cond_169
    move v6, v8

    .line 3984
    goto/16 :goto_41

    :cond_16c
    move v6, v8

    .line 3985
    goto/16 :goto_4c

    :cond_16f
    move v6, v9

    .line 3986
    goto/16 :goto_58

    :cond_172
    move v6, v8

    .line 3987
    goto/16 :goto_63

    :cond_175
    move v6, v8

    .line 3988
    goto/16 :goto_6e

    :cond_178
    move v6, v8

    .line 3989
    goto/16 :goto_79

    :cond_17b
    move v6, v8

    .line 3990
    goto/16 :goto_85

    :cond_17e
    move v6, v8

    .line 3992
    goto/16 :goto_93

    :cond_181
    move v7, v8

    .line 3993
    goto/16 :goto_9c

    :cond_184
    move v6, v8

    .line 3994
    goto/16 :goto_a7

    .line 3998
    :cond_187
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_194

    const/16 v6, 0x50

    :goto_18f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b6

    :cond_194
    move v6, v8

    goto :goto_18f

    :cond_196
    move v6, v8

    .line 4000
    goto/16 :goto_bf

    :cond_199
    move v6, v8

    .line 4001
    goto/16 :goto_cb

    :cond_19c
    move v6, v8

    .line 4002
    goto/16 :goto_d7

    :cond_19f
    move v9, v8

    .line 4003
    goto/16 :goto_e1

    .line 4022
    .restart local v1    # "id":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :sswitch_1a2
    :try_start_1a2
    const-string v3, "app"

    .line 4023
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_129

    .line 4025
    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_1a5
    const-string v3, "android"
    :try_end_1a7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a2 .. :try_end_1a7} :catch_1a8

    .line 4026
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_129

    .line 4039
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_1a8
    move-exception v6

    goto :goto_149

    .line 3978
    :sswitch_data_1aa
    .sparse-switch
        0x0 -> :sswitch_154
        0x4 -> :sswitch_15b
        0x8 -> :sswitch_162
    .end sparse-switch

    .line 4020
    :sswitch_data_1b8
    .sparse-switch
        0x1000000 -> :sswitch_1a5
        0x7f000000 -> :sswitch_1a2
    .end sparse-switch
.end method

.method transformRect(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 10984
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 10985
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 10986
    .local v0, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10987
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10988
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10993
    .end local v0    # "boundingRect":Landroid/graphics/RectF;
    :cond_3b
    return-void
.end method

.method unFocus()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 4762
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->clearFocusInternal(ZZ)V

    .line 4763
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15022
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 15023
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 15026
    :cond_11
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 15002
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    .line 15003
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_17

    .line 15004
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 15010
    :cond_16
    :goto_16
    return-void

    .line 15007
    :cond_17
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_16
.end method

.method updateLocalSystemUiVisibility(II)Z
    .registers 6
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    .line 17090
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .line 17091
    .local v0, "val":I
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq v0, v1, :cond_12

    .line 17092
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17093
    const/4 v1, 0x1

    .line 17095
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15105
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public willNotCacheDrawing()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x20000

    .line 6381
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willNotDraw()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6358
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
