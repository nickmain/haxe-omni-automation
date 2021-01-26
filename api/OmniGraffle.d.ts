// TypeScript definitions for OmniGraffle 7.18.2 (204.8) on macOS 11.1
// Generated on 2021-01-26 05:40:07 +0000

// To use these definitions, save this file as `OmniGraffle.d.ts`
// and create a `tsconfig.json` file with compiler settings which indicate
// an appropriate set of implicitly defined TypeScript libraries:
//
// {
//     "compilerOptions": {
//         "lib": ["es7"]
//     }
// }


// Alert

declare class Alert {
    constructor (title: string, message: string);
    show(callback: Function | null): Promise<number>;
    addOption(string: string);
}

// Application

declare class Application {
    openDocument(from: Document | null, url: URL, completed: Function);
    readonly buildVersion: Version;
    readonly commandKeyDown: boolean;
    readonly controlKeyDown: boolean;
    readonly name: string;
    readonly optionKeyDown: boolean;
    readonly platformName: string;
    readonly shiftKeyDown: boolean;
    readonly stencils: Array<Stencil>;
    readonly userVersion: Version;
    readonly version: string;
}

// Calendar

declare namespace Calendar {
    const buddhist: Calendar;
    const chinese: Calendar;
    const coptic: Calendar;
    const current: Calendar;
    const ethiopicAmeteAlem: Calendar;
    const ethiopicAmeteMihret: Calendar;
    const gregorian: Calendar;
    const hebrew: Calendar;
    const indian: Calendar;
    const islamic: Calendar;
    const islamicCivil: Calendar;
    const islamicTabular: Calendar;
    const islamicUmmAlQura: Calendar;
    const iso8601: Calendar;
    const japanese: Calendar;
    const persian: Calendar;
    const republicOfChina: Calendar;
}

declare class Calendar {
    dateByAddingDateComponents(date: Date, components: DateComponents): Date | null;
    dateFromDateComponents(components: DateComponents): Date | null;
    dateComponentsFromDate(date: Date): DateComponents;
    dateComponentsBetweenDates(start: Date, end: Date): DateComponents;
    startOfDay(date: Date): Date;
    readonly identifier: string;
    readonly locale: Locale | null;
    readonly timeZone: TimeZone;
}

// Canvas

declare class Canvas {
    layout();
    layoutGraphics(graphics: Array<Graphic>);
    addShape(shapeName: string, bounds: Rect): Shape;
    newShape(): Shape;
    newLayer(): Layer;
    addLine(start: Point, end: Point): Line;
    newLine(): Line;
    addText(text: string, origin: Point): Solid;
    connect(from: Graphic, to: Graphic): Line;
    duplicate(graphics: Array<Graphic>): Array<Graphic>;
    orderBefore(model: Canvas);
    orderAfter(model: Canvas);
    remove();
    graphicWithId(id: number): Graphic | null;
    graphicWithName(name: string): Graphic | null;
    allGraphicsWithUserDataForKey(data: string, key: string): Array<Graphic>;
    graphicWithUserDataForKey(data: string, key: string): Graphic | null;
    combine(shapes: Array<Shape>, operation: ShapeCombination, replaceOriginal: boolean | null): Shape | null;
    onGraphicChanged(handler: PlugIn.Handler): PlugIn.Handler.Registration | null;
    autosizesDown: boolean;
    autosizesLeft: boolean;
    autosizesRight: boolean;
    autosizesUp: boolean;
    readonly background: Solid;
    canvasSizeIsMeasuredInPages: boolean;
    canvasSizingMode: CanvasSizingMode;
    columnAlignment: VerticalAlignment;
    readonly graphics: Array<Graphic>;
    readonly grid: Grid;
    horizontalPages: number;
    readonly id: number;
    readonly layers: Array<Layer>;
    readonly layoutInfo: Layout;
    name: string;
    readonly outlineRoot: OGOutlineNode;
    readonly pageSize: Size;
    rowAlignment: HorizontalAlignment;
    readonly shapes: Array<Shape>;
    size: Size;
    spaceBetweenObjectsInColumn: number;
    spaceBetweenObjectsInRow: number;
    verticalPages: number;
}

// CanvasSizingMode

declare namespace CanvasSizingMode {
    const Fit: CanvasSizingMode;
    const Fixed: CanvasSizingMode;
    const Infinite: CanvasSizingMode;
    const all: Array<CanvasSizingMode>;
}

