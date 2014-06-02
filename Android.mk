LOCAL_PATH := $(call my-dir)
include $(CLEAN_VARS)

LOCAL_ARM_MODE := arm
LOCAL_CPP_FEATURES += exceptions rtti
LOCAL_CFLAGS += -g -O3 -DPOCO_ANDROID -DPOCO_NO_FPENVIRONMENT -DPOCO_NO_WSTRING -DPOCO_NO_SHAREDMEMORY -DHAVE_MEMMOVE

LOCAL_C_INCLUDES := CppUnit/include
LOCAL_EXPORT_C_INCLUDES := CppUnit/include
LOCAL_MODULE := CppUnit_shared
LOCAL_MODULE_FILENAME := libCppUnit
LOCAL_SRC_FILES := \
../CppUnit/src/CppUnitException.cpp \
../CppUnit/src/TestCase.cpp \
../CppUnit/src/TestDecorator.cpp \
../CppUnit/src/TestFailure.cpp \
../CppUnit/src/TestResult.cpp \
../CppUnit/src/TestRunner.cpp \
../CppUnit/src/TestSuite.cpp \
../CppUnit/src/TextTestResult.cpp
include $(BUILD_SHARED_LIBRARY)

LOCAL_C_INCLUDES := Foundation/include
LOCAL_EXPORT_C_INCLUDES := Foundation/include
LOCAL_MODULE := PocoFoundation_shared
LOCAL_MODULE_FILENAME := libPocoFoundation
LOCAL_SRC_FILES := \
../Foundation/src/AbstractObserver.cpp \
../Foundation/src/ActiveDispatcher.cpp \
../Foundation/src/adler32.c \
../Foundation/src/ArchiveStrategy.cpp \
../Foundation/src/Ascii.cpp \
../Foundation/src/ASCIIEncoding.cpp \
../Foundation/src/AsyncChannel.cpp \
../Foundation/src/AtomicCounter.cpp \
../Foundation/src/Base64Decoder.cpp \
../Foundation/src/Base64Encoder.cpp \
../Foundation/src/BinaryReader.cpp \
../Foundation/src/BinaryWriter.cpp \
../Foundation/src/Bugcheck.cpp \
../Foundation/src/ByteOrder.cpp \
../Foundation/src/Channel.cpp \
../Foundation/src/Checksum.cpp \
../Foundation/src/compress.c \
../Foundation/src/Condition.cpp \
../Foundation/src/Configurable.cpp \
../Foundation/src/ConsoleChannel.cpp \
../Foundation/src/CountingStream.cpp \
../Foundation/src/crc32.c \
../Foundation/src/DateTime.cpp \
../Foundation/src/DateTimeFormat.cpp \
../Foundation/src/DateTimeFormatter.cpp \
../Foundation/src/DateTimeParser.cpp \
../Foundation/src/Debugger.cpp \
../Foundation/src/deflate.c \
../Foundation/src/DeflatingStream.cpp \
../Foundation/src/DigestEngine.cpp \
../Foundation/src/DigestStream.cpp \
../Foundation/src/DirectoryIterator.cpp \
../Foundation/src/DirectoryWatcher.cpp \
../Foundation/src/DynamicAny.cpp \
../Foundation/src/DynamicAnyHolder.cpp \
../Foundation/src/Environment.cpp \
../Foundation/src/ErrorHandler.cpp \
../Foundation/src/EventArgs.cpp \
../Foundation/src/Event.cpp \
../Foundation/src/Exception.cpp \
../Foundation/src/FileChannel.cpp \
../Foundation/src/File.cpp \
../Foundation/src/FileStream.cpp \
../Foundation/src/FileStreamFactory.cpp \
../Foundation/src/Format.cpp \
../Foundation/src/Formatter.cpp \
../Foundation/src/FormattingChannel.cpp \
../Foundation/src/FPEnvironment.cpp \
../Foundation/src/Glob.cpp \
../Foundation/src/Hash.cpp \
../Foundation/src/HashStatistic.cpp \
../Foundation/src/HexBinaryDecoder.cpp \
../Foundation/src/HexBinaryEncoder.cpp \
../Foundation/src/infback.c \
../Foundation/src/inffast.c \
../Foundation/src/inflate.c \
../Foundation/src/InflatingStream.cpp \
../Foundation/src/inftrees.c \
../Foundation/src/Latin1Encoding.cpp \
../Foundation/src/Latin9Encoding.cpp \
../Foundation/src/LineEndingConverter.cpp \
../Foundation/src/LocalDateTime.cpp \
../Foundation/src/LogFile.cpp \
../Foundation/src/Logger.cpp \
../Foundation/src/LoggingFactory.cpp \
../Foundation/src/LoggingRegistry.cpp \
../Foundation/src/LogStream.cpp \
../Foundation/src/Manifest.cpp \
../Foundation/src/MD4Engine.cpp \
../Foundation/src/MD5Engine.cpp \
../Foundation/src/MemoryPool.cpp \
../Foundation/src/MemoryStream.cpp \
../Foundation/src/Message.cpp \
../Foundation/src/Mutex.cpp \
../Foundation/src/NamedEvent.cpp \
../Foundation/src/NamedMutex.cpp \
../Foundation/src/NestedDiagnosticContext.cpp \
../Foundation/src/NotificationCenter.cpp \
../Foundation/src/Notification.cpp \
../Foundation/src/NotificationQueue.cpp \
../Foundation/src/NullChannel.cpp \
../Foundation/src/NullStream.cpp \
../Foundation/src/NumberFormatter.cpp \
../Foundation/src/NumberParser.cpp \
../Foundation/src/Path.cpp \
../Foundation/src/PatternFormatter.cpp \
../Foundation/src/pcre_chartables.c \
../Foundation/src/pcre_compile.c \
../Foundation/src/pcre_exec.c \
../Foundation/src/pcre_fullinfo.c \
../Foundation/src/pcre_globals.c \
../Foundation/src/pcre_maketables.c \
../Foundation/src/pcre_newline.c \
../Foundation/src/pcre_ord2utf8.c \
../Foundation/src/pcre_study.c \
../Foundation/src/pcre_tables.c \
../Foundation/src/pcre_try_flipped.c \
../Foundation/src/pcre_ucd.c \
../Foundation/src/pcre_valid_utf8.c \
../Foundation/src/pcre_xclass.c \
../Foundation/src/Pipe.cpp \
../Foundation/src/PipeImpl.cpp \
../Foundation/src/PipeStream.cpp \
../Foundation/src/PriorityNotificationQueue.cpp \
../Foundation/src/Process.cpp \
../Foundation/src/PurgeStrategy.cpp \
../Foundation/src/Random.cpp \
../Foundation/src/RandomStream.cpp \
../Foundation/src/RefCountedObject.cpp \
../Foundation/src/RegularExpression.cpp \
../Foundation/src/RotateStrategy.cpp \
../Foundation/src/Runnable.cpp \
../Foundation/src/RWLock.cpp \
../Foundation/src/Semaphore.cpp \
../Foundation/src/SHA1Engine.cpp \
../Foundation/src/SharedLibrary.cpp \
../Foundation/src/SharedMemory.cpp \
../Foundation/src/SignalHandler.cpp \
../Foundation/src/SimpleFileChannel.cpp \
../Foundation/src/SplitterChannel.cpp \
../Foundation/src/Stopwatch.cpp \
../Foundation/src/StreamChannel.cpp \
../Foundation/src/StreamConverter.cpp \
../Foundation/src/StreamCopier.cpp \
../Foundation/src/StreamTokenizer.cpp \
../Foundation/src/String.cpp \
../Foundation/src/StringTokenizer.cpp \
../Foundation/src/SynchronizedObject.cpp \
../Foundation/src/SyslogChannel.cpp \
../Foundation/src/Task.cpp \
../Foundation/src/TaskManager.cpp \
../Foundation/src/TaskNotification.cpp \
../Foundation/src/TeeStream.cpp \
../Foundation/src/TemporaryFile.cpp \
../Foundation/src/TextBufferIterator.cpp \
../Foundation/src/TextConverter.cpp \
../Foundation/src/TextEncoding.cpp \
../Foundation/src/TextIterator.cpp \
../Foundation/src/Thread.cpp \
../Foundation/src/ThreadLocal.cpp \
../Foundation/src/ThreadPool.cpp \
../Foundation/src/ThreadTarget.cpp \
../Foundation/src/TimedNotificationQueue.cpp \
../Foundation/src/Timer.cpp \
../Foundation/src/Timespan.cpp \
../Foundation/src/Timestamp.cpp \
../Foundation/src/Timezone.cpp \
../Foundation/src/Token.cpp \
../Foundation/src/trees.c \
../Foundation/src/UnicodeConverter.cpp \
../Foundation/src/Unicode.cpp \
../Foundation/src/URI.cpp \
../Foundation/src/URIStreamFactory.cpp \
../Foundation/src/URIStreamOpener.cpp \
../Foundation/src/UTF16Encoding.cpp \
../Foundation/src/UTF8Encoding.cpp \
../Foundation/src/UTF8String.cpp \
../Foundation/src/UUID.cpp \
../Foundation/src/UUIDGenerator.cpp \
../Foundation/src/Void.cpp \
../Foundation/src/Windows1252Encoding.cpp \
../Foundation/src/zutil.c
include $(BUILD_SHARED_LIBRARY)

