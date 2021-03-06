/***********************************************************************************************************************
 *
 * API.AI iOS SDK - client-side libraries for API.AI
 * ==========================================
 *
 * Copyright (C) 2015 by Speaktoit, Inc. (https://www.speaktoit.com)
 * https://www.api.ai
 *
 ***********************************************************************************************************************
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 ***********************************************************************************************************************/

#import "AIResponseFulfillment.h"
#import "AIResponseFulfillment_Private.h"

@implementation AIResponseFulfillment

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _speech = dictionary[@"speech"];
        _messages = dictionary[@"messages"];
        _data = dictionary[@"data"];
        _displayText = dictionary[@"displayText"];
        _source = dictionary[@"source"];
        _contextOut = dictionary[@"contextOut"];
        _action = dictionary[@"action"];
        _actionParameters = dictionary[@"actionParameters"];
        _progress = dictionary[@"progress"];
        _blockEdit = [[dictionary valueForKey:@"blockEdit"] isKindOfClass:[NSNull class]] ? FALSE : [[dictionary valueForKey:@"blockEdit"] boolValue];
    }
    
    return self;
}

@end