declare class CanvasSizingMode {
}

// Color

declare namespace Color {
    function RGB(r: number, g: number, b: number, a: number | null): Color;
    function HSB(h: number, s: number, b: number, a: number | null): Color;
    function White(w: number, a: number | null): Color;
    const black: Color;
    const blue: Color;
    const brown: Color;
    const clear: Color;
    const cyan: Color;
    const darkGray: Color;
    const gray: Color;
    const green: Color;
    const lightGray: Color;
    const magenta: Color;
    const orange: Color;
    const purple: Color;
    const red: Color;
    const white: Color;
    const yellow: Color;
}

declare class Color {
    blend(otherColor: Color, fraction: number): Color | null;
    readonly alpha: number;
    readonly blue: number;
    readonly brightness: number;
    readonly colorSpace: ColorSpace;
    readonly green: number;
    readonly hue: number;
    readonly red: number;
    readonly saturation: number;
    readonly white: number;
}

// ColorSpace

declare namespace ColorSpace {
    const CMYK: ColorSpace;
    const HSB: ColorSpace;
    const Named: ColorSpace;
    const Pattern: ColorSpace;
    const RGB: ColorSpace;
    const White: ColorSpace;
    const all: Array<ColorSpace>;
}

declare class ColorSpace {
}

// Console

declare class Console {
    log(message: Object, additional: Array<Object | null>);
    error(message: Object, additional: Array<Object | null>);
    info(message: Object, additional: Array<Object | null>);
    warn(message: Object, additional: Array<Object | null>);
    clear();
}

// Data

declare namespace Data {
    function fromString(string: string): Data;
    function fromBase64(string: string): Data;
}

declare class Data {
    toString(): string;
    toBase64(): string;
    readonly length: number;
    readonly toObject: Object | null;
}

// DateComponents

declare class DateComponents {
    constructor ();
    readonly date: Date | null;
    day: number | null;
    era: number | null;
    hour: number | null;
    minute: number | null;
    month: number | null;
    nanosecond: number | null;
    second: number | null;
    timeZone: TimeZone | null;
    year: number | null;
}

// Decimal

declare namespace Decimal {
    function fromString(string: string): Decimal;
    const maximum: Decimal;
    const minimum: Decimal;
    const notANumber: Decimal;
    const one: Decimal;
    const zero: Decimal;
}

declare class Decimal {
    toString(): string;
    add(number: Decimal): Decimal;
    subtract(number: Decimal): Decimal;
    multiply(number: Decimal): Decimal;
    divide(number: Decimal): Decimal;
    compare(number: Decimal): number;
    equals(number: Decimal): boolean;
}

// Device

declare namespace Device {
    const current: Device;
}

declare class Device {
    readonly iOS: boolean;
    readonly iPad: boolean;
    readonly mac: boolean;
    readonly operatingSystemVersion: Version;
    readonly type: DeviceType | null;
}

// DeviceType

declare namespace DeviceType {
    const all: Array<DeviceType>;
    const iPad: DeviceType;
    const iPhone: DeviceType;
    const mac: DeviceType;
}

declare class DeviceType {
}

// Document

declare namespace Document {
    function makeNew(resultFunction: Function | null): Promise<Document>;
    function makeNewAndShow(resultFunction: Function | null): Promise<Document>;
}

declare class Document {
    close(didCancel: Function | null);
    save();
    fileWrapper(type: string | null): FileWrapper;
    makeFileWrapper(baseName: string, type: string | null): Promise<FileWrapper>;
    undo();
    redo();
    show(resultFunction: Function | null);
    readonly canRedo: boolean;
    readonly canUndo: boolean;
    readonly fileType: string | null;
    readonly name: string | null;
    readonly writableTypes: Array<string>;
}

// GraffleDocument

declare class GraffleDocument extends Document {
    addLocalizations(text: string);
    readonly portfolio: Portfolio;
    readonly windows: Array<NSWindow>;
}

// Email

declare class Email {
    constructor ();
    generate();
    blindCarbonCopy: string | null;
    body: string | null;
    carbonCopy: string | null;
    fileWrappers: Array<FileWrapper>;
    receiver: string | null;
    subject: string | null;
}

// FilePicker