LOCAL_C_INCLUDES := Foundation/include Net/include
LOCAL_EXPORT_C_INCLUDES := Net/include
LOCAL_MODULE := PocoNet_shared
LOCAL_MODULE_FILENAME := libPocoNet
LOCAL_SHARED_LIBRARIES := PocoFoundation_shared
LOCAL_SRC_FILES := \
../Net/src/AbstractHTTPRequestHandler.cpp \
../Net/src/DatagramSocket.cpp \
../Net/src/DatagramSocketImpl.cpp \
../Net/src/DialogSocket.cpp \
../Net/src/DNS.cpp \
../Net/src/FilePartSource.cpp \
../Net/src/FTPClientSession.cpp \
../Net/src/FTPStreamFactory.cpp \
../Net/src/HostEntry.cpp \
../Net/src/HTMLForm.cpp \
../Net/src/HTTPAuthenticationParams.cpp \
../Net/src/HTTPBasicCredentials.cpp \
../Net/src/HTTPBufferAllocator.cpp \
../Net/src/HTTPChunkedStream.cpp \
../Net/src/HTTPClientSession.cpp \
../Net/src/HTTPCookie.cpp \
../Net/src/HTTPCredentials.cpp \
../Net/src/HTTPDigestCredentials.cpp \
../Net/src/HTTPFixedLengthStream.cpp \
../Net/src/HTTPHeaderStream.cpp \
../Net/src/HTTPIOStream.cpp \
../Net/src/HTTPMessage.cpp \
../Net/src/HTTPRequest.cpp \
../Net/src/HTTPRequestHandler.cpp \
../Net/src/HTTPRequestHandlerFactory.cpp \
../Net/src/HTTPResponse.cpp \
../Net/src/HTTPServerConnection.cpp \
../Net/src/HTTPServerConnectionFactory.cpp \
../Net/src/HTTPServer.cpp \
../Net/src/HTTPServerParams.cpp \
../Net/src/HTTPServerRequest.cpp \
../Net/src/HTTPServerRequestImpl.cpp \
../Net/src/HTTPServerResponse.cpp \
../Net/src/HTTPServerResponseImpl.cpp \
../Net/src/HTTPServerSession.cpp \
../Net/src/HTTPSession.cpp \
../Net/src/HTTPSessionFactory.cpp \
../Net/src/HTTPSessionInstantiator.cpp \
../Net/src/HTTPStream.cpp \
../Net/src/HTTPStreamFactory.cpp \
../Net/src/ICMPClient.cpp \
../Net/src/ICMPEventArgs.cpp \
../Net/src/ICMPPacket.cpp \
../Net/src/ICMPPacketImpl.cpp \
../Net/src/ICMPSocket.cpp \
../Net/src/ICMPSocketImpl.cpp \
../Net/src/ICMPv4PacketImpl.cpp \
../Net/src/IPAddress.cpp \
../Net/src/MailMessage.cpp \
../Net/src/MailRecipient.cpp \
../Net/src/MailStream.cpp \
../Net/src/MediaType.cpp \
../Net/src/MessageHeader.cpp \
../Net/src/MulticastSocket.cpp \
../Net/src/MultipartReader.cpp \
../Net/src/MultipartWriter.cpp \
../Net/src/NameValueCollection.cpp \
../Net/src/NetException.cpp \
../Net/src/NetworkInterface.cpp \
../Net/src/NullPartHandler.cpp \
../Net/src/PartHandler.cpp \
../Net/src/PartSource.cpp \
../Net/src/POP3ClientSession.cpp \
../Net/src/QuotedPrintableDecoder.cpp \
../Net/src/QuotedPrintableEncoder.cpp \
../Net/src/RawSocket.cpp \
../Net/src/RawSocketImpl.cpp \
../Net/src/RemoteSyslogChannel.cpp \
../Net/src/RemoteSyslogListener.cpp \
../Net/src/ServerSocket.cpp \
../Net/src/ServerSocketImpl.cpp \
../Net/src/SMTPClientSession.cpp \
../Net/src/SocketAddress.cpp \
../Net/src/Socket.cpp \
../Net/src/SocketImpl.cpp \
../Net/src/SocketNotification.cpp \
../Net/src/SocketNotifier.cpp \
../Net/src/SocketReactor.cpp \
../Net/src/SocketStream.cpp \
../Net/src/StreamSocket.cpp \
../Net/src/StreamSocketImpl.cpp \
../Net/src/StringPartSource.cpp \
../Net/src/TCPServerConnection.cpp \
../Net/src/TCPServerConnectionFactory.cpp \
../Net/src/TCPServer.cpp \
../Net/src/TCPServerDispatcher.cpp \
../Net/src/TCPServerParams.cpp \
../Net/src/WebSocket.cpp \
../Net/src/WebSocketImpl.cpp
include $(BUILD_SHARED_LIBRARY)

