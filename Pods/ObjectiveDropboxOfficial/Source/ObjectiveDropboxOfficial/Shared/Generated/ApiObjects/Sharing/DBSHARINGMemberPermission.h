///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBSHARINGMemberAction;
@class DBSHARINGMemberPermission;
@class DBSHARINGPermissionDeniedReason;

#pragma mark - API Object

///
/// The `MemberPermission` struct.
///
/// Whether the user is allowed to take the action on the associated member.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBSHARINGMemberPermission : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The action that the user may wish to take on the member.
@property (nonatomic, readonly) DBSHARINGMemberAction * _Nonnull action;

/// True if the user is allowed to take the action.
@property (nonatomic, readonly) NSNumber * _Nonnull allow;

/// The reason why the user is denied the permission. Not present if the action
/// is allowed
@property (nonatomic, readonly) DBSHARINGPermissionDeniedReason * _Nullable reason;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param action The action that the user may wish to take on the member.
/// @param allow True if the user is allowed to take the action.
/// @param reason The reason why the user is denied the permission. Not present
/// if the action is allowed
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAction:(DBSHARINGMemberAction * _Nonnull)action
                                 allow:(NSNumber * _Nonnull)allow
                                reason:(DBSHARINGPermissionDeniedReason * _Nullable)reason;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param action The action that the user may wish to take on the member.
/// @param allow True if the user is allowed to take the action.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAction:(DBSHARINGMemberAction * _Nonnull)action allow:(NSNumber * _Nonnull)allow;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `MemberPermission` struct.
///
@interface DBSHARINGMemberPermissionSerializer : NSObject

///
/// Serializes `DBSHARINGMemberPermission` instances.
///
/// @param instance An instance of the `DBSHARINGMemberPermission` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGMemberPermission` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGMemberPermission * _Nonnull)instance;

///
/// Deserializes `DBSHARINGMemberPermission` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGMemberPermission` API object.
///
/// @return An instantiation of the `DBSHARINGMemberPermission` object.
///
+ (DBSHARINGMemberPermission * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