declare class FilePicker {
    constructor ();
    show(): Promise<Array<URL>>;
    folders: boolean;
    message: string;
    multiple: boolean;
    types: Array<TypeIdentifier> | null;
}

// FileSaver

declare class FileSaver {
    constructor ();
    show(fileWrapper: FileWrapper): Promise<URL>;
    message: string;
    nameLabel: string;
    prompt: string;
    types: Array<TypeIdentifier> | null;
}

// FileWrapper

declare namespace FileWrapper {
    function withContents(name: string | null, contents: Data): FileWrapper;
    function withChildren(name: string | null, children: Array<FileWrapper>): FileWrapper;
}

declare class FileWrapper {
    filenameForChild(child: FileWrapper): string | null;
    readonly children: Array<FileWrapper>;
    readonly contents: Data | null;
    readonly destination: URL | null;
    filename: string | null;
    preferredFilename: string | null;
    readonly type: FileWrapper.Type;
}

// FileWrapper.Type

declare namespace FileWrapper.Type {
    const Directory: FileWrapper.Type;
    const File: FileWrapper.Type;
    const Link: FileWrapper.Type;
    const all: Array<FileWrapper.Type>;
}

declare namespace FileWrapper {
    class Type {
    }
}

// FillType

declare namespace FillType {
    const Linear: FillType;
    const Marker: FillType;
    const Plastic: FillType;
    const Radial: FillType;
    const Solid: FillType;
    const Squiggle: FillType;
    const Stipple: FillType;
    const all: Array<FillType>;
}

declare class FillType {
}

// Form

declare class Form {
    constructor ();
    addField(field: Form.Field, index: number | null);
    removeField(field: Form.Field);
    show(title: string, confirmTitle: string): Promise<Form>;
    readonly fields: Array<Form.Field>;
    validate: Function | null;
    readonly values: Object;
}

// Form.Field

declare namespace Form {
    class Field {
        readonly displayName: string | null;
        readonly key: string;
    }
}

// Form.Field.Checkbox

declare namespace Form.Field {
    class Checkbox extends Form.Field {
        constructor (key: string, displayName: string | null, value: boolean | null);
    }
}

// Form.Field.Date

declare namespace Form.Field {
    class Date extends Form.Field {
        constructor (key: string, displayName: string | null, value: Date | null, formatter: Formatter.Date | null);
    }
}

// Form.Field.MultipleOptions

declare namespace Form.Field {
    class MultipleOptions extends Form.Field {
        constructor (key: string, displayName: string | null, options: Array<Object>, names: Array<string> | null, selected: Array<Object>);
    }
}

// Form.Field.Option

declare namespace Form.Field {
    class Option extends Form.Field {
        constructor (key: string, displayName: string | null, options: Array<Object>, names: Array<string> | null, selected: Object | null, nullOptionTitle: string | null);
        allowsNull: boolean;
        nullOptionTitle: string | null;
    }
}

// Form.Field.String

declare namespace Form.Field {
    class String extends Form.Field {
        constructor (key: string, displayName: string | null, value: Object | null, formatter: Formatter | null);
    }
}

// Formatter

declare class Formatter {
}

// Formatter.Date

declare namespace Formatter.Date {
    function withStyle(dateStyle: Formatter.Date.Style, timeStyle: Formatter.Date.Style | null): Formatter.Date;
    function withFormat(format: string): Formatter.Date;
    const iso8601: Formatter.Date;
}

declare namespace Formatter {
    class Date extends Formatter {
        stringFromDate(date: Date): string;
        dateFromString(string: string): Date | null;
        calendar: Calendar;
        readonly dateFormat: string;
        locale: Locale;
        timeZone: TimeZone;
    }
}

// Formatter.Decimal

declare namespace Formatter.Decimal {
    function currency(code: string | null): Formatter.Decimal;
    const currencyCodes: Array<string>;
    const custom: Formatter.Decimal;
    const decimal: Formatter.Decimal;
    const percent: Formatter.Decimal;
    const percentWithDecimal: Formatter.Decimal;
    const plain: Formatter.Decimal;
    const thousandsAndDecimal: Formatter.Decimal;
}

declare namespace Formatter {
    class Decimal extends Formatter {
        stringFromDecimal(number: Decimal): string | null;
        decimalFromString(string: string): Decimal | null;
        decimalSeparator: string;
        negativeFormat: string;
        positiveFormat: string;
        thousandsSeparator: string | null;
        zeroSymbol: string | null;
    }
}

