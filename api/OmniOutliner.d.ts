// TypeScript definitions for OmniOutliner 5.10 (212.0.29) on macOS 12.3
// Generated on 2022-04-19 21:52:07 +0000

// To use these definitions, save this file as `OmniOutliner.d.ts`
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
    show(callback: (option: number) => void | null): Promise<number>;
    addOption(string: string): void;
}

// Application

declare class Application {
    openDocument(from: Document | null, url: URL, completed: (documentOrError: Document | Error, alreadyOpen: boolean) => void): void;
    readonly buildVersion: Version;
    readonly commandKeyDown: boolean;
    readonly controlKeyDown: boolean;
    readonly name: string;
    readonly optionKeyDown: boolean;
    readonly platformName: string;
    readonly shiftKeyDown: boolean;
    readonly userVersion: Version;
    readonly version: string;
}

// ApplyResult

declare namespace ApplyResult {
    const SkipChildren: ApplyResult;
    const SkipPeers: ApplyResult;
    const Stop: ApplyResult;
    const all: Array<ApplyResult>;
}

declare class ApplyResult {
}

// ColumnArray

declare class ColumnArray extends Array {
    byTitle(title: string): Column | null;
}

// Audio

declare namespace Audio {
    function playAlert(alert: Audio.Alert | null, completed: () => void | null): void;
}

declare class Audio {
}

// Audio.Alert