LOCAL_C_INCLUDES := Foundation/include Util/include XML/include
LOCAL_EXPORT_C_INCLUDES := Util/include
LOCAL_MODULE := PocoUtil_shared
LOCAL_MODULE_FILENAME := libPocoUtil
LOCAL_SHARED_LIBRARIES := PocoFoundation_shared PocoXML_shared
LOCAL_SRC_FILES := \
../Util/src/AbstractConfiguration.cpp \
../Util/src/Application.cpp \
../Util/src/ConfigurationMapper.cpp \
../Util/src/ConfigurationView.cpp \
../Util/src/FilesystemConfiguration.cpp \
../Util/src/HelpFormatter.cpp \
../Util/src/IniFileConfiguration.cpp \
../Util/src/IntValidator.cpp \
../Util/src/LayeredConfiguration.cpp \
../Util/src/LoggingConfigurator.cpp \
../Util/src/LoggingSubsystem.cpp \
../Util/src/MapConfiguration.cpp \
../Util/src/OptionCallback.cpp \
../Util/src/Option.cpp \
../Util/src/OptionException.cpp \
../Util/src/OptionProcessor.cpp \
../Util/src/OptionSet.cpp \
../Util/src/PropertyFileConfiguration.cpp \
../Util/src/RegExpValidator.cpp \
../Util/src/ServerApplication.cpp \
../Util/src/Subsystem.cpp \
../Util/src/SystemConfiguration.cpp \
../Util/src/Timer.cpp \
../Util/src/TimerTask.cpp \
../Util/src/Validator.cpp \
../Util/src/XMLConfiguration.cpp
include $(BUILD_SHARED_LIBRARY)