// Formatter.Duration

declare namespace Formatter {
    class Duration extends Formatter {
        constructor ();
        stringFromDecimal(number: Decimal): string | null;
        decimalFromString(string: string): Decimal | null;
        hoursPerDay: number;
        hoursPerWeek: number;
        useVerboseFormat: boolean;
    }
}

// Formatter.Date.Style

declare namespace Formatter.Date.Style {
    const Full: Formatter.Date.Style;
    const Long: Formatter.Date.Style;
    const Medium: Formatter.Date.Style;
    const Short: Formatter.Date.Style;
    const all: Array<Formatter.Date.Style>;
}

declare namespace Formatter.Date {
    class Style {
    }
}

// Graphic

declare class Graphic {
    orderAbove(graphic: Graphic);
    orderBelow(graphic: Graphic);
    remove();
    setUserData(key: string, value: string | null);
    duplicateTo(location: Point, canvas: Canvas | null): Graphic | null;
    actionURL: URL | null;
    alignsEdgesToGrid: boolean;
    allowsConnections: boolean;
    automationAction: Array<string>;
    readonly connectedLines: Array<Line>;
    cornerRadius: number;
    flippedHorizontally: boolean;
    flippedVertically: boolean;
    geometry: Rect;
    readonly id: number;
    readonly incomingLines: Array<Line>;
    layer: Layer | null;
    locked: boolean;
    name: string | null;
    notes: string;
    readonly outgoingLines: Array<Line>;
    plasticCurve: number | null;
    plasticHighlightAngle: number | null;
    rotation: number;
    shadowColor: Color | null;
    shadowFuzziness: number;
    shadowVector: Point;
    strokeCap: LineCap;
    strokeColor: Color | null;
    strokeJoin: LineJoin;
    strokePattern: StrokeDash;
    strokeThickness: number;
    strokeType: StrokeType | null;
    userData: object;
}

// Group

declare class Group extends Graphic {
    constructor (graphics: Array<Graphic>);
    ungroup(): Array<Graphic>;
    connectToGroupOnly: boolean;
    readonly graphics: Array<Graphic>;
    magnets: Array<Point>;
}

// Subgraph

declare class Subgraph extends Group {
    constructor (graphics: Array<Graphic>);
    readonly background: Solid;
    collapsed: boolean;
    readonly subgraphics: Array<Graphic>;
}

// Table

declare namespace Table {
    function withRowsColumns(rows: number, columns: number, graphics: Array<Graphic>): Table;
}

declare class Table extends Group {
    constructor (graphic: Graphic);
    graphicAt(row: number, column: number): Graphic | null;
    setRowHeight(pts: number, ofRow: number);
    setColumnWidth(pts: number, ofColumn: number);
    columns: number;
    rows: number;
}

// Line

declare namespace Line {
    const allLineEndingTypes: Array<string>;
}

declare class Line extends Graphic {
    bezierPoints: Array<Point>;
    head: Graphic | null;
    headMagnet: number;
    headScale: number;
    headType: string;
    hopType: HopType;
    lineType: LineType;
    points: Array<Point>;
    tail: Graphic | null;
    tailMagnet: number;
    tailScale: number;
    tailType: string;
}

// Solid

declare class Solid extends Graphic {
    autosizing: TextAutosizing;
    blendColor: Color | null;
    blendFraction: number;
    fillColor: Color | null;
    fillType: FillType | null;
    fontName: string;
    gradientAngle: number;
    gradientCenter: Point;
    gradientColor: Color | null;
    image: ImageReference | null;
    imageOffset: Point;
    imageOpacity: number;
    imagePage: number;
    imageScale: Size;
    imageSizing: ImageSizing;
    magnets: Array<Point>;
    text: string;
    textAlongPathGlyphAnchor: number;
    textColor: Color;
    textFlow: TextFlow;
    readonly textGeometry: Rect;
    textHorizontalAlignment: HorizontalTextAlignment;
    textHorizontalPadding: number;
    textRotation: number;
    textRotationIsRelative: boolean;
    textSize: number;
    textUnitRect: Rect;
    textVerticalPadding: number;
    textVerticalPlacement: VerticalTextPlacement;
    textWraps: boolean;
    tripleBlend: boolean;
}

