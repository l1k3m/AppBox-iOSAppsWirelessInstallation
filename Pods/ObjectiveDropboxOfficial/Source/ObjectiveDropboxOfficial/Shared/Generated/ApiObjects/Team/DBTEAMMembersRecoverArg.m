///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMMembersRecoverArg.h"
#import "DBTEAMUserSelectorArg.h"

#pragma mark - API Object

@implementation DBTEAMMembersRecoverArg

#pragma mark - Constructors

- (instancetype)initWithUser:(DBTEAMUserSelectorArg *)user {

  self = [super init];
  if (self) {
    _user = user;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMembersRecoverArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMembersRecoverArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMembersRecoverArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMembersRecoverArgSerializer

+ (NSDictionary *)serialize:(DBTEAMMembersRecoverArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"user"] = [DBTEAMUserSelectorArgSerializer serialize:valueObj.user];

  return jsonDict;
}

+ (DBTEAMMembersRecoverArg *)deserialize:(NSDictionary *)valueDict {
  DBTEAMUserSelectorArg *user = [DBTEAMUserSelectorArgSerializer deserialize:valueDict[@"user"]];

  return [[DBTEAMMembersRecoverArg alloc] initWithUser:user];
}

@end
