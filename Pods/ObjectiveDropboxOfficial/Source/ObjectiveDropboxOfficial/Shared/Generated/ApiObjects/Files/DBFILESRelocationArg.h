///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBFILESRelocationPath.h"
#import "DBSerializableProtocol.h"

@class DBFILESRelocationArg;

#pragma mark - API Object

///
/// The `RelocationArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESRelocationArg : DBFILESRelocationPath <DBSerializable>

#pragma mark - Instance fields

/// If true, `dCopy` will copy contents in shared folder, otherwise
/// `cantCopySharedFolder` in `DBFILESRelocationError` will be returned if
/// fromPath contains shared folder. This field is always true for `move`.
@property (nonatomic, readonly) NSNumber * _Nonnull allowSharedFolder;

/// If there's a conflict, have the Dropbox server try to autorename the file to
/// avoid the conflict.
@property (nonatomic, readonly) NSNumber * _Nonnull autorename;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param fromPath Path in the user's Dropbox to be copied or moved.
/// @param toPath Path in the user's Dropbox that is the destination.
/// @param allowSharedFolder If true, `dCopy` will copy contents in shared
/// folder, otherwise `cantCopySharedFolder` in `DBFILESRelocationError` will be
/// returned if fromPath contains shared folder. This field is always true for
/// `move`.
/// @param autorename If there's a conflict, have the Dropbox server try to
/// autorename the file to avoid the conflict.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithFromPath:(NSString * _Nonnull)fromPath
                                  toPath:(NSString * _Nonnull)toPath
                       allowSharedFolder:(NSNumber * _Nullable)allowSharedFolder
                              autorename:(NSNumber * _Nullable)autorename;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param fromPath Path in the user's Dropbox to be copied or moved.
/// @param toPath Path in the user's Dropbox that is the destination.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithFromPath:(NSString * _Nonnull)fromPath toPath:(NSString * _Nonnull)toPath;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `RelocationArg` struct.
///
@interface DBFILESRelocationArgSerializer : NSObject

///
/// Serializes `DBFILESRelocationArg` instances.
///
/// @param instance An instance of the `DBFILESRelocationArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESRelocationArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESRelocationArg * _Nonnull)instance;

///
/// Deserializes `DBFILESRelocationArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESRelocationArg` API object.
///
/// @return An instantiation of the `DBFILESRelocationArg` object.
///
+ (DBFILESRelocationArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