// Shape

declare class Shape extends Solid {
    shape: string | null;
    shapeControlPoints: Array<Point>;
    shapeVertices: Array<Point>;
}

// GraphicView

declare class GraphicView {
    select(graphics: Array<Graphic>, extending: boolean | null);
    deselect(graphics: Array<Graphic>);
    edit(solid: Solid);
    canvas: Canvas;
    visibleRect: Rect;
}

// Grid

declare class Grid {
    drawsInFront: boolean;
    majorColor: Color;
    majorSpacing: number;
    minorColor: Color;
    snaps: boolean;
    spacing: number;
    visible: boolean;
}

// HierarchicalDirection

declare namespace HierarchicalDirection {
    const Bottom: HierarchicalDirection;
    const Left: HierarchicalDirection;
    const Right: HierarchicalDirection;
    const Top: HierarchicalDirection;
    const all: Array<HierarchicalDirection>;
}

declare class HierarchicalDirection {
}

// HopType

declare namespace HopType {
    const Bridge: HopType;
    const Gap: HopType;
    const Ignore: HopType;
    const None: HopType;
    const Round: HopType;
    const RoundUnder: HopType;
    const Square: HopType;
    const SquareUnder: HopType;
    const ThreeSide: HopType;
    const ThreeSideUnder: HopType;
    const TwoSide: HopType;
    const TwoSideUnder: HopType;
    const all: Array<HopType>;
}

declare class HopType {
}

// HorizontalAlignment

declare namespace HorizontalAlignment {
    const Center: HorizontalAlignment;
    const Left: HorizontalAlignment;
    const Right: HorizontalAlignment;
    const all: Array<HorizontalAlignment>;
}

declare class HorizontalAlignment {
}

// HorizontalTextAlignment

declare namespace HorizontalTextAlignment {
    const Center: HorizontalTextAlignment;
    const Justify: HorizontalTextAlignment;
    const Left: HorizontalTextAlignment;
    const Right: HorizontalTextAlignment;
    const all: Array<HorizontalTextAlignment>;
}

declare class HorizontalTextAlignment {
}

// Image

declare class Image {
}

// ImageReference

declare class ImageReference {
    readonly data: Data | null;
    readonly originalSize: Size;
    readonly uniqueID: number;
}

// ImageSizing

declare namespace ImageSizing {
    const Manual: ImageSizing;
    const Stretched: ImageSizing;
    const Tiled: ImageSizing;
    const all: Array<ImageSizing>;
}

declare class ImageSizing {
}

// Layer

declare class Layer {
    orderAbove(layer: Layer);
    orderBelow(layer: Layer);
    remove();
    addShape(shapeName: string, bounds: Rect): Shape;
    newShape(): Shape;
    readonly graphics: Array<Graphic>;
    locked: boolean;
    name: string;
    prints: boolean;
    visible: boolean;
}

// Layout

declare class Layout {
    automaticLayout: boolean;
    circularLineLength: number;
    direction: HierarchicalDirection;
    forceDirectedLineLength: number;
    forceDirectedSeparation: number;
    objectSeparation: number;
    radialSeparation: number;
    rankSeparation: number;
    type: LayoutType;
}

// LayoutType

declare namespace LayoutType {
    const Circular: LayoutType;
    const ForceDirected: LayoutType;
    const Hierarchical: LayoutType;
    const Radial: LayoutType;
    const all: Array<LayoutType>;
}

declare class LayoutType {
}

// LineCap

declare namespace LineCap {
    const Butt: LineCap;
    const Round: LineCap;
    const Square: LineCap;
    const all: Array<LineCap>;
}

declare class LineCap {
}

// LineJoin

declare namespace LineJoin {
    const Bevel: LineJoin;
    const Miter: LineJoin;
    const Round: LineJoin;
    const all: Array<LineJoin>;
}

declare class LineJoin {
}

// LineType

declare namespace LineType {
    const Bezier: LineType;
    const Curved: LineType;
    const Orthogonal: LineType;
    const Straight: LineType;
    const all: Array<LineType>;
}

declare class LineType {
}

// Locale

declare namespace Locale {
    const identifiers: Array<string>;
}

declare class Locale {
    constructor (identifier: string);
    readonly calendar: Calendar;
    readonly currencyCode: string | null;
    readonly identifier: string;
}

// MenuItem