declare namespace Audio {
    class Alert {
        constructor (url: URL);
    }
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

// Column

declare class Column {
    remove(): void;
    readonly enumeration: Enumeration | null;
    formatter: Formatter | null;
    readonly outline: Outline;
    readonly style: Style;
    textAlignment: TextAlignment;
    title: string;
    readonly type: Column.Type;
}

// Column.Summary

declare namespace Column.Summary {
    const AverageLeaves: Column.Summary;
    const Hidden: Column.Summary;
    const Maximum: Column.Summary;
    const Minimum: Column.Summary;
    const State: Column.Summary;
    const Total: Column.Summary;
}

declare namespace Column {
    class Summary {
    }
}

// Column.Type

declare namespace Column.Type {
    const Checkbox: Column.Type;
    const Date: Column.Type;
    const Duration: Column.Type;
    const Enumeration: Column.Type;
    const Number: Column.Type;
    const Text: Column.Type;
}

declare namespace Column {
    class Type {
        readonly identifier: string;
    }
}

// Console

declare class Console {
    log(message: Object, additional: Array<Object | null>): void;
    error(message: Object, additional: Array<Object | null>): void;
    info(message: Object, additional: Array<Object | null>): void;
    warn(message: Object, additional: Array<Object | null>): void;
    clear(): void;
}

// Credentials

declare class Credentials {
    constructor ();
    read(service: string): object | null;
    write(service: string, username: string, password: string): void;
    remove(service: string): void;
    readBookmark(service: string): URL.Bookmark | null;
    writeBookmark(service: string, bookmark: URL.Bookmark): void;
}

// Crypto

declare namespace Crypto {
    function randomData(length: number): Data;
}

declare class Crypto {
}

// Crypto.SHA256

declare namespace Crypto {
    class SHA256 {
        constructor ();
        update(data: Data): void;
        finalize(): Data;
    }
}

// Crypto.SHA384

declare namespace Crypto {
    class SHA384 {
        constructor ();
        update(data: Data): void;
        finalize(): Data;
    }
}

// Crypto.SHA512

declare namespace Crypto {
    class SHA512 {
        constructor ();
        update(data: Data): void;
        finalize(): Data;
    }
}

// Data

declare namespace Data {
    function fromString(string: string, encoding: StringEncoding | null): Data;
    function fromBase64(string: string): Data;
}

declare class Data {
    toString(encoding: StringEncoding | null): string;
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
    function makeNew(resultFunction: (document: Document | Error) => void | null): Promise<Document>;
    function makeNewAndShow(resultFunction: (document: Document | Error) => void | null): Promise<Document>;
}

declare class Document {
    close(didCancel: (document: Document) => void | null): void;
    save(): void;
    fileWrapper(type: string | null): FileWrapper;
    makeFileWrapper(baseName: string, type: string | null): Promise<FileWrapper>;
    undo(): void;
    redo(): void;
    show(completed: () => void | null): void;
    readonly canRedo: boolean;
    readonly canUndo: boolean;
    readonly fileType: string | null;
    readonly name: string | null;
    readonly writableTypes: Array<string>;
}

// OutlineDocument

declare class OutlineDocument extends Document {
    readonly editors: Array<Editor>;
    readonly outline: Outline;
}

// EditorColumnPosition

declare class EditorColumnPosition {
}

// Email

declare class Email {
    constructor ();
    generate(): void;
    blindCarbonCopy: string | Array<string> | null;
    body: string | null;
    carbonCopy: string | Array<string> | null;
    fileWrappers: Array<FileWrapper>;
    receiver: string | Array<string> | null;
    subject: string | null;
}

// Enumeration

declare class Enumeration {
    memberNamed(name: string): Enumeration.Member | null;
    add(name: string | null, at: EnumerationMemberPosition | null): Enumeration.Member;
    move(members: Array<Enumeration.Member>, to: EnumerationMemberPosition): void;
    readonly beginning: EnumerationMemberPosition;
    readonly end: EnumerationMemberPosition;
    readonly members: Array<Enumeration.Member>;
}

// Enumeration.Member

declare namespace Enumeration {
    class Member {
        remove(): void;
        readonly after: EnumerationMemberPosition;
        readonly before: EnumerationMemberPosition;
        readonly name: string;
    }
}

// EnumerationMemberPosition

declare class EnumerationMemberPosition {
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
    function fromURL(url: URL, options: Array<FileWrapper.ReadingOptions> | null): FileWrapper;
}

declare class FileWrapper {
    childNamed(name: string): FileWrapper | null;
    filenameForChild(child: FileWrapper): string | null;
    write(url: URL, options: Array<FileWrapper.WritingOptions> | null, originalContentsURL: URL | null): void;
    readonly children: Array<FileWrapper>;
    readonly contents: Data | null;
    readonly destination: URL | null;
    filename: string | null;
    preferredFilename: string | null;
    readonly type: FileWrapper.Type;
}

// FileWrapper.ReadingOptions

declare namespace FileWrapper.ReadingOptions {
    const Immediate: FileWrapper.ReadingOptions;
    const WihtoutMapping: FileWrapper.ReadingOptions;
    const all: Array<FileWrapper.ReadingOptions>;
}

declare namespace FileWrapper {
    class ReadingOptions {
    }
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

// FileWrapper.WritingOptions

declare namespace FileWrapper.WritingOptions {
    const Atomic: FileWrapper.WritingOptions;
    const UpdateNames: FileWrapper.WritingOptions;
    const all: Array<FileWrapper.WritingOptions>;
}

declare namespace FileWrapper {
    class WritingOptions {
    }
}

// Form

declare class Form {
    constructor ();
    addField(field: Form.Field, index: number | null): void;
    removeField(field: Form.Field): void;
    show(title: string, confirmTitle: string): Promise<Form>;
    readonly fields: Array<Form.Field>;
    validate: (Form: Form) => boolean | null;
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

// Form.Field.Password

declare namespace Form.Field {
    class Password extends Form.Field {
        constructor (key: string, displayName: string | null, value: string | null);
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

// Image

declare namespace Image {
    function symbolNamed(name: string): Image | null;
}

declare class Image {
}

// Item

declare class Item {
    setValueForColumn(value: Object | null, column: Column): void;
    valueForColumn(column: Column): Object | null;
    addChild(position: ItemPosition | null, configure: (child: Item) => void | null): Item;
    remove(): void;
    apply(f: (item: Item) => Item.ApplyResult | null): void;
    readonly after: ItemPosition;
    readonly ancestors: Array<Item>;
    readonly before: ItemPosition;
    readonly beginning: ItemPosition;
    readonly children: Array<Item>;
    childrenAreSections: boolean;
    readonly descendants: Array<Item>;
    readonly descendents: Array<Item>;
    readonly end: ItemPosition;
    readonly followingSiblings: Array<Item>;
    readonly hasChildren: boolean;
    readonly identifier: string;
    readonly index: number;
    readonly leaves: Array<Item>;
    readonly level: number;
    note: string;
    readonly outline: Outline;
    readonly parent: Item | null;
    readonly precedingSiblings: Array<Item>;
    readonly sections: Array<Item>;
    state: State | null;
    readonly style: Style;
    topic: string;
}

// Item.ApplyResult

declare namespace Item.ApplyResult {
    const Skip: Item.ApplyResult;
    const Stop: Item.ApplyResult;
    const all: Array<Item.ApplyResult>;
}

declare namespace Item {
    class ApplyResult {
    }
}

// ItemPosition

declare class ItemPosition {
}

// LigatureStyle

declare namespace LigatureStyle {
    const All: LigatureStyle;
    const Essential: LigatureStyle;
    const Standard: LigatureStyle;
    const all: Array<LigatureStyle>;
}

declare class LigatureStyle {
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
    image: Image | null;
    label: string;
}

// NamedStyle.List

declare namespace NamedStyle {
    class List {
        add(name: string | null): NamedStyle;
        byName(name: string): NamedStyle | null;
        byIdentifier(identifier: string): NamedStyle | null;
        moveStyles(styles: Array<NamedStyle>, position: NamedStylePosition): void;
        duplicateStyles(styles: Array<NamedStyle>, position: NamedStylePosition): Array<NamedStyle>;
        readonly all: Array<NamedStyle>;
        readonly beginning: NamedStylePosition;
        readonly end: NamedStylePosition;
    }
}

// NamedStylePosition

declare class NamedStylePosition {
}

// NoteDisplay

declare namespace NoteDisplay {
    const Inline: NoteDisplay;
    const Pane: NoteDisplay;
    const all: Array<NoteDisplay>;
}

declare class NoteDisplay {
}

// Notification

declare class Notification {
    constructor (title: string);
    show(): Promise<Notification>;
    subtitle: string | null;
    title: string;
}

// Outline

declare class Outline {
    itemWithIdentifier(identifier: string): Item | null;
    addColumn(columnType: Column.Type, position: EditorColumnPosition, configure: (column: Column) => void | null): Column;
    moveColumns(columns: Array<Column>, position: EditorColumnPosition): void;
    moveItems(items: Array<Item>, position: ItemPosition): void;
    duplicateItems(items: Array<Item>, position: ItemPosition): void;
    levelStyle(depth: number): Style;
    group(items: Array<Item>): Item | null;
    ungroup(items: Array<Item>): void;
    organize(items: Array<Item>, byColumns: Array<Column>, underItem: Item, pruneEmptyGroups: boolean | null): void;
    topItems(items: Array<Item>): Array<Item>;
    bottomItems(items: Array<Item>): Array<Item>;
    itemsSortedByPosition(items: Array<Item>): Array<Item>;
    onCellChanged(handler: PlugIn.Handler): PlugIn.Handler.Registration | null;
    alternateRowColor: Color | null;
    readonly app: Application;
    backgroundColor: Color;
    readonly baseStyle: Style;
    readonly columnTitleStyle: Style;
    readonly columns: ColumnArray;
    readonly console: Console;
    readonly document: OutlineDocument | null;
    horizontalGridColor: Color | null;
    readonly levelStyles: Array<Style>;
    readonly namedStyles: NamedStyle.List;
    readonly noteColumn: Column;
    readonly outlineColumn: Column;
    readonly plugIns: Array<PlugIn>;
    readonly rootItem: Item;
    readonly statusColumn: Column;
    readonly styleAttributes: Array<Style.Attribute>;
    verticalGridColor: Color | null;
}

// Pasteboard

declare namespace Pasteboard {
    function makeUnique(): Pasteboard;
    const general: Pasteboard;
}

declare class Pasteboard {
    availableType(types: Array<TypeIdentifier>): TypeIdentifier | null;
    addItems(items: Array<Pasteboard.Item>): void;
    clear(): void;
    dataForType(type: TypeIdentifier): Data | null;
    setDataForType(data: Data, type: TypeIdentifier): void;
    stringForType(type: TypeIdentifier): string | null;
    setStringForType(string: string, type: TypeIdentifier): void;
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
        setDataForType(data: Data, type: TypeIdentifier): void;
        stringForType(type: TypeIdentifier): string | null;
        setStringForType(string: string, type: TypeIdentifier): void;
        readonly types: Array<TypeIdentifier>;
    }
}

// PlugIn

declare namespace PlugIn {
    function find(identifier: string, minimumVersion: Version | null): PlugIn | null;
    const all: Array<PlugIn>;
}

declare class PlugIn {
    library(identifier: string): PlugIn.Library | null;
    action(identifier: string): PlugIn.Action | null;
    handler(identifier: string): PlugIn.Handler | null;
    resourceNamed(name: string): URL | null;
    imageNamed(name: string): Image | null;
    localizedResourceNamed(filename: string): FileWrapper | null;
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
        remove(): void;
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

// Preferences

declare class Preferences {
    constructor (identifier: string | null);
    read(key: string): Object | null;
    readBoolean(key: string): boolean;
    readString(key: string): string | null;
    readNumber(key: string): number;
    readDate(key: string): Date | null;
    readData(key: string): Data | null;
    write(key: string, value: boolean | string | number | Date | Data | null): void;
    remove(key: string): void;
    readonly identifier: string;
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
    readonly allObjects: Array<Object>;
    readonly columns: Array<Column>;
    readonly document: OutlineDocument | null;
    readonly editor: Editor | null;
    readonly items: Array<Item>;
    readonly nodes: Array<ItemTreeNode>;
    readonly outline: Outline | null;
    readonly styles: Array<Style>;
}

// SharePanel

declare class SharePanel {
    constructor (items: Array<URL | string | Image | FileWrapper>);
    addItem(shareItem: URL | string | Image | FileWrapper): void;
    addItems(shareItems: Array<URL | string | Image | FileWrapper>): void;
    removeItem(shareItem: URL | string | Image | FileWrapper): void;
    removeItems(shareItems: Array<URL | string | Image | FileWrapper>): void;
    clearItems(): void;
    show(): void;
    items: Array<URL | string | Image | FileWrapper>;
}

// Size

declare class Size {
    constructor (width: number, height: number);
    height: number;
    width: number;
}

// SortOrdering

declare namespace SortOrdering {
    const Ascending: SortOrdering;
    const Descending: SortOrdering;
    const all: Array<SortOrdering>;
}

declare class SortOrdering {
}

// Speech

declare class Speech {
}

// Speech.Boundary

declare namespace Speech.Boundary {
    const Immediate: Speech.Boundary;
    const Word: Speech.Boundary;
    const all: Array<Speech.Boundary>;
}

declare namespace Speech {
    class Boundary {
    }
}

// Speech.Synthesizer

declare namespace Speech {
    class Synthesizer {
        constructor ();
        speakUtterance(utterance: Speech.Utterance): void;
        stopSpeaking(boundary: Speech.Boundary): boolean;
        pauseSpeaking(boundary: Speech.Boundary): boolean;
        continueSpeaking(): boolean;
        readonly paused: boolean;
        readonly speaking: boolean;
    }
}

// Speech.Utterance

declare namespace Speech.Utterance {
    const defaultSpeechRate: number;
    const maximumSpeechRate: number;
    const minimumSpeechRate: number;
}

declare namespace Speech {
    class Utterance {
        constructor (string: string);
        pitchMultiplier: number;
        postUtteranceDelay: number;
        preUtteranceDelay: number;
        prefersAssistiveTechnologySettings: boolean;
        rate: number;
        readonly string: string | null;
        voice: Speech.Voice | null;
        volume: number;
    }
}

// Speech.Voice

declare namespace Speech.Voice {
    function withLanguage(code: string | null): Speech.Voice | null;
    function withIdentifier(identifier: string): Speech.Voice | null;
    const allVoices: Array<Speech.Voice>;
    const currentLanguageCode: string;
}

declare namespace Speech {
    class Voice {
        readonly gender: Speech.Voice.Gender;
        readonly identifier: string;
        readonly language: string;
        readonly name: string;
    }
}

// Speech.Voice.Gender

declare namespace Speech.Voice.Gender {
    const Female: Speech.Voice.Gender;
    const Male: Speech.Voice.Gender;
    const Unspecified: Speech.Voice.Gender;
    const all: Array<Speech.Voice.Gender>;
}

declare namespace Speech.Voice {
    class Gender {
    }
}

// State

declare namespace State {
    const Checked: State;
    const Mixed: State;
    const Unchecked: State;
    const all: Array<State>;
}

declare class State {
}

// StringEncoding

declare namespace StringEncoding {
    const ASCII: StringEncoding;
    const ISO2022JP: StringEncoding;
    const ISOLatin1: StringEncoding;
    const ISOLatin2: StringEncoding;
    const JapaneseEUC: StringEncoding;
    const MacOSRoman: StringEncoding;
    const NextStep: StringEncoding;
    const NonLossyASCII: StringEncoding;
    const ShiftJIS: StringEncoding;
    const Symbol: StringEncoding;
    const UTF16: StringEncoding;
    const UTF16BigEndian: StringEncoding;
    const UTF16LittleEndian: StringEncoding;
    const UTF32: StringEncoding;
    const UTF32BigEndian: StringEncoding;
    const UTF32LittleEndian: StringEncoding;
    const UTF8: StringEncoding;
    const Unicode: StringEncoding;
    const WindowsCP1250: StringEncoding;
    const WindowsCP1251: StringEncoding;
    const WindowsCP1252: StringEncoding;
    const WindowsCP1253: StringEncoding;
    const WindowsCP1254: StringEncoding;
    const all: Array<StringEncoding>;
}

declare class StringEncoding {
}

// Style

declare class Style {
    set(attribute: Style.Attribute, value: Object | null): boolean;
    get(attribute: Style.Attribute): Object | null;
    localValueForAttribute(attribute: Style.Attribute): Object | null;
    addNamedStyle(namedStyle: NamedStyle): void;
    removeNamedStyle(namedStyle: NamedStyle): void;
    influencedBy(otherStyle: Style): boolean;
    setStyle(style: Style): void;
    clear(): void;
    fontFillColor: Color;
    readonly link: URL | null;
    readonly locallyDefinedAttributes: Array<Style.Attribute>;
    readonly namedStyles: Array<NamedStyle>;
}

// NamedStyle

declare class NamedStyle extends Style {
    remove(): void;
    readonly after: NamedStylePosition;
    readonly before: NamedStylePosition;
    readonly identifier: string;
    name: string;
}

// Style.Attribute

declare namespace Style.Attribute {
    const BackgroundColor: Style.Attribute;
    const BaselineOffset: Style.Attribute;
    const BaselineSuperscript: Style.Attribute;
    const Expansion: Style.Attribute;
    const FontCondensed: Style.Attribute;
    const FontFamily: Style.Attribute;
    const FontFillColor: Style.Attribute;
    const FontFixedPitch: Style.Attribute;
    const FontItalic: Style.Attribute;
    const FontName: Style.Attribute;
    const FontNarrow: Style.Attribute;
    const FontSize: Style.Attribute;
    const FontStrokeColor: Style.Attribute;
    const FontStrokeWidth: Style.Attribute;
    const FontWeight: Style.Attribute;
    const KerningAdjustment: Style.Attribute;
    const LigatureSelection: Style.Attribute;
    const Link: Style.Attribute;
    const Obliqueness: Style.Attribute;
    const ParagraphAlignment: Style.Attribute;
    const ParagraphBaseWritingDirection: Style.Attribute;
    const ParagraphDefaultTabInterval: Style.Attribute;
    const ParagraphFirstLineHeadIndent: Style.Attribute;
    const ParagraphHeadIndent: Style.Attribute;
    const ParagraphLineHeightMultiple: Style.Attribute;
    const ParagraphLineSpacing: Style.Attribute;
    const ParagraphMaximumLineHeight: Style.Attribute;
    const ParagraphMinimumLineHeight: Style.Attribute;
    const ParagraphSpacing: Style.Attribute;
    const ParagraphSpacingBefore: Style.Attribute;
    const ParagraphTabStops: Style.Attribute;
    const ParagraphTailIndent: Style.Attribute;
    const ShadowBlurRadius: Style.Attribute;
    const ShadowColor: Style.Attribute;
    const ShadowOffset: Style.Attribute;
    const StrikethroughAffinity: Style.Attribute;
    const StrikethroughColor: Style.Attribute;
    const StrikethroughPattern: Style.Attribute;
    const StrikethroughStyle: Style.Attribute;
    const UnderlineAffinity: Style.Attribute;
    const UnderlineColor: Style.Attribute;
    const UnderlinePattern: Style.Attribute;
    const UnderlineStyle: Style.Attribute;
}

declare namespace Style {
    class Attribute {
        readonly defaultValue: Object;
        readonly key: string;
    }
}

// Text

declare namespace Text {
    function makeFileAttachment(fileWrapper: FileWrapper, style: Style): Text;
}

declare class Text {
    constructor (string: string, style: Style);
    textInRange(range: Text.Range): Text;
    styleForRange(range: Text.Range): Style;
    ranges(component: TextComponent, useEnclosingRange: boolean | null): Array<Text.Range>;
    replace(range: Text.Range, with_: Text): void;
    append(text: Text): void;
    insert(position: Text.Position, text: Text): void;
    remove(range: Text.Range): void;
    find(string: string, options: Array<Text.FindOption> | null, range: Text.Range | null): Text.Range | null;
    readonly attachments: Array<Text>;
    readonly attributeRuns: Array<Text>;
    readonly characters: Array<Text>;
    readonly end: Text.Position;
    readonly fileWrapper: FileWrapper | null;
    readonly paragraphs: Array<Text>;
    readonly range: Text.Range;
    readonly sentences: Array<Text>;
    readonly start: Text.Position;
    string: string;
    readonly style: Style;
    readonly words: Array<Text>;
}

// Text.FindOption

declare namespace Text.FindOption {
    const Anchored: Text.FindOption;
    const Backwards: Text.FindOption;
    const CaseInsensitive: Text.FindOption;
    const DiacriticInsensitive: Text.FindOption;
    const ForcedOrdering: Text.FindOption;
    const Literal: Text.FindOption;
    const Numeric: Text.FindOption;
    const RegularExpression: Text.FindOption;
    const WidthInsensitive: Text.FindOption;
    const all: Array<Text.FindOption>;
}

declare namespace Text {
    class FindOption {
    }
}

// Text.Position

declare namespace Text {
    class Position {
    }
}

// Text.Range

declare namespace Text {
    class Range {
        constructor (start: Text.Position, end: Text.Position);
        readonly end: Text.Position;
        readonly isEmpty: boolean;
        readonly start: Text.Position;
    }
}

// TextAlignment

declare namespace TextAlignment {
    const Center: TextAlignment;
    const Justified: TextAlignment;
    const Left: TextAlignment;
    const Natural: TextAlignment;
    const Right: TextAlignment;
    const all: Array<TextAlignment>;
}

declare class TextAlignment {
}

// TextComponent

declare namespace TextComponent {
    const Attachments: TextComponent;
    const AttributeRuns: TextComponent;
    const Characters: TextComponent;
    const Paragraphs: TextComponent;
    const Sentences: TextComponent;
    const Words: TextComponent;
    const all: Array<TextComponent>;
}

declare class TextComponent {
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
    function once(interval: number, action: (timer: Timer) => void): Timer;
    function repeating(interval: number, action: (timer: Timer) => void): Timer;
}

declare class Timer {
    cancel(): void;
    readonly interval: number;
}

// ToolbarItem

declare class ToolbarItem {
    image: Image | null;
    label: string;
    toolTip: string | null;
}

// Tree

declare class Tree {
    nodeForObject(object: Object): TreeNode | null;
    nodesForObjects(object: Array<Object>): Array<TreeNode>;
    reveal(nodes: Array<TreeNode>): void;
    select(nodes: Array<TreeNode>, extending: boolean | null): void;
    copyNodes(nodes: Array<TreeNode>, to: Pasteboard): void;
    paste(from: Pasteboard, parentNode: TreeNode | null, childIndex: number | null): void;
    readonly rootNode: TreeNode;
    readonly selectedNodes: Array<TreeNode>;
}

// Editor

declare class Editor extends Tree {
    visibilityOfColumn(column: Column): boolean;
    setVisibilityOfColumn(column: Column, visible: boolean): void;
    widthForColumn(column: Column): number;
    setWidthForColumn(column: Column, width: number): void;
    sortOrderingForColumn(column: Column): SortOrdering | null;
    setSortOrderingForColumn(column: Column, order: SortOrdering | null): void;
    withoutSorting(f: Function): Object | null;
    summaryForColumn(column: Column): Column.Summary | null;
    setSummaryForColumn(column: Column, summary: Column.Summary | null): void;
    beforeColumn(column: Column | null): EditorColumnPosition;
    afterColumn(column: Column | null): EditorColumnPosition;
    nodeForItem(item: Item): TreeNode | null;
    nodesForItems(items: Array<Item>): Array<TreeNode>;
    scrollToNode(node: TreeNode): void;
    indentNodes(nodes: Array<TreeNode>): void;
    outdentNodes(nodes: Array<TreeNode>): void;
    focusedItems: Array<Item>;
    foldingEnabled: boolean;
    noteDisplay: NoteDisplay;
    readonly selection: Selection;
}

// TreeNode

declare class TreeNode {
    childAtIndex(childIndex: number): TreeNode;
    expand(completely: boolean | null): void;
    collapse(completely: boolean | null): void;
    expandNote(completely: boolean | null): void;
    collapseNote(completely: boolean | null): void;
    reveal(): void;
    apply(f: (node: TreeNode) => ApplyResult | null): ApplyResult | null;
    readonly canCollapse: boolean;
    readonly canExpand: boolean;
    readonly childCount: number;
    readonly children: Array<TreeNode>;
    readonly index: number;
    readonly isExpanded: boolean;
    readonly isNoteExpanded: boolean;
    readonly isRevealed: boolean;
    readonly isRootNode: boolean;
    readonly isSelectable: boolean;
    isSelected: boolean;
    readonly level: number;
    readonly object: Object;
    readonly parent: TreeNode | null;
    readonly rootNode: TreeNode;
}

// ItemTreeNode

declare class ItemTreeNode extends TreeNode {
    setValueForColumn(value: Object | null, column: Column): void;
    valueForColumn(column: Column): Object | null;
    state: State | null;
}

// TypeIdentifier

declare namespace TypeIdentifier {
    function fromPathExtension(pathExtension: string, isDirectory: boolean): TypeIdentifier;
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
    function fromString(string: string, relativeToURL: URL | null): URL | null;
    function fromPath(path: string, isDirectory: boolean, relativeToURL: URL | null): URL;
    function tellScript(app: string, js: string, arg: Object | null): URL | null;
    function tellFunction(app: string, jsFunction: Function, arg: Object | null): URL | null;
    const currentAppScheme: string;
    const documentsDirectory: URL;
}

declare class URL {
    fetch(success: (contents: Data) => void, failure: (error: Error) => void | null): void;
    call(success: Function, failure: Function | null): void;
    open(): void;
    find(types: Array<TypeIdentifier>, recurse: boolean | null): Promise<Array<URL>>;
    toString(): string;
    appendingPathComponent(component: string): URL;
    appendingPathExtension(pathExtension: string): URL;
    deletingPathExtension(): URL;
    deletingLastPathComponent(): URL;
    readonly absoluteString: string;
    readonly absoluteURL: URL;
    readonly baseURL: URL | null;
    readonly fragment: string | null;
    readonly hasDirectoryPath: boolean;
    readonly host: string | null;
    readonly isFileURL: boolean;
    readonly lastPathComponent: string;
    readonly password: string | null;
    readonly path: string | null;
    readonly pathComponents: Array<string>;
    readonly pathExtension: string;
    readonly port: number | null;
    readonly query: string | null;
    readonly relativePath: string | null;
    readonly relativeString: string;
    readonly scheme: string | null;
    readonly string: string;
    readonly user: string | null;
}

// URL.Access

declare namespace URL {
    class Access {
        readonly url: URL;
    }
}

// URL.Bookmark

declare namespace URL.Bookmark {
    function fromURL(url: URL): URL.Bookmark;
}

declare namespace URL {
    class Bookmark {
        access(): Promise<URL.Access>;
    }
}

// URL.Components

declare namespace URL.Components {
    function fromString(string: string): URL.Components | null;
    function fromURL(url: URL, resolvingAgainstBaseURL: boolean): URL.Components | null;
}

declare namespace URL {
    class Components {
        constructor ();
        urlRelativeTo(base: URL | null): URL | null;
        fragment: string | null;
        host: string | null;
        password: string | null;
        path: string;
        port: number | null;
        query: string | null;
        queryItems: Array<URL.QueryItem> | null;
        scheme: string | null;
        readonly url: URL | null;
        user: string | null;
    }
}

// URL.FetchRequest

declare namespace URL.FetchRequest {
    function fromString(string: string): URL.FetchRequest | null;
}

declare namespace URL {
    class FetchRequest {
        constructor ();
        fetch(): Promise<URL.FetchResponse>;
        allowsConstrainedNetworkAccess: boolean;
        allowsExpensiveNetworkAccess: boolean;
        bodyData: Data | null;
        bodyString: string | null;
        cache: string | null;
        headers: object;
        httpShouldHandleCookies: boolean;
        httpShouldUsePipelining: boolean;
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

// URL.QueryItem

declare namespace URL {
    class QueryItem {
        constructor (name: string, value: string | null);
        readonly name: string;
        readonly value: string | null;
    }
}

// UnderlineAffinity

declare namespace UnderlineAffinity {
    const ByWord: UnderlineAffinity;
    const None: UnderlineAffinity;
    const all: Array<UnderlineAffinity>;
}

declare class UnderlineAffinity {
}

// UnderlinePattern

declare namespace UnderlinePattern {
    const Dash: UnderlinePattern;
    const DashDot: UnderlinePattern;
    const DashDotDot: UnderlinePattern;
    const Dot: UnderlinePattern;
    const Solid: UnderlinePattern;
    const all: Array<UnderlinePattern>;
}

declare class UnderlinePattern {
}

// UnderlineStyle

declare namespace UnderlineStyle {
    const Double: UnderlineStyle;
    const None: UnderlineStyle;
    const Single: UnderlineStyle;
    const Thick: UnderlineStyle;
    const all: Array<UnderlineStyle>;
}

declare class UnderlineStyle {
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

// WritingDirection

declare namespace WritingDirection {
    const LeftToRight: WritingDirection;
    const Natural: WritingDirection;
    const RightToLeft: WritingDirection;
    const all: Array<WritingDirection>;
}

declare class WritingDirection {
}

// XML

declare class XML {
}

// XML.Document

declare namespace XML.Document {
    function fromData(data: Data, whitespaceBehavior: XML.WhitespaceBehavior | null): XML.Document;
}

declare namespace XML {
    class Document {
        constructor (rootElement: string | XML.Element, configuration: XML.Document.Configuration | null);
        xmlData(): Data;
        addElement(name: string, f: () => void | null): void;
        appendString(string: string): void;
        setAttribute(attribute: string, value: string | null): void;
        readonly dtdPublicID: string | null;
        readonly dtdSystemID: URL | null;
        readonly rootElement: XML.Element;
        readonly schemaID: URL | null;
        readonly schemaNamespace: string | null;
        readonly stringEncoding: StringEncoding;
        readonly topElement: XML.Element;
        readonly whitespaceBehavior: XML.WhitespaceBehavior;
    }
}

// XML.Document.Configuration

declare namespace XML.Document {
    class Configuration {
        constructor ();
        dtdPublicID: string | null;
        dtdSystemID: URL | null;
        schemaID: URL | null;
        schemaNamespace: string | null;
        stringEncoding: StringEncoding;
        whitespaceBehavior: XML.WhitespaceBehavior | null;
    }
}

// XML.Element

declare namespace XML {
    class Element {
        constructor (name: string);
        childAtIndex(childIndex: number): string | XML.Element | null;
        insertChild(child: string | XML.Element, childIndex: number): void;
        appendChild(child: string | XML.Element): void;
        removeChildAtIndex(childIndex: number): void;
        removeAllChildren(): void;
        firstChildNamed(name: string): XML.Element | null;
        firstChildAtPath(path: string): XML.Element | null;
        firstChildWithAttribute(attribute: string, value: string): XML.Element | null;
        attributeNamed(name: string): string | null;
        setAttribute(name: string, value: string | null): void;
        apply(f: (node: string | XML.Element) => ApplyResult | null): ApplyResult | null;
        readonly attributeCount: number;
        readonly attributeNames: Array<string>;
        children: Array<string | XML.Element>;
        readonly childrenCount: number;
        readonly lastChild: string | XML.Element | null;
        readonly name: string;
        readonly stringContents: string;
    }
}

// XML.WhitespaceBehavior

declare namespace XML {
    class WhitespaceBehavior {
        constructor (defaultBehavior: XML.WhitespaceBehavior.Type);
        setBehaviorForElementName(behavior: XML.WhitespaceBehavior.Type, elementName: string): void;
        behaviorForElementName(elementName: string): XML.WhitespaceBehavior.Type;
        readonly defaultBehavior: XML.WhitespaceBehavior.Type;
    }
}

// XML.WhitespaceBehavior.Type

declare namespace XML.WhitespaceBehavior.Type {
    const Auto: XML.WhitespaceBehavior.Type;
    const Ignore: XML.WhitespaceBehavior.Type;
    const Preserve: XML.WhitespaceBehavior.Type;
    const all: Array<XML.WhitespaceBehavior.Type>;
}

declare namespace XML.WhitespaceBehavior {
    class Type {
    }
}