LOCAL_C_INCLUDES := Foundation/include XML/include
LOCAL_EXPORT_C_INCLUDES := XML/include
LOCAL_MODULE := PocoXML_shared
LOCAL_MODULE_FILENAME := libPocoXML
LOCAL_SHARED_LIBRARIES := PocoFoundation_shared
LOCAL_SRC_FILES := \
../XML/src/AbstractContainerNode.cpp \
../XML/src/AbstractNode.cpp \
../XML/src/Attr.cpp \
../XML/src/Attributes.cpp \
../XML/src/AttributesImpl.cpp \
../XML/src/AttrMap.cpp \
../XML/src/CDATASection.cpp \
../XML/src/CharacterData.cpp \
../XML/src/ChildNodesList.cpp \
../XML/src/Comment.cpp \
../XML/src/ContentHandler.cpp \
../XML/src/DeclHandler.cpp \
../XML/src/DefaultHandler.cpp \
../XML/src/Document.cpp \
../XML/src/DocumentEvent.cpp \
../XML/src/DocumentFragment.cpp \
../XML/src/DocumentType.cpp \
../XML/src/DOMBuilder.cpp \
../XML/src/DOMException.cpp \
../XML/src/DOMImplementation.cpp \
../XML/src/DOMObject.cpp \
../XML/src/DOMParser.cpp \
../XML/src/DOMSerializer.cpp \
../XML/src/DOMWriter.cpp \
../XML/src/DTDHandler.cpp \
../XML/src/DTDMap.cpp \
../XML/src/Element.cpp \
../XML/src/ElementsByTagNameList.cpp \
../XML/src/Entity.cpp \
../XML/src/EntityReference.cpp \
../XML/src/EntityResolver.cpp \
../XML/src/EntityResolverImpl.cpp \
../XML/src/ErrorHandler.cpp \
../XML/src/Event.cpp \
../XML/src/EventDispatcher.cpp \
../XML/src/EventException.cpp \
../XML/src/EventListener.cpp \
../XML/src/EventTarget.cpp \
../XML/src/InputSource.cpp \
../XML/src/LexicalHandler.cpp \
../XML/src/Locator.cpp \
../XML/src/LocatorImpl.cpp \
../XML/src/MutationEvent.cpp \
../XML/src/Name.cpp \
../XML/src/NamedNodeMap.cpp \
../XML/src/NamePool.cpp \
../XML/src/NamespaceStrategy.cpp \
../XML/src/NamespaceSupport.cpp \
../XML/src/NodeAppender.cpp \
../XML/src/Node.cpp \
../XML/src/NodeFilter.cpp \
../XML/src/NodeIterator.cpp \
../XML/src/NodeList.cpp \
../XML/src/Notation.cpp \
../XML/src/ParserEngine.cpp \
../XML/src/ProcessingInstruction.cpp \
../XML/src/SAXException.cpp \
../XML/src/SAXParser.cpp \
../XML/src/Text.cpp \
../XML/src/TreeWalker.cpp \
../XML/src/WhitespaceFilter.cpp \
../XML/src/XMLException.cpp \
../XML/src/XMLFilter.cpp \
../XML/src/XMLFilterImpl.cpp \
../XML/src/xmlparse.cpp \
../XML/src/XMLReader.cpp \
../XML/src/xmlrole.c \
../XML/src/XMLString.cpp \
../XML/src/xmltok.c \
../XML/src/xmltok_impl.c \
../XML/src/xmltok_ns.c \
../XML/src/XMLWriter.cpp
include $(BUILD_SHARED_LIBRARY)