declare class MenuItem {
    checked: boolean;
    label: string;
}

// NSWindow

declare class NSWindow {
    close();
    setViewForCanvas(canvas: Canvas, zoom: number, center: Point);
    centerVisiblePoint: Point;
    readonly selection: Selection;
    zoom: number;
}

// OGOutlineNode

declare class OGOutlineNode {
    readonly children: Array<OGOutlineNode>;
    readonly graphic: Graphic | null;
}

// Pasteboard

declare namespace Pasteboard {
    function makeUnique(): Pasteboard;
    const general: Pasteboard;
}

declare class Pasteboard {
    availableType(types: Array<TypeIdentifier>): TypeIdentifier | null;
    addItems(items: Array<Pasteboard.Item>);
    clear();
    dataForType(type: TypeIdentifier): Data | null;
    setDataForType(data: Data, type: TypeIdentifier);
    stringForType(type: TypeIdentifier): string | null;
    setStringForType(string: string, type: TypeIdentifier);
    URL: URL | null;
    URLs: Array<URL> | null;
    color: Color | null;
    colors: Array<Color> | null;
    readonly hasColors: boolean;
    readonly hasImages: boolean;
    readonly hasStrings: boolean;
    readonly hasURLs: boolean;
    image: Image | null;
    images: Array<Image> | null;
    items: Array<Pasteboard.Item>;
    string: string | null;
    strings: Array<string> | null;
    readonly types: Array<TypeIdentifier>;
}

// Pasteboard.Item

declare namespace Pasteboard {
    class Item {
        constructor ();
        dataForType(type: TypeIdentifier): Data | null;
        setDataForType(data: Data, type: TypeIdentifier);
        stringForType(type: TypeIdentifier): string | null;
        setStringForType(string: string, type: TypeIdentifier);
        readonly types: Array<TypeIdentifier>;
    }
}

// PlugIn

declare namespace PlugIn {
    function find(identifier: string, minimumVersion: Version | null): PlugIn | null;
    const all: Array<PlugIn>;
}

declare class PlugIn {
    library(identifier: string): Object | null;
    action(identifier: string): PlugIn.Action | null;
    handler(identifier: string): PlugIn.Handler | null;
    resourceNamed(name: string): URL | null;
    imageNamed(name: string): Image | null;
    readonly URL: URL | null;
    readonly actions: Array<PlugIn.Action>;
    readonly author: string;
    readonly description: string;
    readonly displayName: string;
    readonly handlers: Array<PlugIn.Handler>;
    readonly identifier: string;
    readonly libraries: Array<PlugIn.Library>;
    readonly version: Version;
}

// PlugIn.Action

declare namespace PlugIn {
    class Action {
        constructor (perform: Function);
        readonly description: string;
        readonly label: string;
        readonly longLabel: string;
        readonly mediumLabel: string;
        readonly name: string;
        readonly paletteLabel: string;
        readonly perform: Function;
        readonly plugIn: PlugIn;
        readonly shortLabel: string;
        validate: Function | null;
    }
}

// PlugIn.Handler

declare namespace PlugIn {
    class Handler {
        constructor (invoke: Function);
        readonly invoke: Function;
        readonly name: string;
        readonly plugIn: PlugIn;
        willAttach: Function | null;
        willDetach: Function | null;
    }
}

// PlugIn.Handler.Registration

declare namespace PlugIn.Handler {
    class Registration {
        remove();
    }
}

// PlugIn.Library

declare namespace PlugIn {
    class Library {
        constructor (version: Version);
        readonly name: string;
        readonly plugIn: PlugIn;
        readonly version: Version;
    }
}

// Point

declare namespace Point {
    const unitX: Point;
    const unitY: Point;
    const zero: Point;
}

declare class Point {
    constructor (x: number, y: number);
    add(point: Point): Point;
    subtract(point: Point): Point;
    scale(factor: number): Point;
    distanceTo(point: Point): number;
    dot(point: Point): number;
    readonly length: number;
    readonly negative: Point;
    readonly normalized: Point;
    x: number;
    y: number;
}

// Portfolio

declare class Portfolio {
    addCanvas(): Canvas | null;
    addImage(data: Data): ImageReference | null;
    copyImage(image: ImageReference): ImageReference | null;
    readonly canvases: Array<Canvas>;
    readonly document: GraffleDocument | null;
    readonly images: Array<ImageReference>;
}

