import 'package:ace/models/question_model.dart';

final List<QuestionModel> flutterQuestions = [
  QuestionModel(
    question: 'What is Flutter?',
    answer:
        'Flutter is an open-source UI software development kit created by Google. It enables developers to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter uses Dart as its primary programming language, which combines object-oriented and functional programming paradigms. Dart offers several key features that make it well-suited for Flutter development, including Just-in-Time (JIT) and Ahead-of-Time (AOT) compilation, strong and sound typing, high performance, and a rich standard library.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'sdk', 'framework'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'What is a Widget in Flutter?',
    answer:
        'In Flutter, a widget is an immutable description of part of a user interface. Widgets define how the UI should look and behave at a given moment in time. Everything in Flutter—from text and buttons to layouts and even the entire app—is a widget. Widgets are combined to build complex interfaces. There are two main types: stateless widgets, which do not change once built, and stateful widgets, which can rebuild themselves when their internal state changes.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Widgets',
    tags: ['widget', 'ui', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question:
        'What is the difference between StatelessWidget and StatefulWidget?',
    answer:
        'The main difference between a StatelessWidget and a StatefulWidget in Flutter is how they handle state. A StatelessWidget is immutable, meaning that once it is built, it cannot change based on internal data. It is typically used for UI elements that do not need to update dynamically, such as static text, icons, or layout structures. However, a StatelessWidget can still be rebuilt if its parent widget rebuilds and passes new data. In contrast, a StatefulWidget can change over time—it maintains mutable state that can be updated in response to user interaction, data changes, or other events. When its state changes, it triggers a rebuild to reflect the new UI. This makes StatefulWidget suitable for dynamic content such as form inputs, animations, or interactive components. Choosing between them depends on whether the widget needs to manage and respond to internal state changes during its lifecycle.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Widgets',
    tags: ['stateless', 'stateful', 'widget'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'What is the purpose of the pubspec.yaml file in Flutter?',
    answer:
        'The pubspec.yaml file in Flutter is the central configuration file for a project. It defines the project’s metadata, such as its name, description, and version. Most importantly, it manages the project’s dependencies, including external packages and plugins. Additionally, it can specify assets like images and fonts, as well as configuration for things like Flutter SDK constraints. Essentially, pubspec.yaml tells Flutter and Dart how to build and run your app with all the necessary resources and libraries.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Project Structure',
    tags: ['pubspec', 'yaml', 'dependencies'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'Explain the concept of hot reload in Flutter.',
    answer:
        'Hot reload in Flutter is a development feature that allows you to instantly see the results of code changes without restarting the entire app. When you modify the source code, Flutter injects the updated code into the running app, preserving the current state. This speeds up development by enabling quick iterations, testing UI changes, and fixing bugs without losing the app’s state or navigation context. It’s one of the key reasons Flutter offers a fast and productive development experience.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Development',
    tags: ['hot reload', 'development', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'Explain the concept of hot restart in Flutter.',
    answer:
        'Hot restart in Flutter is a feature that quickly restarts your app by rebuilding the entire widget tree from scratch and resetting the app’s state. Unlike hot reload, which preserves the current state, hot restart clears everything and starts the app fresh. This is useful when changes affect the app’s initialization or global state, ensuring that the app runs with the latest code and a clean state. It’s faster than a full rebuild but slower than hot reload.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Development',
    tags: ['hot restart', 'development', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'What is a widget tree?',
    answer:
        'The widget tree in Flutter is a hierarchical structure that represents all the widgets used to build the user interface of an app. Each widget is a node in this tree, and widgets can contain child widgets, forming a nested structure. This tree defines the layout, appearance, and behavior of the UI at any given moment. Flutter rebuilds parts of the widget tree to update the UI efficiently when state changes occur. Essentially, the widget tree is the blueprint Flutter uses to render the app’s interface.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Development',
    tags: ['tree', 'widget', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'What is a element tree?',
    answer:
        'The element tree in Flutter is a runtime structure that represents the active instances of widgets mounted on the screen. While the widget tree is an immutable blueprint describing the UI, the element tree holds the mutable objects that manage the widgets lifecycle, track their position in the UI, and handle updates. Elements connect widgets to the underlying render objects and allow Flutter to efficiently rebuild and update the UI when the widget tree changes. In short, the element tree is the live, interactive version of the widget tree during app execution.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Development',
    tags: ['tree', 'element', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'What is a render tree?',
    answer:
        'The render tree in Flutter is a lower-level structure responsible for actually painting the UI on the screen. It is created from the element tree and consists of render objects that handle layout, size, and painting of widgets. While widgets describe what the UI should look like, and elements manage the widget lifecycle, render objects define how things are drawn and arranged visually. The render tree is what Flutter uses to efficiently render pixels and display the final interface to the user.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Development',
    tags: ['tree', 'render', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'Dependency Injection (DI)',
    answer:
        'Dependency Injection (DI) is a design pattern used to manage dependencies by providing an object with the components it needs rather than having it create them internally. This helps follow the Dependency Inversion Principle, making code more modular, testable, and flexible. In Flutter, DI is commonly used to supply services, repositories, or data sources to widgets or business logic layers without hard-coding them. DI can be implemented manually by passing dependencies through constructors, or via frameworks like Provider, get_it, or riverpod, which help manage and inject dependencies across the app. This approach simplifies testing (by allowing the injection of mocks or stubs) and encourages loose coupling between components.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Development',
    tags: ['dependency Injection', 'DI', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: ' What is the roll of BuildContext in FLutter?',
    answer:
        'BuildContext in Flutter is an object that represents the location of a widget within the widget tree. It provides access to the widget’s position, its parent, and the surrounding environment. Developers use BuildContext to look up theme data, find ancestor widgets, access localization, and interact with the widget tree during the build process. Essentially, it’s a handle that helps widgets communicate with the rest of the UI and retrieve information they need to build themselves correctly.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Development',
    tags: ['build', 'context', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'How does inheritedWidget work in Flutter?',
    answer:
        'InheritedWidget in Flutter is a special type of widget used to efficiently share data down the widget tree. It holds some data and makes it accessible to its descendant widgets without the need to pass the data explicitly through constructors. When the data inside an InheritedWidget changes, only the widgets that depend on it are rebuilt. This mechanism helps manage state and propagate information like themes or user settings across the app in a performant way. Widgets access the data by calling BuildContext.dependOnInheritedWidgetOfExactType.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'widget', 'data'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'The lifecycle of an Element',
    answer:
        'The lifecycle of an Element in Flutter starts when it is created by calling the createElement() method on its widget. Once created, the element is mounted to the widget tree via the mount() method, which links it to its parent and render objects. During its lifetime, the element can be updated through the update() method when the widget configuration changes, allowing Flutter to efficiently rebuild only necessary parts. If the widget depends on inherited widgets, the didChangeDependencies() method is called when those dependencies change. Finally, when the element is no longer needed, it is unmounted with the unmount() method and disposed to clean up resources. This lifecycle manages the connection between widgets and the render tree, enabling Flutter’s efficient UI updates.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Widgets',
    tags: ['element', 'lifecycle', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'The lifecycle of a StateFullWidget',
    answer:
        'The lifecycle of a StatefulWidget starts when Flutter calls its createState() method to create the associated State object. This state object goes through several key stages. First, initState() is called once to perform initializations, such as setting up variables or subscribing to streams. After that, didChangeDependencies() is called immediately following initState() and any time dependencies from inherited widgets change. The build() method is then called to render the UI, and it can be called multiple times throughout the widget’s life whenever the state changes. When the widget’s configuration changes, didUpdateWidget() is invoked to compare the old and new widget instances. If the state is removed temporarily from the widget tree, deactivate() is called, and when the state is permanently disposed of, the dispose() method runs to clean up resources such as controllers or subscriptions. Throughout this lifecycle, calling setState() signals Flutter to rebuild the widget with updated data. This lifecycle ensures that a StatefulWidget can manage dynamic and interactive parts of the UI efficiently and safely.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Widgets',
    tags: ['widget', 'lifecycle', 'flutter'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'GlobalKeys',
    answer:
        'A GlobalKey in Flutter is a special type of key that uniquely identifies a widget across the entire widget tree. Unlike local keys, which only need to be unique among sibling widgets, a GlobalKey allows you to access a widget’s state, context, or render object from anywhere in the app. This is particularly useful for scenarios where you need to interact with a widget directly, such as accessing a form’s state to validate inputs or controlling animations. However, GlobalKeys should be used sparingly because they can impact performance and complicate the widget tree if overused.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'sdk', 'key'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'LocalKeys',
    answer:
        'A LocalKey in Flutter is used to uniquely identify widgets within the same level of the widget tree, typically among sibling widgets. It helps Flutter differentiate between widgets when rebuilding the UI, ensuring the right widgets are updated or preserved during widget tree changes. Common types of local keys include ValueKey and ObjectKey. Unlike GlobalKey, which is unique across the entire app, LocalKeys have a more limited scope and are generally lighter and more efficient to use when you only need to distinguish widgets within a specific part of the tree.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'sdk', 'key'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'Bindings',
    answer:
        'In Flutter, bindings are classes that connect the framework to the underlying platform and manage the lifecycle of the app. The most common example is the WidgetsBinding, which coordinates the interaction between the Flutter engine and the widget layer. It handles important tasks like scheduling frames, processing input events, and managing the rendering pipeline. Bindings ensure that the app responds properly to system events such as screen size changes, app lifecycle events, or user input. They act as the glue between Flutter’s core engine and the UI framework.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'sdk', 'binding'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Platform Channels',
    answer:
        'Platform Channels in Flutter provide a way to communicate between the Flutter app and the native platform (such as Android or iOS). They allow Flutter code written in Dart to invoke platform-specific functionality using native languages like Kotlin, Java, Swift, or Objective-C, and receive results back asynchronously. This mechanism is essential when you need to access features that are not available directly through Flutter, such as sensors, native APIs, or platform-specific services. Platform Channels use a message-passing system with codecs to serialize and deserialize data, enabling seamless integration between Flutter and native code.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'sdk', 'platform'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'The architecture of Flutter',
    answer:
        'Flutter’s architecture consists of three main layers. First, the Flutter SDK provides the developer tools, the Dart framework, and a rich set of reusable widgets that you use to build your app’s UI. Second, the Flutter Engine is a low-level runtime written in C++ responsible for rendering, text layout, compositing, and handling input events. This engine uses the graphics renderer—previously Skia, and now the newer Impeller—to draw pixels on the screen efficiently. Third, the Embedder layer acts as a bridge between the Flutter engine and the underlying operating system, managing platform-specific interactions and integration with native APIs. Together, these components allow Flutter to compile Dart code ahead-of-time (AOT) into native machine code and render a high-performance, consistent UI across multiple platforms.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'sdk', 'architecture'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Flutter SDK',
    answer:
        'The Flutter SDK is a collection of tools, libraries, and APIs that developers use to build Flutter apps. It includes the Dart programming language, the Flutter framework with its rich set of pre-built widgets, and development tools like the Flutter CLI and debugging utilities. The SDK allows you to write, compile, and debug your app’s code, and it works together with the Flutter Engine and platform-specific embedders to deliver a smooth, native-like experience on multiple platforms.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'sdk', 'architecture'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Animation Stages',
    answer:
        'In Flutter, animations typically go through several key stages. First, the animation is initialized, where an AnimationController is created to control the animation’s duration and progress. Next, during the running stage, the controller drives the animation forward or backward, updating values over time. The framework listens for these changes and triggers rebuilds to reflect the animation state in the UI. Finally, the animation can reach a completed or dismissed state, signaling the end or reversal of the animation. Developers can also pause, repeat, or reverse animations by controlling the AnimationController. These stages allow smooth and flexible animations within Flutter apps.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'animation'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Types of Animations in Flutter',
    answer:
        'Flutter supports several types of animations to create rich and interactive user experiences. The main categories are explicit animations and implicit animations. Explicit animations give you full control by using an AnimationController to drive changes over time, allowing for precise timing and complex sequences. Implicit animations, on the other hand, are simpler to use and automatically animate changes to widget properties like size, color, or position using widgets such as AnimatedContainer or AnimatedOpacity. Additionally, Flutter provides physics-based animations that simulate natural motion, such as SpringSimulation. Understanding these types helps developers choose the right approach based on the animation complexity and control needed.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'animation'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'FFI (Foreign Function Interface)',
    answer:
        'FFI, or Foreign Function Interface, in Flutter allows Dart code to call native C or C++ code directly. This is useful when you need to use existing native libraries, perform high-performance operations, or access platform-specific features not available through Flutter’s standard APIs. By using FFI, developers can write Dart bindings to native code, enabling seamless integration without the overhead of platform channels. This approach improves performance and expands Flutter’s capabilities, especially for complex tasks like cryptography, image processing, or hardware interaction.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'FFI', 'native'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Clean Architecture',
    answer:
        'Clean Architecture in Flutter is an architectural approach that promotes separation of concerns, testability, and maintainability by organizing the codebase into distinct layers. It typically consists of three main layers. The presentation layer includes the UI and state management logic using tools like Provider, BLoC, or Riverpod; it handles user interaction and displays data. The domain layer contains the core business logic and defines abstract contracts, such as use cases and repository interfaces. This layer is independent of Flutter or any external frameworks, making it highly testable and reusable. Lastly, the data layer is responsible for data access and persistence, providing concrete implementations of repositories and handling communication with APIs, databases, or local storage. Dependencies only flow inward, meaning each outer layer depends on the one inside it, but not the other way around. This structure keeps the app modular, scalable, and easier to manage as it grows.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'clean Architecture', 'state'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Build modes',
    answer:
        'Flutter supports three main build modes: Debug, Profile, and Release. The Debug mode is used during development; it enables hot reload, extensive error checking, and debugging tools but has slower performance. The Profile mode is optimized to measure performance with some debugging capabilities still available, allowing developers to analyze app behavior under near-release conditions. Finally, the Release mode compiles the app with full optimizations, disables debugging, and provides the best performance for production deployment. Choosing the right build mode helps balance development convenience with app performance.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'build', 'debug', 'profile', 'release'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'CustomPaint ',
    answer:
        'CustomPaint is a widget in Flutter that allows developers to create custom graphics and drawings directly on the canvas. It provides a painter property where you supply a class extending CustomPainter to define how to paint shapes, lines, or complex visuals. This gives fine-grained control over rendering beyond built-in widgets, making it ideal for creating charts, animations, or unique UI elements. The CustomPainter handles the painting logic in its paint() method and can also decide when to repaint by implementing shouldRepaint(). Using CustomPaint enables highly flexible and performant custom rendering in Flutter apps.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['customPaint', 'graphic', 'canvas'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'What is a Tween?',
    answer:
        'A Tween in Flutter stands for "in-between" and is used to define a range of values that an animation can interpolate between. It doesn’t perform the animation itself but maps the animation controller’s values (typically from 0.0 to 1.0) to any data type, such as color, size, offset, or double. For example, a Tween<double>(begin: 0, end: 100) will produce values between 0 and 100 based on the animation’s progress. Tweens are commonly used with animation widgets like TweenAnimationBuilder or in combination with AnimationController to create smooth transitions in UI elements.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'animation', 'tween'],
    difficulty: Difficulty.senior,
  ),
  QuestionModel(
    question: 'Tween animation',
    answer:
        'Tween animation in Flutter refers to the use of a Tween (short for "in-between") to interpolate between two values over time, driven by an animation. A Tween defines a range—like from 0 to 1, or from one color to another—and maps the animation controller’s value (typically between 0.0 and 1.0) to that range. The animation is powered by an AnimationController, and you can listen to value changes using listeners or widgets like AnimatedBuilder. Tween animations are useful for smoothly transitioning properties such as position, size, opacity, and color. This gives developers fine-grained control over animations while keeping the logic reusable and efficient.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'animation', 'tween'],
    difficulty: Difficulty.senior,
  ),
  QuestionModel(
    question: 'Frame construction',
    answer:
        'In Flutter, frame construction is the process of building and rendering a new frame in response to user interactions, animations, or state changes. It begins in the framework layer when Flutter detects that something has changed (for example, a call to setState() or an animation tick). Flutter then schedules a new frame using the SchedulerBinding. During the build phase, the widget tree is rebuilt, and the framework compares the new widget tree with the old one to update the element tree. Then, the layout and painting phases update the render tree, which the Flutter engine uses to rasterize and display the final pixels on the screen. This entire cycle happens quickly—typically 60 or even 120 times per second—ensuring a smooth and responsive UI.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'frame', 'construction'],
    difficulty: Difficulty.junior,
  ),
  QuestionModel(
    question: 'Layout calculation',
    answer:
        'Layout calculation in Flutter is part of the rendering pipeline where each widget determines its size and position on the screen. This process starts with the layout phase, which is triggered when a widget’s constraints or content change. During this phase, each widget receives constraints from its parent (such as max/min width and height) and then passes new constraints down to its children. Each child returns its size based on those constraints. This parent-to-child traversal continues recursively through the render tree. Once all sizes are determined, the framework positions the widgets based on alignment, padding, or positioning rules. This constraint-based model allows Flutter to handle layout efficiently and consistently across different screen sizes and devices.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'layout', 'ui'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Execution model in Flutter',
    answer:
        'Flutter follows a single-threaded event loop execution model, where most of the work is performed on the main UI thread, also known as the Dart isolate. This thread handles everything from widget building and layout to responding to user input. When an event occurs—like a touch or a state update—Flutter schedules a frame. The framework then goes through phases: build, layout, paint, compositing, and finally rasterization by the Flutter engine. For performance-intensive or blocking operations, Flutter supports spawning isolates (Dart’s way of handling concurrency) or using platform channels to delegate work to native threads. This execution model ensures that Flutter apps remain responsive and smooth, while still allowing background processing when needed.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'layout', 'ui'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Garbage collector',
    answer:
        'Flutter uses Dart’s built-in garbage collector (GC) to automatically manage memory. The garbage collector identifies and removes objects in memory that are no longer accessible or needed by the application, helping prevent memory leaks and keeping the app efficient. Dart uses a generational garbage collection strategy, which means short-lived objects (like most widgets) are collected quickly, while long-lived objects are collected less frequently. This approach works well with Flutter’s architecture, where many widgets are created and discarded frequently during UI rebuilds.  During the garbage collection process, the Dart Framework layer creates a channel of interaction with the Flutter Engine layer, through which it learns about the moments of application downtime and lack of user interaction. At these moments, the Dart Framework starts the memory optimization process, which reduces the impact on the user experience and stability of the application. The garbage collector runs on the Dart VM and works automatically, so developers usually don’t need to manage memory manually, but they should still avoid unnecessary object creation in performance-critical areas to minimize GC overhead.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'garbage collector', 'memory', 'performance'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'PipelineOwner ',
    answer:
        'The PipelineOwner is an internal class in Flutter that coordinates the rendering pipeline. It manages three key systems in the render phase: layout, compositing, and painting. When something in the UI changes and needs to be redrawn—such as a size change or a visual update—the PipelineOwner is responsible for marking render objects as dirty and ensuring they are processed in the correct order. It also manages the root of the render tree and calls the appropriate methods (flushLayout(), flushPaint(), etc.) to update the visual output. Although developers don`t usually interact with it directly, PipelineOwner plays a critical role in efficiently updating the screen and keeping rendering performance smooth.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'render', 'class'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Task runners',
    answer:
        'In Flutter, task runners are part of the engine layer and are responsible for managing different types of tasks across multiple threads. The Flutter engine uses several task runners to separate concerns and improve performance. These typically include the UI thread (for widget builds and rendering), the GPU thread (for rasterization), the IO thread (for file and network operations), and sometimes a platform thread (for native interactions). Each task runner has its own event loop and handles tasks independently to ensure the main UI thread remains responsive. By offloading heavy operations like image decoding or file access to other threads, Flutter ensures smooth animations and efficient rendering even under load.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'performance', 'engine'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Explain how Flutter handles gestures and touch events.',
    answer:
        'Flutter handles gestures and touch events through a layered system consisting of pointer events, gesture recognizers, and gesture detectors. When a user interacts with the screen, low-level pointer events (like touch down, move, and up) are captured by the framework. These events are then processed by gesture recognizers, which interpret sequences of pointer events to detect higher-level gestures such as taps, drags, swipes, and scales. Developers use GestureDetector widgets to listen for these gestures and respond accordingly in their UI. This system allows Flutter to provide smooth and customizable gesture handling, enabling complex interactions with minimal boilerplate.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'How does Flutter handle layout and constraints?',
    answer:
        'Flutter uses a constraints-based layout system to determine the size and position of widgets. During the layout phase, each widget receives constraints from its parent, which specify the minimum and maximum width and height it can occupy. The widget then decides its own size within those constraints and passes constraints down to its children. This flow ensures that the layout is flexible and responsive. Flutter’s layout is a two-pass process: first, the constraints flow down the widget tree, then the sizes flow back up as each widget reports its chosen size. This system enables precise control over how widgets resize and position themselves on different screen sizes and orientations.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'What are some best practices for writing testable Flutter code?',
    answer:
        'Writing testable Flutter code involves following practices that promote modularity, separation of concerns, and clear interfaces. First, keep business logic separate from UI code by using patterns like MVVM, BLoC, or Provider, so logic can be tested independently from widgets. Use dependency injection to pass dependencies, enabling easier mocking during tests. Make widgets small and focused, which simplifies unit testing and widget testing. Avoid tightly coupling widgets to specific implementations or global state. Use Flutter’s testing libraries, such as flutter_test for widget tests and mockito or mocktail for mocking dependencies. Finally, write clear, isolated tests covering unit, widget, and integration levels to ensure reliability and maintainability of your app.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Accessibility (a11y) in Flutter',
    answer:
        'Accessibility (a11y) in Flutter refers to designing and developing apps that can be used by people with disabilities, ensuring an inclusive user experience. Flutter provides built-in support for accessibility features such as screen readers, large fonts, high contrast, and keyboard navigation. Developers can make apps accessible by using semantic widgets and properties like Semantics, ExcludeSemantics, and MergeSemantics to provide meaningful descriptions and hints to assistive technologies. Flutter also supports focus traversal to help users navigate with keyboards or accessibility tools. Proper use of these features helps apps comply with accessibility guidelines and reach a broader audience.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Internationalization and localization ',
    answer:
        'Internationalization (i18n) in Flutter is the process of designing your app so that it can support multiple languages and regions without code changes. Localization (l10n) is the actual adaptation of your app’s content—such as text, images, and formats—to a specific language or region. Flutter provides robust support for i18n and l10n through the intl package and tools that generate localized resources. Developers define localized strings in ARB files and use the Flutter localization framework to load and display the appropriate content based on the user’s locale. This ensures apps can easily reach a global audience and provide culturally relevant experiences.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Animations beyond basics ',
    answer:
        'Beyond basic animations, Flutter offers advanced animation techniques that enable more natural, fluid, and interactive user experiences. These include physics-based animations, which simulate real-world behaviors like spring, friction, and gravity using classes such as SpringSimulation and FrictionSimulation. Flutter also supports custom curve animations allowing developers to define non-linear timing curves for smooth and unique motion effects. Additionally, staggered animations enable chaining or overlapping multiple animations to create complex sequences. Developers can also use the AnimationController combined with AnimatedBuilder or CustomPainter for fine-grained control over animation rendering. These tools empower developers to craft rich, expressive interfaces beyond simple transitions.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Security best practices ',
    answer:
        'Security best practices in Flutter focus on protecting user data, securing communications, and preventing common vulnerabilities. Developers should avoid hardcoding sensitive information like API keys or secrets directly in the app; instead, use secure storage solutions such as the flutter_secure_storage package for sensitive data. Always use HTTPS for network requests to ensure encrypted communication. Implement proper authentication and authorization flows, and consider using OAuth or Firebase Authentication for secure user management. Protect against common attacks like injection or man-in-the-middle by validating inputs and using secure backend services. Regularly update dependencies to patch known vulnerabilities, and apply code obfuscation and minification to make reverse engineering harder. Finally, follow platform-specific security guidelines to keep your app and users safe.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Handling app lifecycle and state restoration ',
    answer:
        'Handling the app lifecycle in Flutter involves managing the different states an app goes through, such as when it is launched, paused, resumed, or terminated. Flutter provides the WidgetsBindingObserver class that allows developers to listen to lifecycle events like AppLifecycleState.paused, resumed, and inactive, enabling appropriate resource management (e.g., saving data or pausing animations). State restoration is the process of saving and restoring an app’s UI state to provide a seamless user experience after the app is killed or restarted by the system. Flutter supports state restoration using the Restoration Framework, which allows widgets to save and restore their state automatically via restoration IDs. Proper lifecycle handling and state restoration improve app reliability and user experience, especially on mobile platforms where apps may be frequently paused or killed.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
  QuestionModel(
    question: 'Continuous integration and deployment (CI/CD) ',
    answer:
        'Continuous Integration and Deployment (CI/CD) in Flutter refers to the automated processes that build, test, and deliver Flutter applications efficiently and reliably. In a typical CI/CD pipeline, whenever code is pushed to a repository, automated workflows run to build the app, execute unit and widget tests, and perform static analysis to ensure code quality. If all checks pass, the pipeline can automatically deploy the app to testing environments or even app stores. Popular CI/CD tools compatible with Flutter include GitHub Actions, GitLab CI, Bitrise, and Codemagic. Using CI/CD pipelines helps teams catch bugs early, maintain consistent quality, and accelerate release cycles.',
    mainCategory: MainCategory.languagesAndFrameworks,
    subCategory: 'Overview',
    tags: ['flutter', 'gestures', 'detectors', 'screen'],
    difficulty: Difficulty.middle,
  ),
];
