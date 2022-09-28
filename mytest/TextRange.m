#import "TextRange.h"
#import "TextPosition.h"

@implementation TextRange

+ (id)rangeWithStart:(TextPosition *)startPosition end:(TextPosition *)endPosition {
    TextRange *range = [[TextRange alloc] init];
    [range setStartPostion:startPosition];
    [range setEndPostion:endPosition];
//    return [range autorelease];
    return range;
}

- (BOOL)isEmpty {
    return ([(TextPosition *)end position] - [(TextPosition *)start position]) == 0;
}

- (int)length {
    return (int)([(TextPosition *)end position] - [(TextPosition *)start position]);
}

- (UITextPosition *)start {
    return start;
}

- (void)setStartPostion:(TextPosition *)position {
//    start = [position retain];
    start = position;
}

- (UITextPosition *)end {
    return end;
}

- (void)setEndPostion:(TextPosition *)position {
//    end = [position retain];
    end = position;
}

#pragma mark -
#pragma mark NSCopying;

- (id)copyWithZone:(NSZone *)zone {
    TextRange *copy = [[[self class] allocWithZone: zone] init];
    
    [copy setEndPostion:(TextPosition *)[self end]];
    [copy setStartPostion:(TextPosition *)[self start]];
    
    return copy;
}

@end