// Rect

declare class Rect {
    constructor (x: number, y: number, width: number, height: number);
    insetBy(dx: number, dy: number): Rect;
    offsetBy(dx: number, dy: number): Rect;
    union(rect: Rect): Rect;
    intersect(rect: Rect): Rect;
    containsRect(rect: Rect): boolean;
    containsPoint(point: Point): boolean;
    intersects(rect: Rect): boolean;
    readonly center: Point;
    height: number;
    readonly integral: Rect;
    readonly isEmpty: boolean;
    readonly isInfinite: boolean;
    readonly isNull: boolean;
    readonly maxX: number;
    readonly maxY: number;
    readonly midX: number;
    readonly midY: number;
    readonly minX: number;
    readonly minY: number;
    origin: Point;
    size: Size;
    readonly standardized: Rect;
    width: number;
    x: number;
    y: number;
}

// Selection

declare class Selection {
    readonly canvas: Canvas | null;
    readonly document: GraffleDocument | null;
    readonly graphics: Array<Graphic>;
    readonly lines: Array<Line>;
    readonly solids: Array<Solid>;
    readonly view: GraphicView | null;
}

// ShapeCombination

declare namespace ShapeCombination {
    const Intersect: ShapeCombination;
    const None: ShapeCombination;
    const Subtract: ShapeCombination;
    const Union: ShapeCombination;
    const Unite: ShapeCombination;
    const all: Array<ShapeCombination>;
}

declare class ShapeCombination {
}

// SharePanel

declare class SharePanel {
    constructor (items: Array<URL | string | Image | FileWrapper>);
    addItem(shareItem: URL | string | Image | FileWrapper);
    addItems(shareItems: Array<URL | string | Image | FileWrapper>);
    removeItem(shareItem: URL | string | Image | FileWrapper);
    removeItems(shareItems: Array<URL | string | Image | FileWrapper>);
    clearItems();
    show();
    items: Array<URL | string | Image | FileWrapper>;
}

// Size

declare class Size {
    constructor (width: number, height: number);
    height: number;
    width: number;
}

// Stencil

declare class Stencil {
    load(completed: Function);
    readonly graphics: Array<Graphic>;
    readonly images: Array<ImageReference>;
    readonly isLoaded: boolean;
    readonly name: string;
}

// StrokeDash

declare namespace StrokeDash {
    const Dash10on3off2on3off: StrokeDash;
    const Dash10on3off2on3off2on3off: StrokeDash;
    const Dash16on9off: StrokeDash;
    const Dash16on9off16on9off1on9off: StrokeDash;
    const Dash16on9off1on9off: StrokeDash;
    const Dash16on9off1on9off1on9off: StrokeDash;
    const Dash1on3off: StrokeDash;
    const Dash1on4off: StrokeDash;
    const Dash1on5off: StrokeDash;
    const Dash1on9off: StrokeDash;
    const Dash20on5off4on5off: StrokeDash;
    const Dash20on5off4on5off4on5off: StrokeDash;
    const Dash2on2off: StrokeDash;
    const Dash40on9off8on9off: StrokeDash;
    const Dash40on9off8on9off8on9off: StrokeDash;
    const Dash4on3off1on3off: StrokeDash;
    const Dash4on3off1on3off1on3off: StrokeDash;
    const Dash4on3off4on3off1on3off: StrokeDash;
    const Dash4on4off: StrokeDash;
    const Dash4on9off1on5off: StrokeDash;
    const Dash4on9off1on5off1on5off: StrokeDash;
    const Dash8on4off1on4off: StrokeDash;
    const Dash8on5off: StrokeDash;
    const Dash8on5off8on5off1on5off: StrokeDash;
    const Solid: StrokeDash;
    const all: Array<StrokeDash>;
}

declare class StrokeDash {
}

// StrokeType

declare namespace StrokeType {
    const Double: StrokeType;
    const Freehand: StrokeType;
    const Inner: StrokeType;
    const Outer: StrokeType;
    const Plastic: StrokeType;
    const Single: StrokeType;
    const all: Array<StrokeType>;
}

declare class StrokeType {
}

// TextAutosizing

declare namespace TextAutosizing {
    const Clip: TextAutosizing;
    const Full: TextAutosizing;
    const Overflow: TextAutosizing;
    const Vertical: TextAutosizing;
    const all: Array<TextAutosizing>;
}

