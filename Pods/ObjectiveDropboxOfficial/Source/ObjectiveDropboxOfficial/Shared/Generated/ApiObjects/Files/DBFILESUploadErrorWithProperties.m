///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESInvalidPropertyGroupError.h"
#import "DBFILESUploadError.h"
#import "DBFILESUploadErrorWithProperties.h"
#import "DBFILESUploadWriteFailed.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESUploadErrorWithProperties

@synthesize path = _path;
@synthesize propertiesError = _propertiesError;

#pragma mark - Constructors

- (instancetype)initWithPath:(DBFILESUploadWriteFailed *)path {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadErrorWithPropertiesPath;
    _path = path;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadErrorWithPropertiesOther;
  }
  return self;
}

- (instancetype)initWithPropertiesError:(DBFILESInvalidPropertyGroupError *)propertiesError {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadErrorWithPropertiesPropertiesError;
    _propertiesError = propertiesError;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESUploadWriteFailed *)path {
  if (![self isPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESUploadErrorWithPropertiesPath, but was %@.", [self tagName]];
  }
  return _path;
}

- (DBFILESInvalidPropertyGroupError *)propertiesError {
  if (![self isPropertiesError]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBFILESUploadErrorWithPropertiesPropertiesError, but was %@.", [self tagName]];
  }
  return _propertiesError;
}

#pragma mark - Tag state methods

- (BOOL)isPath {
  return _tag == DBFILESUploadErrorWithPropertiesPath;
}

- (BOOL)isOther {
  return _tag == DBFILESUploadErrorWithPropertiesOther;
}

- (BOOL)isPropertiesError {
  return _tag == DBFILESUploadErrorWithPropertiesPropertiesError;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESUploadErrorWithPropertiesPath:
    return @"DBFILESUploadErrorWithPropertiesPath";
  case DBFILESUploadErrorWithPropertiesOther:
    return @"DBFILESUploadErrorWithPropertiesOther";
  case DBFILESUploadErrorWithPropertiesPropertiesError:
    return @"DBFILESUploadErrorWithPropertiesPropertiesError";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESUploadErrorWithPropertiesSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESUploadErrorWithPropertiesSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESUploadErrorWithPropertiesSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESUploadErrorWithPropertiesSerializer

+ (NSDictionary *)serialize:(DBFILESUploadErrorWithProperties *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isPath]) {
    jsonDict[@"path"] = [[DBFILESUploadWriteFailedSerializer serialize:valueObj.path] mutableCopy];
    jsonDict[@".tag"] = @"path";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isPropertiesError]) {
    jsonDict[@"properties_error"] =
        [[DBFILESInvalidPropertyGroupErrorSerializer serialize:valueObj.propertiesError] mutableCopy];
    jsonDict[@".tag"] = @"properties_error";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESUploadErrorWithProperties *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"path"]) {
    DBFILESUploadWriteFailed *path = [DBFILESUploadWriteFailedSerializer deserialize:valueDict];
    return [[DBFILESUploadErrorWithProperties alloc] initWithPath:path];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESUploadErrorWithProperties alloc] initWithOther];
  } else if ([tag isEqualToString:@"properties_error"]) {
    DBFILESInvalidPropertyGroupError *propertiesError =
        [DBFILESInvalidPropertyGroupErrorSerializer deserialize:valueDict[@"properties_error"]];
    return [[DBFILESUploadErrorWithProperties alloc] initWithPropertiesError:propertiesError];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