declare class TextAutosizing {
}

// TextFlow

declare namespace TextFlow {
    const Clip: TextFlow;
    const FillsShape: TextFlow;
    const FollowsPath: TextFlow;
    const Overflow: TextFlow;
    const Resize: TextFlow;
    const all: Array<TextFlow>;
}

declare class TextFlow {
}

// TimeZone

declare namespace TimeZone {
    const abbreviations: Array<string>;
}

declare class TimeZone {
    constructor (abbreviation: string);
    readonly abbreviation: string | null;
    readonly daylightSavingTime: boolean;
    readonly secondsFromGMT: number;
}

// Timer

declare namespace Timer {
    function once(interval: number, action: Function): Timer;
    function repeating(interval: number, action: Function): Timer;
}

declare class Timer {
    cancel();
    readonly interval: number;
}

// ToolbarItem

declare class ToolbarItem {
    image: Image | null;
    label: string;
    toolTip: string | null;
}

// TypeIdentifier

declare namespace TypeIdentifier {
    const URL: TypeIdentifier;
    const binaryPropertyList: TypeIdentifier;
    const csv: TypeIdentifier;
    const editableTypes: Array<TypeIdentifier>;
    const gif: TypeIdentifier;
    const image: TypeIdentifier;
    const jpeg: TypeIdentifier;
    const json: TypeIdentifier;
    const pdf: TypeIdentifier;
    const plainText: TypeIdentifier;
    const png: TypeIdentifier;
    const propertyList: TypeIdentifier;
    const readableTypes: Array<TypeIdentifier>;
    const rtf: TypeIdentifier;
    const rtfd: TypeIdentifier;
    const tiff: TypeIdentifier;
    const writableTypes: Array<TypeIdentifier>;
    const xmlPropertyList: TypeIdentifier;
}

declare class TypeIdentifier {
    constructor (identifier: string);
    conformsTo(other: TypeIdentifier): boolean;
    readonly displayName: string;
    readonly identifier: string;
    readonly pathExtensions: Array<string>;
}

// URL

declare namespace URL {
    function choose(types: Array<string>): URL | null;
    function chooseFolder(): URL | null;
    function fromString(string: string): URL | null;
    function tellScript(app: string, js: string, arg: Object | null): URL | null;
    function tellFunction(app: string, jsFunction: Function, arg: Object | null): URL | null;
    const currentAppScheme: string;
}

declare class URL {
    fetch(success: Function, failure: Function | null);
    call(success: Function, failure: Function | null);
    open();
    find(types: Array<TypeIdentifier>, recurse: boolean | null): Promise<Array<URL>>;
    toString(): string;
    readonly string: string;
    readonly toObject: Object | null;
}

// URL.FetchRequest

declare namespace URL.FetchRequest {
    function fromString(string: string): URL.FetchRequest | null;
}

declare namespace URL {
    class FetchRequest {
        constructor ();
        fetch(): Promise<URL.FetchResponse>;
        bodyData: Data | null;
        bodyString: string | null;
        cache: string | null;
        headers: object;
        method: string | null;
        url: URL | null;
    }
}

// URL.FetchResponse

declare namespace URL {
    class FetchResponse {
        readonly bodyData: Data | null;
        readonly bodyString: string | null;
        readonly headers: object;
        readonly mimeType: string | null;
        readonly statusCode: number;
        readonly textEncodingName: string | null;
        readonly url: URL | null;
    }
}

// Version

declare class Version {
    constructor (versionString: string);
    equals(version: Version): boolean;
    atLeast(version: Version): boolean;
    isAfter(version: Version): boolean;
    isBefore(version: Version): boolean;
    readonly versionString: string;
}

// VerticalAlignment

declare namespace VerticalAlignment {
    const Bottom: VerticalAlignment;
    const Center: VerticalAlignment;
    const Top: VerticalAlignment;
    const all: Array<VerticalAlignment>;
}

declare class VerticalAlignment {
}

// VerticalTextPlacement

declare namespace VerticalTextPlacement {
    const Bottom: VerticalTextPlacement;
    const Middle: VerticalTextPlacement;
    const Top: VerticalTextPlacement;
    const all: Array<VerticalTextPlacement>;
}

declare class VerticalTextPlacement {
}
